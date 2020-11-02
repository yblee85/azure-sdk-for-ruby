# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2020_08_06_preview
  module Models
    #
    # IoT Defender settings
    #
    class IotDefenderSettingsModel < Resource

      include MsRestAzure

      # @return [Integer] Size of the device quota (as a opposed to a Pay as
      # You Go billing model). Value is required to be in multiples of 1000.
      attr_accessor :device_quota

      # @return [Array<String>] Sentinel Workspace Resource Ids
      attr_accessor :sentinel_workspace_resource_ids


      #
      # Mapper for IotDefenderSettingsModel class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IotDefenderSettingsModel',
          type: {
            name: 'Composite',
            class_name: 'IotDefenderSettingsModel',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              device_quota: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.deviceQuota',
                constraints: {
                  InclusiveMinimum: 1000
                },
                type: {
                  name: 'Number'
                }
              },
              sentinel_workspace_resource_ids: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.sentinelWorkspaceResourceIds',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
