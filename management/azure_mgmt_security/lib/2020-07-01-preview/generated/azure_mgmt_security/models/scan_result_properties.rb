# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2020_07_01_preview
  module Models
    #
    # A vulnerability assessment scan result properties for a single rule.
    #
    class ScanResultProperties

      include MsRestAzure

      # @return [String] The rule Id.
      attr_accessor :rule_id

      # @return [RuleStatus] Possible values include: 'NonFinding', 'Finding',
      # 'InternalError'
      attr_accessor :status

      # @return [Boolean] Indicated whether the results specified here are
      # trimmed.
      attr_accessor :is_trimmed

      # @return [Array<Array<String>>] The results of the query that was run.
      attr_accessor :query_results

      # @return [Remediation]
      attr_accessor :remediation

      # @return [BaselineAdjustedResult]
      attr_accessor :baseline_adjusted_result

      # @return [VaRule]
      attr_accessor :rule_metadata


      #
      # Mapper for ScanResultProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ScanResultProperties',
          type: {
            name: 'Composite',
            class_name: 'ScanResultProperties',
            model_properties: {
              rule_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ruleId',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              is_trimmed: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isTrimmed',
                type: {
                  name: 'Boolean'
                }
              },
              query_results: {
                client_side_validation: true,
                required: false,
                serialized_name: 'queryResults',
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
              remediation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'remediation',
                type: {
                  name: 'Composite',
                  class_name: 'Remediation'
                }
              },
              baseline_adjusted_result: {
                client_side_validation: true,
                required: false,
                serialized_name: 'baselineAdjustedResult',
                type: {
                  name: 'Composite',
                  class_name: 'BaselineAdjustedResult'
                }
              },
              rule_metadata: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ruleMetadata',
                type: {
                  name: 'Composite',
                  class_name: 'VaRule'
                }
              }
            }
          }
        }
      end
    end
  end
end
