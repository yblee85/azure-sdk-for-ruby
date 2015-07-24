# Code generated by Microsoft (R) AutoRest Code Generator 0.11.0.0
# Changes may cause incorrect behavior and will be lost if the code is


module Azure::ARM::Compute
  #
  # VirtualMachineSizes
  #
  class VirtualMachineSizes
    #
    # Creates and initializes a new instance of the VirtualMachineSizes class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return reference to the ComputeManagementClient
    attr_reader :client

    #
    # Lists virtual-machine-sizes available in a location for a subscription.
    # @param location1 [String] The location upon which virtual-machine-sizes is
    # queried.
    # @param @client.api_version [String] Client Api Version.
    # @param @client.subscription_id [String] Gets subscription credentials which
    # uniquely identify Microsoft Azure subscription. The subscription ID forms
    # part of the URI for every service call.
    # @param @client.accept_language [String] Gets or sets the preferred language
    # for the response.
    # @return [Concurrent::Promise] Promise object which allows to get HTTP
    # response.
    #
    def list(location1, custom_headers = nil)
      fail ArgumentError, 'location1 is nil' if location1.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      # Construct URL
      path = "/subscriptions/{subscriptionId}/providers/Microsoft.Compute/locations/{location}/vmSizes"
      path['{location}'] = ERB::Util.url_encode(location1)
      path['{subscriptionId}'] = ERB::Util.url_encode(@client.subscription_id)
      url = URI.join(@client.base_url, path)
      properties = {}
      properties['api-version'] = ERB::Util.url_encode(@client.api_version.to_s) unless @client.api_version.nil?
      properties.reject!{ |key, value| value.nil? }
      url.query = properties.map{ |key, value| "#{key}=#{value}" }.compact.join('&')
      fail URI::Error unless url.to_s =~ /\A#{URI::regexp}\z/

      # Create HTTP transport objects
      http_request = Net::HTTP::Get.new(url.request_uri)

      # Set Headers
      http_request['x-ms-client-request-id'] = SecureRandom.uuid
      http_request["accept-language"] = @client.accept_language

      unless custom_headers.nil?
        custom_headers.each do |key, value|
          http_request[key] = value
        end
      end

      # Send Request
      promise = Concurrent::Promise.new { @client.make_http_request(http_request, url) }

      promise = promise.then do |http_response|
        status_code = http_response.code.to_i
        response_content = http_response.body
        unless (status_code == 200)
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationException.new(http_request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(http_request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = JSON.load(response_content) unless response_content.to_s.empty?
            if (parsed_response)
              parsed_response = Azure::ARM::Compute::Models::VirtualMachineSizeListResult.deserialize_object(parsed_response)
            end
            result.body = parsed_response
          rescue Exception => e
            fail MsRest::DeserializationError.new("Error occured in deserializing the response", e.message, e.backtrace, response_content)
          end
        end

        result
      end

      promise.execute
    end

  end
end
