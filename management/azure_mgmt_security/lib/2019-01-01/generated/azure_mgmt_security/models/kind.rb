# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2019_01_01
  module Models
    #
    # Describes an Azure resource with kind
    #
    class Kind

      include MsRestAzure

      # @return [String] Kind of the resource
      attr_accessor :kind


      #
      # Mapper for Kind class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Kind',
          type: {
            name: 'Composite',
            class_name: 'Kind',
            model_properties: {
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
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
