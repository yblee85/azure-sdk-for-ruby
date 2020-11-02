# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2020_07_01_preview
  module Models
    #
    # Baseline details.
    #
    class Baseline

      include MsRestAzure

      # @return [Array<Array<String>>] Expected results.
      attr_accessor :expected_results

      # @return [DateTime] Baseline update time (UTC).
      attr_accessor :updated_time


      #
      # Mapper for Baseline class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Baseline',
          type: {
            name: 'Composite',
            class_name: 'Baseline',
            model_properties: {
              expected_results: {
                client_side_validation: true,
                required: false,
                serialized_name: 'expectedResults',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ArrayElementType',
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
              },
              updated_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'updatedTime',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
