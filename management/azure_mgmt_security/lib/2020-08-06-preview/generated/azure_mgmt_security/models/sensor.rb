# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2020_08_06_preview
  module Models
    #
    # Sensor data
    #
    class Sensor

      include MsRestAzure

      # @return [String] Sensor name
      attr_accessor :name

      # @return [String] Zone Name.
      attr_accessor :zone


      #
      # Mapper for Sensor class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Sensor',
          type: {
            name: 'Composite',
            class_name: 'Sensor',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              zone: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'zone',
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