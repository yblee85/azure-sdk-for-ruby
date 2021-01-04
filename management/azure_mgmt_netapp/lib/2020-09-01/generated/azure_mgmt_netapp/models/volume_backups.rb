# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::NetApp::Mgmt::V2020_09_01
  module Models
    #
    # Volume details using the backup policy
    #
    class VolumeBackups

      include MsRestAzure

      # @return [String] Volume name
      attr_accessor :volume_name

      # @return [Integer] Total count of backups for volume
      attr_accessor :backups_count

      # @return [Boolean] Policy enabled
      attr_accessor :policy_enabled


      #
      # Mapper for VolumeBackups class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'volumeBackups',
          type: {
            name: 'Composite',
            class_name: 'VolumeBackups',
            model_properties: {
              volume_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'volumeName',
                type: {
                  name: 'String'
                }
              },
              backups_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupsCount',
                type: {
                  name: 'Number'
                }
              },
              policy_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policyEnabled',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
