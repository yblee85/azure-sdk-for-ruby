# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2020_08_06_preview
  module Models
    #
    # IP Address information
    #
    class IpAddress

      include MsRestAzure

      # @return [String] IPV4 address
      attr_accessor :v4address

      # @return [DateTime] Detection time of the ip address.
      attr_accessor :detection_time

      # @return [String] Subnet Classless Inter-Domain Routing
      attr_accessor :subnet_cidr

      # @return [String] Fully qualified domain name
      attr_accessor :fqdn

      # @return [DateTime] FQDN last lookup time.
      attr_accessor :fqdn_last_lookup_time


      #
      # Mapper for IpAddress class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IpAddress',
          type: {
            name: 'Composite',
            class_name: 'IpAddress',
            model_properties: {
              v4address: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'v4Address',
                type: {
                  name: 'String'
                }
              },
              detection_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'detectionTime',
                type: {
                  name: 'DateTime'
                }
              },
              subnet_cidr: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'subnetCidr',
                type: {
                  name: 'String'
                }
              },
              fqdn: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'fqdn',
                type: {
                  name: 'String'
                }
              },
              fqdn_last_lookup_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'fqdnLastLookupTime',
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
