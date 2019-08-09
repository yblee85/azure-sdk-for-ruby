# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # This activity evaluates a boolean expression and executes either the
    # activities under the ifTrueActivities property or the ifFalseActivities
    # property depending on the result of the expression.
    #
    class IfConditionActivity < ControlActivity

      include MsRestAzure


      def initialize
        @type = "IfCondition"
      end

      attr_accessor :type

      # @return [Expression] An expression that would evaluate to Boolean. This
      # is used to determine the block of activities (ifTrueActivities or
      # ifFalseActivities) that will be executed.
      attr_accessor :expression

      # @return [Array<Activity>] List of activities to execute if expression
      # is evaluated to true. This is an optional property and if not provided,
      # the activity will exit without any action.
      attr_accessor :if_true_activities

      # @return [Array<Activity>] List of activities to execute if expression
      # is evaluated to false. This is an optional property and if not
      # provided, the activity will exit without any action.
      attr_accessor :if_false_activities


      #
      # Mapper for IfConditionActivity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IfCondition',
          type: {
            name: 'Composite',
            class_name: 'IfConditionActivity',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              depends_on: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dependsOn',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ActivityDependencyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ActivityDependency'
                      }
                  }
                }
              },
              user_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'userProperties',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'UserPropertyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'UserProperty'
                      }
                  }
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              expression: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.expression',
                default_value: {},
                type: {
                  name: 'Composite',
                  class_name: 'Expression'
                }
              },
              if_true_activities: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.ifTrueActivities',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ActivityElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'type',
                        uber_parent: 'Activity',
                        class_name: 'Activity'
                      }
                  }
                }
              },
              if_false_activities: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.ifFalseActivities',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ActivityElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'type',
                        uber_parent: 'Activity',
                        class_name: 'Activity'
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