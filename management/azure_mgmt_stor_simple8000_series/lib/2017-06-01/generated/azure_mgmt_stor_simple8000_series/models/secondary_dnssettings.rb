# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StorSimple8000Series::Api_2017_06_01
  module Models
    #
    # The secondary DNS settings.
    #
    class SecondaryDNSSettings

      include MsRestAzure

      # @return [Array<String>] The list of secondary DNS Server IP addresses.
      attr_accessor :secondary_dns_servers


      #
      # Mapper for SecondaryDNSSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SecondaryDNSSettings',
          type: {
            name: 'Composite',
            class_name: 'SecondaryDNSSettings',
            model_properties: {
              secondary_dns_servers: {
                required: false,
                serialized_name: 'secondaryDnsServers',
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