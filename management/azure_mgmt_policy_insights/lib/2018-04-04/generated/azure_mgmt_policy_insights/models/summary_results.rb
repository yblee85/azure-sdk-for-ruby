# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::PolicyInsights::Mgmt::V2018_04_04
  module Models
    #
    # Non-compliance summary on a particular summary level.
    #
    class SummaryResults

      include MsRestAzure

      # @return [String] HTTP POST URI for queryResults action on
      # Microsoft.PolicyInsights to retrieve raw results for the non-compliance
      # summary.
      attr_accessor :query_results_uri

      # @return [Integer] Number of non-compliant resources.
      attr_accessor :non_compliant_resources

      # @return [Integer] Number of non-compliant policies.
      attr_accessor :non_compliant_policies


      #
      # Mapper for SummaryResults class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SummaryResults',
          type: {
            name: 'Composite',
            class_name: 'SummaryResults',
            model_properties: {
              query_results_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'queryResultsUri',
                type: {
                  name: 'String'
                }
              },
              non_compliant_resources: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nonCompliantResources',
                constraints: {
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              },
              non_compliant_policies: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nonCompliantPolicies',
                constraints: {
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
