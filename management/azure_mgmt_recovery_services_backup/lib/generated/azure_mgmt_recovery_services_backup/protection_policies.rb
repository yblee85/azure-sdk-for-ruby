# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  #
  # ProtectionPolicies
  #
  class ProtectionPolicies
    include Azure::ARM::RecoveryServicesBackup::Models
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ProtectionPolicies class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [RecoveryServicesBackupClient] reference to the RecoveryServicesBackupClient
    attr_reader :client

    #
    # Provides the details of the backup policies associated to Recovery Services
    # Vault. This is an asynchronous operation. Status of the operation can be
    # fetched using GetPolicyOperationResult API.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param policy_name [String] Backup policy information to be fetched.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ProtectionPolicy] operation results.
    #
    def get(vault_name, resource_group_name, policy_name, custom_headers = nil)
      response = get_async(vault_name, resource_group_name, policy_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Provides the details of the backup policies associated to Recovery Services
    # Vault. This is an asynchronous operation. Status of the operation can be
    # fetched using GetPolicyOperationResult API.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param policy_name [String] Backup policy information to be fetched.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(vault_name, resource_group_name, policy_name, custom_headers = nil)
      get_async(vault_name, resource_group_name, policy_name, custom_headers).value!
    end

    #
    # Provides the details of the backup policies associated to Recovery Services
    # Vault. This is an asynchronous operation. Status of the operation can be
    # fetched using GetPolicyOperationResult API.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param policy_name [String] Backup policy information to be fetched.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(vault_name, resource_group_name, policy_name, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'vault_name is nil' if vault_name.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'policy_name is nil' if policy_name.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/RecoveryServices/vaults/{vaultName}/backupPolicies/{policyName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'vaultName' => vault_name,'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id,'policyName' => policy_name},
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
            result_mapper = ProtectionPolicy.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Creates or modifies a backup policy. This is an asynchronous operation.
    # Status of the operation can be fetched using GetPolicyOperationResult API.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param policy_name [String] Backup policy to be created.
    # @param resource_protection_policy [ProtectionPolicy] resource backup policy
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ProtectionPolicy] operation results.
    #
    def create_or_update(vault_name, resource_group_name, policy_name, resource_protection_policy, custom_headers = nil)
      response = create_or_update_async(vault_name, resource_group_name, policy_name, resource_protection_policy, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates or modifies a backup policy. This is an asynchronous operation.
    # Status of the operation can be fetched using GetPolicyOperationResult API.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param policy_name [String] Backup policy to be created.
    # @param resource_protection_policy [ProtectionPolicy] resource backup policy
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(vault_name, resource_group_name, policy_name, resource_protection_policy, custom_headers = nil)
      create_or_update_async(vault_name, resource_group_name, policy_name, resource_protection_policy, custom_headers).value!
    end

    #
    # Creates or modifies a backup policy. This is an asynchronous operation.
    # Status of the operation can be fetched using GetPolicyOperationResult API.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param policy_name [String] Backup policy to be created.
    # @param resource_protection_policy [ProtectionPolicy] resource backup policy
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(vault_name, resource_group_name, policy_name, resource_protection_policy, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'vault_name is nil' if vault_name.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'policy_name is nil' if policy_name.nil?
      fail ArgumentError, 'resource_protection_policy is nil' if resource_protection_policy.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = ProtectionPolicy.mapper()
      request_content = @client.serialize(request_mapper,  resource_protection_policy, 'resource_protection_policy')
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = '/Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/RecoveryServices/vaults/{vaultName}/backupPolicies/{policyName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'vaultName' => vault_name,'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id,'policyName' => policy_name},
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
        unless status_code == 200 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = ProtectionPolicy.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Deletes specified backup policy from your Recovery Services Vault. This is
    # an asynchronous operation. Status of the operation can be fetched using
    # GetPolicyOperationResult API.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param policy_name [String] Backup policy to be deleted.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(vault_name, resource_group_name, policy_name, custom_headers = nil)
      response = delete_async(vault_name, resource_group_name, policy_name, custom_headers).value!
      nil
    end

    #
    # Deletes specified backup policy from your Recovery Services Vault. This is
    # an asynchronous operation. Status of the operation can be fetched using
    # GetPolicyOperationResult API.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param policy_name [String] Backup policy to be deleted.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(vault_name, resource_group_name, policy_name, custom_headers = nil)
      delete_async(vault_name, resource_group_name, policy_name, custom_headers).value!
    end

    #
    # Deletes specified backup policy from your Recovery Services Vault. This is
    # an asynchronous operation. Status of the operation can be fetched using
    # GetPolicyOperationResult API.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param policy_name [String] Backup policy to be deleted.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(vault_name, resource_group_name, policy_name, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'vault_name is nil' if vault_name.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'policy_name is nil' if policy_name.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/RecoveryServices/vaults/{vaultName}/backupPolicies/{policyName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'vaultName' => vault_name,'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id,'policyName' => policy_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 204
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Lists of backup policies associated with Recovery Services Vault. API
    # provides pagination parameters to fetch scoped results.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param filter [String] OData filter options.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ProtectionPolicyResourceList] which provide lazy access to pages of
    # the response.
    #
    def list_as_lazy(vault_name, resource_group_name, filter = nil, custom_headers = nil)
      response = list_async(vault_name, resource_group_name, filter, custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_next_async(next_page_link, custom_headers)
        end
        page
      end
    end

    #
    # Lists of backup policies associated with Recovery Services Vault. API
    # provides pagination parameters to fetch scoped results.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param filter [String] OData filter options.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<ProtectionPolicy>] operation results.
    #
    def list(vault_name, resource_group_name, filter = nil, custom_headers = nil)
      first_page = list_as_lazy(vault_name, resource_group_name, filter, custom_headers)
      first_page.get_all_items
    end

    #
    # Lists of backup policies associated with Recovery Services Vault. API
    # provides pagination parameters to fetch scoped results.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param filter [String] OData filter options.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(vault_name, resource_group_name, filter = nil, custom_headers = nil)
      list_async(vault_name, resource_group_name, filter, custom_headers).value!
    end

    #
    # Lists of backup policies associated with Recovery Services Vault. API
    # provides pagination parameters to fetch scoped results.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param filter [String] OData filter options.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(vault_name, resource_group_name, filter = nil, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'vault_name is nil' if vault_name.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/RecoveryServices/vaults/{vaultName}/backupPolicies'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'vaultName' => vault_name,'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version,'$filter' => filter},
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
            result_mapper = ProtectionPolicyResourceList.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Lists of backup policies associated with Recovery Services Vault. API
    # provides pagination parameters to fetch scoped results.
    #
    # @param next_page_link [String] The NextLink from the previous successful
    # call to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ProtectionPolicyResourceList] operation results.
    #
    def list_next(next_page_link, custom_headers = nil)
      response = list_next_async(next_page_link, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists of backup policies associated with Recovery Services Vault. API
    # provides pagination parameters to fetch scoped results.
    #
    # @param next_page_link [String] The NextLink from the previous successful
    # call to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_next_with_http_info(next_page_link, custom_headers = nil)
      list_next_async(next_page_link, custom_headers).value!
    end

    #
    # Lists of backup policies associated with Recovery Services Vault. API
    # provides pagination parameters to fetch scoped results.
    #
    # @param next_page_link [String] The NextLink from the previous successful
    # call to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_next_async(next_page_link, custom_headers = nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
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
            result_mapper = ProtectionPolicyResourceList.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
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
