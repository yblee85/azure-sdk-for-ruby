# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Search::Mgmt::V2015_08_19
  #
  # Client that can be used to manage Azure Search services and API keys.
  #
  class Services
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Services class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [SearchManagementClient] reference to the SearchManagementClient
    attr_reader :client

    #
    # Creates or updates a Search service in the given resource group. If the
    # Search service already exists, all properties will be updated with the given
    # values.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # current subscription. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param search_service_name [String] The name of the Azure Search service to
    # create or update. Search service names must only contain lowercase letters,
    # digits or dashes, cannot use dash as the first two or last one characters,
    # cannot contain consecutive dashes, and must be between 2 and 60 characters in
    # length. Search service names must be globally unique since they are part of
    # the service URI (https://<name>.search.windows.net). You cannot change the
    # service name after the service is created.
    # @param service [SearchService] The definition of the Search service to create
    # or update.
    # @param search_management_request_options [SearchManagementRequestOptions]
    # Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SearchService] operation results.
    #
    def create_or_update(resource_group_name, search_service_name, service, search_management_request_options:nil, custom_headers:nil)
      response = create_or_update_async(resource_group_name, search_service_name, service, search_management_request_options:search_management_request_options, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] The name of the resource group within the
    # current subscription. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param search_service_name [String] The name of the Azure Search service to
    # create or update. Search service names must only contain lowercase letters,
    # digits or dashes, cannot use dash as the first two or last one characters,
    # cannot contain consecutive dashes, and must be between 2 and 60 characters in
    # length. Search service names must be globally unique since they are part of
    # the service URI (https://<name>.search.windows.net). You cannot change the
    # service name after the service is created.
    # @param service [SearchService] The definition of the Search service to create
    # or update.
    # @param search_management_request_options [SearchManagementRequestOptions]
    # Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def create_or_update_async(resource_group_name, search_service_name, service, search_management_request_options:nil, custom_headers:nil)
      # Send request
      promise = begin_create_or_update_async(resource_group_name, search_service_name, service, search_management_request_options:search_management_request_options, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::Search::Mgmt::V2015_08_19::Models::SearchService.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Gets the Search service with the given name in the given resource group.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # current subscription. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param search_service_name [String] The name of the Azure Search service
    # associated with the specified resource group.
    # @param search_management_request_options [SearchManagementRequestOptions]
    # Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SearchService] operation results.
    #
    def get(resource_group_name, search_service_name, search_management_request_options:nil, custom_headers:nil)
      response = get_async(resource_group_name, search_service_name, search_management_request_options:search_management_request_options, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the Search service with the given name in the given resource group.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # current subscription. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param search_service_name [String] The name of the Azure Search service
    # associated with the specified resource group.
    # @param search_management_request_options [SearchManagementRequestOptions]
    # Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, search_service_name, search_management_request_options:nil, custom_headers:nil)
      get_async(resource_group_name, search_service_name, search_management_request_options:search_management_request_options, custom_headers:custom_headers).value!
    end

    #
    # Gets the Search service with the given name in the given resource group.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # current subscription. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param search_service_name [String] The name of the Azure Search service
    # associated with the specified resource group.
    # @param search_management_request_options [SearchManagementRequestOptions]
    # Additional parameters for the operation
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, search_service_name, search_management_request_options:nil, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'search_service_name is nil' if search_service_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?

      client_request_id = nil
      unless search_management_request_options.nil?
        client_request_id = search_management_request_options.clientRequestId
      end

      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      request_headers['x-ms-client-request-id'] = client_request_id.to_s unless client_request_id.to_s.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Search/searchServices/{searchServiceName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'searchServiceName' => search_service_name,'subscriptionId' => @client.subscription_id},
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
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Search::Mgmt::V2015_08_19::Models::SearchService.mapper()
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
    # Deletes a Search service in the given resource group, along with its
    # associated resources.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # current subscription. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param search_service_name [String] The name of the Azure Search service
    # associated with the specified resource group.
    # @param search_management_request_options [SearchManagementRequestOptions]
    # Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, search_service_name, search_management_request_options:nil, custom_headers:nil)
      response = delete_async(resource_group_name, search_service_name, search_management_request_options:search_management_request_options, custom_headers:custom_headers).value!
      nil
    end

    #
    # Deletes a Search service in the given resource group, along with its
    # associated resources.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # current subscription. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param search_service_name [String] The name of the Azure Search service
    # associated with the specified resource group.
    # @param search_management_request_options [SearchManagementRequestOptions]
    # Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, search_service_name, search_management_request_options:nil, custom_headers:nil)
      delete_async(resource_group_name, search_service_name, search_management_request_options:search_management_request_options, custom_headers:custom_headers).value!
    end

    #
    # Deletes a Search service in the given resource group, along with its
    # associated resources.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # current subscription. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param search_service_name [String] The name of the Azure Search service
    # associated with the specified resource group.
    # @param search_management_request_options [SearchManagementRequestOptions]
    # Additional parameters for the operation
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, search_service_name, search_management_request_options:nil, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'search_service_name is nil' if search_service_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?

      client_request_id = nil
      unless search_management_request_options.nil?
        client_request_id = search_management_request_options.clientRequestId
      end

      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      request_headers['x-ms-client-request-id'] = client_request_id.to_s unless client_request_id.to_s.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Search/searchServices/{searchServiceName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'searchServiceName' => search_service_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 204 || status_code == 404
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Gets a list of all Search services in the given resource group.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # current subscription. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param search_management_request_options [SearchManagementRequestOptions]
    # Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SearchServiceListResult] operation results.
    #
    def list_by_resource_group(resource_group_name, search_management_request_options:nil, custom_headers:nil)
      response = list_by_resource_group_async(resource_group_name, search_management_request_options:search_management_request_options, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a list of all Search services in the given resource group.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # current subscription. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param search_management_request_options [SearchManagementRequestOptions]
    # Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_resource_group_with_http_info(resource_group_name, search_management_request_options:nil, custom_headers:nil)
      list_by_resource_group_async(resource_group_name, search_management_request_options:search_management_request_options, custom_headers:custom_headers).value!
    end

    #
    # Gets a list of all Search services in the given resource group.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # current subscription. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param search_management_request_options [SearchManagementRequestOptions]
    # Additional parameters for the operation
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_resource_group_async(resource_group_name, search_management_request_options:nil, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?

      client_request_id = nil
      unless search_management_request_options.nil?
        client_request_id = search_management_request_options.clientRequestId
      end

      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      request_headers['x-ms-client-request-id'] = client_request_id.to_s unless client_request_id.to_s.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Search/searchServices'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id},
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
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Search::Mgmt::V2015_08_19::Models::SearchServiceListResult.mapper()
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
    # Checks whether or not the given Search service name is available for use.
    # Search service names must be globally unique since they are part of the
    # service URI (https://<name>.search.windows.net).
    #
    # @param name [String] The Search service name to validate. Search service
    # names must only contain lowercase letters, digits or dashes, cannot use dash
    # as the first two or last one characters, cannot contain consecutive dashes,
    # and must be between 2 and 60 characters in length.
    # @param search_management_request_options [SearchManagementRequestOptions]
    # Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [CheckNameAvailabilityOutput] operation results.
    #
    def check_name_availability(name, search_management_request_options:nil, custom_headers:nil)
      response = check_name_availability_async(name, search_management_request_options:search_management_request_options, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Checks whether or not the given Search service name is available for use.
    # Search service names must be globally unique since they are part of the
    # service URI (https://<name>.search.windows.net).
    #
    # @param name [String] The Search service name to validate. Search service
    # names must only contain lowercase letters, digits or dashes, cannot use dash
    # as the first two or last one characters, cannot contain consecutive dashes,
    # and must be between 2 and 60 characters in length.
    # @param search_management_request_options [SearchManagementRequestOptions]
    # Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def check_name_availability_with_http_info(name, search_management_request_options:nil, custom_headers:nil)
      check_name_availability_async(name, search_management_request_options:search_management_request_options, custom_headers:custom_headers).value!
    end

    #
    # Checks whether or not the given Search service name is available for use.
    # Search service names must be globally unique since they are part of the
    # service URI (https://<name>.search.windows.net).
    #
    # @param name [String] The Search service name to validate. Search service
    # names must only contain lowercase letters, digits or dashes, cannot use dash
    # as the first two or last one characters, cannot contain consecutive dashes,
    # and must be between 2 and 60 characters in length.
    # @param search_management_request_options [SearchManagementRequestOptions]
    # Additional parameters for the operation
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def check_name_availability_async(name, search_management_request_options:nil, custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'name is nil' if name.nil?

      client_request_id = nil
      check_name_availability_input = CheckNameAvailabilityInput.new
      unless search_management_request_options.nil?
        client_request_id = search_management_request_options.clientRequestId
      end
      unless name.nil?
        check_name_availability_input.name = name
      end

      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      request_headers['x-ms-client-request-id'] = client_request_id.to_s unless client_request_id.to_s.nil?

      # Serialize Request
      request_mapper = Azure::Search::Mgmt::V2015_08_19::Models::CheckNameAvailabilityInput.mapper()
      request_content = @client.serialize(request_mapper,  check_name_availability_input)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.Search/checkNameAvailability'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

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
            result_mapper = Azure::Search::Mgmt::V2015_08_19::Models::CheckNameAvailabilityOutput.mapper()
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
    # Creates or updates a Search service in the given resource group. If the
    # Search service already exists, all properties will be updated with the given
    # values.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # current subscription. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param search_service_name [String] The name of the Azure Search service to
    # create or update. Search service names must only contain lowercase letters,
    # digits or dashes, cannot use dash as the first two or last one characters,
    # cannot contain consecutive dashes, and must be between 2 and 60 characters in
    # length. Search service names must be globally unique since they are part of
    # the service URI (https://<name>.search.windows.net). You cannot change the
    # service name after the service is created.
    # @param service [SearchService] The definition of the Search service to create
    # or update.
    # @param search_management_request_options [SearchManagementRequestOptions]
    # Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SearchService] operation results.
    #
    def begin_create_or_update(resource_group_name, search_service_name, service, search_management_request_options:nil, custom_headers:nil)
      response = begin_create_or_update_async(resource_group_name, search_service_name, service, search_management_request_options:search_management_request_options, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates or updates a Search service in the given resource group. If the
    # Search service already exists, all properties will be updated with the given
    # values.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # current subscription. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param search_service_name [String] The name of the Azure Search service to
    # create or update. Search service names must only contain lowercase letters,
    # digits or dashes, cannot use dash as the first two or last one characters,
    # cannot contain consecutive dashes, and must be between 2 and 60 characters in
    # length. Search service names must be globally unique since they are part of
    # the service URI (https://<name>.search.windows.net). You cannot change the
    # service name after the service is created.
    # @param service [SearchService] The definition of the Search service to create
    # or update.
    # @param search_management_request_options [SearchManagementRequestOptions]
    # Additional parameters for the operation
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_create_or_update_with_http_info(resource_group_name, search_service_name, service, search_management_request_options:nil, custom_headers:nil)
      begin_create_or_update_async(resource_group_name, search_service_name, service, search_management_request_options:search_management_request_options, custom_headers:custom_headers).value!
    end

    #
    # Creates or updates a Search service in the given resource group. If the
    # Search service already exists, all properties will be updated with the given
    # values.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # current subscription. You can obtain this value from the Azure Resource
    # Manager API or the portal.
    # @param search_service_name [String] The name of the Azure Search service to
    # create or update. Search service names must only contain lowercase letters,
    # digits or dashes, cannot use dash as the first two or last one characters,
    # cannot contain consecutive dashes, and must be between 2 and 60 characters in
    # length. Search service names must be globally unique since they are part of
    # the service URI (https://<name>.search.windows.net). You cannot change the
    # service name after the service is created.
    # @param service [SearchService] The definition of the Search service to create
    # or update.
    # @param search_management_request_options [SearchManagementRequestOptions]
    # Additional parameters for the operation
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_create_or_update_async(resource_group_name, search_service_name, service, search_management_request_options:nil, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'search_service_name is nil' if search_service_name.nil?
      fail ArgumentError, 'service is nil' if service.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?

      client_request_id = nil
      unless search_management_request_options.nil?
        client_request_id = search_management_request_options.clientRequestId
      end

      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      request_headers['x-ms-client-request-id'] = client_request_id.to_s unless client_request_id.to_s.nil?

      # Serialize Request
      request_mapper = Azure::Search::Mgmt::V2015_08_19::Models::SearchService.mapper()
      request_content = @client.serialize(request_mapper,  service)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Search/searchServices/{searchServiceName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'searchServiceName' => search_service_name,'subscriptionId' => @client.subscription_id},
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
        unless status_code == 200 || status_code == 201
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Search::Mgmt::V2015_08_19::Models::SearchService.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Search::Mgmt::V2015_08_19::Models::SearchService.mapper()
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
