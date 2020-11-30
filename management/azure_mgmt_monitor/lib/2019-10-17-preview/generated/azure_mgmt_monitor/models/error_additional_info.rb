# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2019_10_17_preview
  module Models
    #
    # The resource management error additional info.
    #
    class ErrorAdditionalInfo

      include MsRestAzure

      # @return [String] The additional info type.
      attr_accessor :type

      # @return The additional info.
      attr_accessor :info


      #
      # Mapper for ErrorAdditionalInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ErrorAdditionalInfo',
          type: {
            name: 'Composite',
            class_name: 'ErrorAdditionalInfo',
            model_properties: {
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              info: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'info',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
