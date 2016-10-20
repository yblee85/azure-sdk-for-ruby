# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # List of BackupEngineBase resources
    #
    class BackupEngineBaseResourceList < ResourceList

      include MsRestAzure

      # @return [Array<BackupEngineBase>] List of resources.
      attr_accessor :value

      # return [Proc] with next page method call.
      attr_accessor :next_method

      #
      # Gets the rest of the items for the request, enabling auto-pagination.
      #
      # @return [Array<BackupEngineBase>] operation results.
      #
      def get_all_items
        items = @value
        page = self
        while page.next_link != nil do
          page = page.get_next_page
          items.concat(page.value)
        end
        items
      end

      #
      # Gets the next page of results.
      #
      # @return [BackupEngineBaseResourceList] with next page content.
      #
      def get_next_page
        response = @next_method.call(@next_link).value! unless @next_method.nil?
        unless response.nil?
          @next_link = response.body.next_link
          @value = response.body.value
          self
        end
      end

      #
      # Mapper for BackupEngineBaseResourceList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BackupEngineBaseResourceList',
          type: {
            name: 'Composite',
            class_name: 'BackupEngineBaseResourceList',
            model_properties: {
              next_link: {
                required: false,
                serialized_name: 'nextLink',
                type: {
                  name: 'String'
                }
              },
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'BackupEngineBaseElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'backupEngineType',
                        uber_parent: 'Resource',
                        class_name: 'BackupEngineBase'
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
