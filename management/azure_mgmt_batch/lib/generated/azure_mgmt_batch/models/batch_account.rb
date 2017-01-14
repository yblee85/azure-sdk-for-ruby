# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Batch
  module Models
    #
    # Contains information about an Azure Batch account.
    #
    class BatchAccount < MsRestAzure::Resource

      include MsRestAzure

      # @return [String] The endpoint used by this account to interact with the
      # Batch services.
      attr_accessor :account_endpoint

      # @return [ProvisioningState] The provisioned state of the resource.
      # Possible values include: 'Invalid', 'Creating', 'Deleting',
      # 'Succeeded', 'Failed', 'Cancelled'
      attr_accessor :provisioning_state

      # @return [AutoStorageProperties] The properties and status of any auto
      # storage account associated with the account.
      attr_accessor :auto_storage

      # @return [Integer] The core quota for this Batch account.
      attr_accessor :core_quota

      # @return [Integer] The pool quota for this Batch account.
      attr_accessor :pool_quota

      # @return [Integer] The active job and job schedule quota for this Batch
      # account.
      attr_accessor :active_job_and_job_schedule_quota


      #
      # Mapper for BatchAccount class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BatchAccount',
          type: {
            name: 'Composite',
            class_name: 'BatchAccount',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              account_endpoint: {
                required: false,
                read_only: true,
                serialized_name: 'properties.accountEndpoint',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'Enum',
                  module: 'ProvisioningState'
                }
              },
              auto_storage: {
                required: false,
                serialized_name: 'properties.autoStorage',
                type: {
                  name: 'Composite',
                  class_name: 'AutoStorageProperties'
                }
              },
              core_quota: {
                required: true,
                serialized_name: 'properties.coreQuota',
                type: {
                  name: 'Number'
                }
              },
              pool_quota: {
                required: true,
                serialized_name: 'properties.poolQuota',
                type: {
                  name: 'Number'
                }
              },
              active_job_and_job_schedule_quota: {
                required: true,
                serialized_name: 'properties.activeJobAndJobScheduleQuota',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end