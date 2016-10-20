# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Insights
  module Models
    #
    # Specifies the action to send email when the rule condition is evaluated.
    #
    class RuleEmailAction < RuleAction

      include MsRestAzure


      def initialize
        @odata.type = "Microsoft.Azure.Management.Insights.Models.RuleEmailAction"
      end

      attr_accessor :odata.type

      # @return [Boolean] the flag to send e-mails to the service owners.
      # Whether the administrators (service and co-adiminstrators) of the
      # service should be notified when the alert is activated.
      attr_accessor :send_to_service_owners

      # @return [Array<String>] the list of administrator's custom email
      # addresses notifiy of the activation of the alert.
      attr_accessor :custom_emails


      #
      # Mapper for RuleEmailAction class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Microsoft.Azure.Management.Insights.Models.RuleEmailAction',
          type: {
            name: 'Composite',
            class_name: 'RuleEmailAction',
            model_properties: {
              odata.type: {
                required: true,
                serialized_name: 'odata.type',
                type: {
                  name: 'String'
                }
              },
              send_to_service_owners: {
                required: false,
                serialized_name: 'sendToServiceOwners',
                type: {
                  name: 'Boolean'
                }
              },
              custom_emails: {
                required: false,
                serialized_name: 'customEmails',
                type: {
                  name: 'Sequence',
                  element: {
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
