# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Redis::Mgmt::V2017_10_01
  module Models
    #
    # Parameters required for creating a firewall rule on redis cache.
    #
    class RedisFirewallRuleCreateParameters

      include MsRestAzure

      # @return [String] lowest IP address included in the range
      attr_accessor :start_ip

      # @return [String] highest IP address included in the range
      attr_accessor :end_ip


      #
      # Mapper for RedisFirewallRuleCreateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RedisFirewallRuleCreateParameters',
          type: {
            name: 'Composite',
            class_name: 'RedisFirewallRuleCreateParameters',
            model_properties: {
              start_ip: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.startIP',
                type: {
                  name: 'String'
                }
              },
              end_ip: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.endIP',
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