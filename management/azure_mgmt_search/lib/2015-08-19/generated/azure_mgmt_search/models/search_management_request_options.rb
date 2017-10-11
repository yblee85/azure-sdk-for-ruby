# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Search::Api_2015_08_19
  module Models
    #
    # Additional parameters for a set of operations.
    #
    class SearchManagementRequestOptions

      include MsRestAzure

      # @return A client-generated GUID value that identifies this request. If
      # specified, this will be included in response information as a way to
      # track the request.
      attr_accessor :client_request_id


      #
      # Mapper for SearchManagementRequestOptions class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          type: {
            name: 'Composite',
            class_name: 'SearchManagementRequestOptions',
            model_properties: {
              client_request_id: {
                required: false,
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