# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automanage::Mgmt::V2020_06_30_preview
  module Models
    #
    # Represents an update resource
    #
    class UpdateResource

      include MsRestAzure

      # @return [Hash{String => String}] The tags of the resource.
      attr_accessor :tags


      #
      # Mapper for UpdateResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UpdateResource',
          type: {
            name: 'Composite',
            class_name: 'UpdateResource',
            model_properties: {
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
              }
            }
          }
        }
      end
    end
  end
end