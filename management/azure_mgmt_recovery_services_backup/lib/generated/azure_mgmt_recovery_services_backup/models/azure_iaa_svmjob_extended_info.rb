# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # Azure IaaS VM workload-specific additional information for job.
    #
    class AzureIaaSVMJobExtendedInfo

      include MsRestAzure

      # @return [Array<AzureIaaSVMJobTaskDetails>] List of tasks associated
      # with this job.
      attr_accessor :tasks_list

      # @return [Hash{String => String}] Job properties.
      attr_accessor :property_bag

      # @return [Float] Indicates progress of the job. Null if it has not
      # started or completed.
      attr_accessor :progress_percentage

      # @return [String] Non localized error message on job execution.
      attr_accessor :dynamic_error_message


      #
      # Mapper for AzureIaaSVMJobExtendedInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AzureIaaSVMJobExtendedInfo',
          type: {
            name: 'Composite',
            class_name: 'AzureIaaSVMJobExtendedInfo',
            model_properties: {
              tasks_list: {
                required: false,
                serialized_name: 'tasksList',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'AzureIaaSVMJobTaskDetailsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AzureIaaSVMJobTaskDetails'
                      }
                  }
                }
              },
              property_bag: {
                required: false,
                serialized_name: 'propertyBag',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              progress_percentage: {
                required: false,
                serialized_name: 'progressPercentage',
                type: {
                  name: 'Double'
                }
              },
              dynamic_error_message: {
                required: false,
                serialized_name: 'dynamicErrorMessage',
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
