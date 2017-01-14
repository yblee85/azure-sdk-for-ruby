# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Scheduler
  module Models
    #
    # Model object.
    #
    #
    class ServiceBusBrokeredMessageProperties

      include MsRestAzure

      # @return [String] Gets or sets the content type.
      attr_accessor :content_type

      # @return [String] Gets or sets the correlation ID.
      attr_accessor :correlation_id

      # @return [Boolean] Gets or sets the force persistence.
      attr_accessor :force_persistence

      # @return [String] Gets or sets the label.
      attr_accessor :label

      # @return [String] Gets or sets the message ID.
      attr_accessor :message_id

      # @return [String] Gets or sets the partition key.
      attr_accessor :partition_key

      # @return [String] Gets or sets the reply to.
      attr_accessor :reply_to

      # @return [String] Gets or sets the reply to session ID.
      attr_accessor :reply_to_session_id

      # @return [DateTime] Gets or sets the scheduled enqueue time UTC.
      attr_accessor :scheduled_enqueue_time_utc

      # @return [String] Gets or sets the session ID.
      attr_accessor :session_id

      # @return [Duration] Gets or sets the time to live.
      attr_accessor :time_to_live

      # @return [String] Gets or sets the to.
      attr_accessor :to

      # @return [String] Gets or sets the via partition key.
      attr_accessor :via_partition_key


      #
      # Mapper for ServiceBusBrokeredMessageProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ServiceBusBrokeredMessageProperties',
          type: {
            name: 'Composite',
            class_name: 'ServiceBusBrokeredMessageProperties',
            model_properties: {
              content_type: {
                required: false,
                serialized_name: 'contentType',
                type: {
                  name: 'String'
                }
              },
              correlation_id: {
                required: false,
                serialized_name: 'correlationId',
                type: {
                  name: 'String'
                }
              },
              force_persistence: {
                required: false,
                serialized_name: 'forcePersistence',
                type: {
                  name: 'Boolean'
                }
              },
              label: {
                required: false,
                serialized_name: 'label',
                type: {
                  name: 'String'
                }
              },
              message_id: {
                required: false,
                serialized_name: 'messageId',
                type: {
                  name: 'String'
                }
              },
              partition_key: {
                required: false,
                serialized_name: 'partitionKey',
                type: {
                  name: 'String'
                }
              },
              reply_to: {
                required: false,
                serialized_name: 'replyTo',
                type: {
                  name: 'String'
                }
              },
              reply_to_session_id: {
                required: false,
                serialized_name: 'replyToSessionId',
                type: {
                  name: 'String'
                }
              },
              scheduled_enqueue_time_utc: {
                required: false,
                serialized_name: 'scheduledEnqueueTimeUtc',
                type: {
                  name: 'DateTime'
                }
              },
              session_id: {
                required: false,
                serialized_name: 'sessionId',
                type: {
                  name: 'String'
                }
              },
              time_to_live: {
                required: false,
                serialized_name: 'timeToLive',
                type: {
                  name: 'TimeSpan'
                }
              },
              to: {
                required: false,
                serialized_name: 'to',
                type: {
                  name: 'String'
                }
              },
              via_partition_key: {
                required: false,
                serialized_name: 'viaPartitionKey',
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