# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL::Api_2014_04_01
  module Models
    #
    # Represents the response to a list database table auditing policies
    # request.
    #
    class DatabaseTableAuditingPolicyListResult

      include MsRestAzure

      # @return [Array<DatabaseTableAuditingPolicy>] The list of database table
      # auditing policies.
      attr_accessor :value


      #
      # Mapper for DatabaseTableAuditingPolicyListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DatabaseTableAuditingPolicyListResult',
          type: {
            name: 'Composite',
            class_name: 'DatabaseTableAuditingPolicyListResult',
            model_properties: {
              value: {
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DatabaseTableAuditingPolicyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DatabaseTableAuditingPolicy'
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