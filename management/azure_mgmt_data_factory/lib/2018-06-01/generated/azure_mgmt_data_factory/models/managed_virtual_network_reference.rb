# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Managed Virtual Network reference type.
    #
    class ManagedVirtualNetworkReference

      include MsRestAzure

      # @return [String] Managed Virtual Network reference type. Default value:
      # 'ManagedVirtualNetworkReference' .
      attr_accessor :type

      # @return [String] Reference ManagedVirtualNetwork name.
      attr_accessor :reference_name


      #
      # Mapper for ManagedVirtualNetworkReference class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagedVirtualNetworkReference',
          type: {
            name: 'Composite',
            class_name: 'ManagedVirtualNetworkReference',
            model_properties: {
              type: {
                client_side_validation: true,
                required: true,
                is_constant: true,
                serialized_name: 'type',
                default_value: 'ManagedVirtualNetworkReference',
                type: {
                  name: 'String'
                }
              },
              reference_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'referenceName',
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