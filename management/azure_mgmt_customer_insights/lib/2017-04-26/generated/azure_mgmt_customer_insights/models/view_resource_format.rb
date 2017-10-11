# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CustomerInsights::Api_2017_04_26
  module Models
    #
    # The view resource format.
    #
    class ViewResourceFormat < ProxyResource

      include MsRestAzure

      # @return [String] Name of the view.
      attr_accessor :view_name

      # @return [String] the user ID.
      attr_accessor :user_id

      # @return [String] the hub name.
      attr_accessor :tenant_id

      # @return [Hash{String => String}] Localized display name for the view.
      attr_accessor :display_name

      # @return [String] View definition.
      attr_accessor :definition

      # @return [DateTime] Date time when view was last modified.
      attr_accessor :changed

      # @return [DateTime] Date time when view was created.
      attr_accessor :created


      #
      # Mapper for ViewResourceFormat class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ViewResourceFormat',
          type: {
            name: 'Composite',
            class_name: 'ViewResourceFormat',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              view_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.viewName',
                type: {
                  name: 'String'
                }
              },
              user_id: {
                required: false,
                serialized_name: 'properties.userId',
                type: {
                  name: 'String'
                }
              },
              tenant_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.tenantId',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                required: false,
                serialized_name: 'properties.displayName',
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
              definition: {
                required: true,
                serialized_name: 'properties.definition',
                type: {
                  name: 'String'
                }
              },
              changed: {
                required: false,
                read_only: true,
                serialized_name: 'properties.changed',
                type: {
                  name: 'DateTime'
                }
              },
              created: {
                required: false,
                read_only: true,
                serialized_name: 'properties.created',
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