# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2016_09_01
  #
  # ServiceDiagnosticSettingsOperations
  #
  class ServiceDiagnosticSettingsOperations
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ServiceDiagnosticSettingsOperations class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [MonitorClient] reference to the MonitorClient
    attr_reader :client

    #
    # Gets the active diagnostic settings for the specified resource. **WARNING**:
    # This method will be deprecated in future releases.
    #
    # @param resource_uri [String] The identifier of the resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ServiceDiagnosticSettingsResource] operation results.
    #
    def get(resource_uri, custom_headers:nil)
      response = get_async(resource_uri, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the active diagnostic settings for the specified resource. **WARNING**:
    # This method will be deprecated in future releases.
    #
    # @param resource_uri [String] The identifier of the resource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_uri, custom_headers:nil)
      get_async(resource_uri, custom_headers:custom_headers).value!
    end

    #
    # Gets the active diagnostic settings for the specified resource. **WARNING**:
    # This method will be deprecated in future releases.
    #
    # @param resource_uri [String] The identifier of the resource.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_uri, custom_headers:nil)
      fail ArgumentError, 'resource_uri is nil' if resource_uri.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{resourceUri}/providers/microsoft.insights/diagnosticSettings/service'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceUri' => resource_uri},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Monitor::Mgmt::V2016_09_01::Models::ServiceDiagnosticSettingsResource.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Create or update new diagnostic settings for the specified resource.
    # **WARNING**: This method will be deprecated in future releases.
    #
    # @param resource_uri [String] The identifier of the resource.
    # @param parameters [ServiceDiagnosticSettingsResource] Parameters supplied to
    # the operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ServiceDiagnosticSettingsResource] operation results.
    #
    def create_or_update(resource_uri, parameters, custom_headers:nil)
      response = create_or_update_async(resource_uri, parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Create or update new diagnostic settings for the specified resource.
    # **WARNING**: This method will be deprecated in future releases.
    #
    # @param resource_uri [String] The identifier of the resource.
    # @param parameters [ServiceDiagnosticSettingsResource] Parameters supplied to
    # the operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(resource_uri, parameters, custom_headers:nil)
      create_or_update_async(resource_uri, parameters, custom_headers:custom_headers).value!
    end

    #
    # Create or update new diagnostic settings for the specified resource.
    # **WARNING**: This method will be deprecated in future releases.
    #
    # @param resource_uri [String] The identifier of the resource.
    # @param parameters [ServiceDiagnosticSettingsResource] Parameters supplied to
    # the operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(resource_uri, parameters, custom_headers:nil)
      fail ArgumentError, 'resource_uri is nil' if resource_uri.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::Monitor::Mgmt::V2016_09_01::Models::ServiceDiagnosticSettingsResource.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = '{resourceUri}/providers/microsoft.insights/diagnosticSettings/service'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceUri' => resource_uri},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Monitor::Mgmt::V2016_09_01::Models::ServiceDiagnosticSettingsResource.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Updates an existing ServiceDiagnosticSettingsResource. To update other fields
    # use the CreateOrUpdate method. **WARNING**: This method will be deprecated in
    # future releases.
    #
    # @param resource_uri [String] The identifier of the resource.
    # @param service_diagnostic_settings_resource
    # [ServiceDiagnosticSettingsResourcePatch] Parameters supplied to the
    # operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ServiceDiagnosticSettingsResource] operation results.
    #
    def update(resource_uri, service_diagnostic_settings_resource, custom_headers:nil)
      response = update_async(resource_uri, service_diagnostic_settings_resource, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Updates an existing ServiceDiagnosticSettingsResource. To update other fields
    # use the CreateOrUpdate method. **WARNING**: This method will be deprecated in
    # future releases.
    #
    # @param resource_uri [String] The identifier of the resource.
    # @param service_diagnostic_settings_resource
    # [ServiceDiagnosticSettingsResourcePatch] Parameters supplied to the
    # operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def update_with_http_info(resource_uri, service_diagnostic_settings_resource, custom_headers:nil)
      update_async(resource_uri, service_diagnostic_settings_resource, custom_headers:custom_headers).value!
    end

    #
    # Updates an existing ServiceDiagnosticSettingsResource. To update other fields
    # use the CreateOrUpdate method. **WARNING**: This method will be deprecated in
    # future releases.
    #
    # @param resource_uri [String] The identifier of the resource.
    # @param service_diagnostic_settings_resource
    # [ServiceDiagnosticSettingsResourcePatch] Parameters supplied to the
    # operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def update_async(resource_uri, service_diagnostic_settings_resource, custom_headers:nil)
      fail ArgumentError, 'resource_uri is nil' if resource_uri.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'service_diagnostic_settings_resource is nil' if service_diagnostic_settings_resource.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::Monitor::Mgmt::V2016_09_01::Models::ServiceDiagnosticSettingsResourcePatch.mapper()
      request_content = @client.serialize(request_mapper,  service_diagnostic_settings_resource)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = '{resourceUri}/providers/microsoft.insights/diagnosticSettings/service'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceUri' => resource_uri},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:patch, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Monitor::Mgmt::V2016_09_01::Models::ServiceDiagnosticSettingsResource.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
