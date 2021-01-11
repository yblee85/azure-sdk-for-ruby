# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataBoxEdge::Mgmt::V2019_08_01
  module Models
    #
    # The Data Box Edge/Gateway device.
    #
    class DataBoxEdgeDevice < ARMBaseModel

      include MsRestAzure

      # @return [String] The location of the device. This is a supported and
      # registered Azure geographical region (for example, West US, East US, or
      # Southeast Asia). The geographical region of a device cannot be changed
      # once it is created, but if an identical geographical region is
      # specified on update, the request will succeed.
      attr_accessor :location

      # @return [Hash{String => String}] The list of tags that describe the
      # device. These tags can be used to view and group this device (across
      # resource groups).
      attr_accessor :tags

      # @return [Sku] The SKU type.
      attr_accessor :sku

      # @return [String] The etag for the devices.
      attr_accessor :etag

      # @return [DataBoxEdgeDeviceStatus] The status of the Data Box
      # Edge/Gateway device. Possible values include: 'ReadyToSetup', 'Online',
      # 'Offline', 'NeedsAttention', 'Disconnected', 'PartiallyDisconnected',
      # 'Maintenance'
      attr_accessor :data_box_edge_device_status

      # @return [String] The Serial Number of Data Box Edge/Gateway device.
      attr_accessor :serial_number

      # @return [String] The Description of the Data Box Edge/Gateway device.
      attr_accessor :description

      # @return [String] The description of the Data Box Edge/Gateway device
      # model.
      attr_accessor :model_description

      # @return [DeviceType] The type of the Data Box Edge/Gateway device.
      # Possible values include: 'DataBoxEdgeDevice'
      attr_accessor :device_type

      # @return [String] The Data Box Edge/Gateway device name.
      attr_accessor :friendly_name

      # @return [String] The Data Box Edge/Gateway device culture.
      attr_accessor :culture

      # @return [String] The Data Box Edge/Gateway device model.
      attr_accessor :device_model

      # @return [String] The Data Box Edge/Gateway device software version.
      attr_accessor :device_software_version

      # @return [Integer] The Data Box Edge/Gateway device local capacity in
      # MB.
      attr_accessor :device_local_capacity

      # @return [String] The Data Box Edge/Gateway device timezone.
      attr_accessor :time_zone

      # @return [String] The device software version number of the device (eg:
      # 1.2.18105.6).
      attr_accessor :device_hcs_version

      # @return [Array<RoleTypes>] Type of compute roles configured.
      attr_accessor :configured_role_types

      # @return [Integer] The number of nodes in the cluster.
      attr_accessor :node_count


      #
      # Mapper for DataBoxEdgeDevice class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DataBoxEdgeDevice',
          type: {
            name: 'Composite',
            class_name: 'DataBoxEdgeDevice',
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
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              data_box_edge_device_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.dataBoxEdgeDeviceStatus',
                type: {
                  name: 'String'
                }
              },
              serial_number: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.serialNumber',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              model_description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.modelDescription',
                type: {
                  name: 'String'
                }
              },
              device_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.deviceType',
                type: {
                  name: 'String'
                }
              },
              friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.friendlyName',
                type: {
                  name: 'String'
                }
              },
              culture: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.culture',
                type: {
                  name: 'String'
                }
              },
              device_model: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.deviceModel',
                type: {
                  name: 'String'
                }
              },
              device_software_version: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.deviceSoftwareVersion',
                type: {
                  name: 'String'
                }
              },
              device_local_capacity: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.deviceLocalCapacity',
                type: {
                  name: 'Number'
                }
              },
              time_zone: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.timeZone',
                type: {
                  name: 'String'
                }
              },
              device_hcs_version: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.deviceHcsVersion',
                type: {
                  name: 'String'
                }
              },
              configured_role_types: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.configuredRoleTypes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RoleTypesElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              node_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.nodeCount',
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