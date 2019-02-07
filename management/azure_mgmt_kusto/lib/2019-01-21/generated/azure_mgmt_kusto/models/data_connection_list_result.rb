# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Kusto::Mgmt::V2019_01_21
  module Models
    #
    # The list Kusto data connections operation response.
    #
    class DataConnectionListResult

      include MsRestAzure

      # @return [Array<DataConnection>] The list of Kusto data connections.
      attr_accessor :value


      #
      # Mapper for DataConnectionListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DataConnectionListResult',
          type: {
            name: 'Composite',
            class_name: 'DataConnectionListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DataConnectionElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'kind',
                        uber_parent: 'Resource',
                        class_name: 'DataConnection'
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
