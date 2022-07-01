# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerInstance::Mgmt::V2020_11_01
  module Models
    #
    # The container group encryption properties.
    #
    class EncryptionProperties

      include MsRestAzure

      # @return [String] The keyvault base url.
      attr_accessor :vault_base_url

      # @return [String] The encryption key name.
      attr_accessor :key_name

      # @return [String] The encryption key version.
      attr_accessor :key_version


      #
      # Mapper for EncryptionProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EncryptionProperties',
          type: {
            name: 'Composite',
            class_name: 'EncryptionProperties',
            model_properties: {
              vault_base_url: {
                client_side_validation: true,
                required: true,
                serialized_name: 'vaultBaseUrl',
                type: {
                  name: 'String'
                }
              },
              key_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'keyName',
                type: {
                  name: 'String'
                }
              },
              key_version: {
                client_side_validation: true,
                required: true,
                serialized_name: 'keyVersion',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end