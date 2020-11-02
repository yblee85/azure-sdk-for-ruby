# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2015_06_01_preview
  module Models
    #
    # Model object.
    #
    #
    class JitNetworkAccessPolicyInitiateRequest

      include MsRestAzure

      # @return [Array<JitNetworkAccessPolicyInitiateVirtualMachine>] A list of
      # virtual machines & ports to open access for
      attr_accessor :virtual_machines

      # @return [String] The justification for making the initiate request
      attr_accessor :justification


      #
      # Mapper for JitNetworkAccessPolicyInitiateRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'JitNetworkAccessPolicyInitiateRequest',
          type: {
            name: 'Composite',
            class_name: 'JitNetworkAccessPolicyInitiateRequest',
            model_properties: {
              virtual_machines: {
                client_side_validation: true,
                required: true,
                serialized_name: 'virtualMachines',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'JitNetworkAccessPolicyInitiateVirtualMachineElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'JitNetworkAccessPolicyInitiateVirtualMachine'
                      }
                  }
                }
              },
              justification: {
                client_side_validation: true,
                required: false,
                serialized_name: 'justification',
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
