# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 2.2.27.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup::Api_2016_06_01
  module Models
    #
    # The list of ProtectionContainer resources.
    #
    class ProtectionContainerResourceList < ResourceList

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<ProtectionContainerResource>] The list of resources.
      attr_accessor :value

      # return [Proc] with next page method call.
      attr_accessor :next_method

      #
      # Gets the rest of the items for the request, enabling auto-pagination.
      #
      # @return [Array<ProtectionContainerResource>] operation results.
      #
      def get_all_items
        items = @value
        page = self
        while page.null != nil do
          page = page.get_next_page
          items.concat(page.value)
        end
        items
      end

      #
      # Gets the next page of results.
      #
      # @return [ProtectionContainerResourceList] with next page content.
      #
      def get_next_page
        response = @next_method.call(@null).value! unless @next_method.nil?
        unless response.nil?
          @null = response.body.null
          @value = response.body.value
          self
        end
      end

      #
      # Mapper for ProtectionContainerResourceList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ProtectionContainerResourceList',
          type: {
            name: 'Composite',
            class_name: 'ProtectionContainerResourceList',
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
                      serialized_name: 'ProtectionContainerResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ProtectionContainerResource'
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