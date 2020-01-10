# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ImportExport::Mgmt::V2016_11_01
  module Models
    #
    # Update Job parameters
    #
    class UpdateJobParameters

      include MsRestAzure

      # @return Specifies the tags that will be assigned to the job
      attr_accessor :tags

      # @return [Boolean] If specified, the value must be true. The service
      # will attempt to cancel the job.
      attr_accessor :cancel_requested

      # @return [String] If specified, the value must be Shipping, which tells
      # the Import/Export service that the package for the job has been
      # shipped. The ReturnAddress and DeliveryPackage properties must have
      # been set either in this request or in a previous request, otherwise the
      # request will fail.
      attr_accessor :state

      # @return [ReturnAddress] Specifies the return address information for
      # the job.
      attr_accessor :return_address

      # @return [ReturnShipping] Specifies the return carrier and customer's
      # account with the carrier.
      attr_accessor :return_shipping

      # @return [PackageInfomation] Contains information about the package
      # being shipped by the customer to the Microsoft data center.
      attr_accessor :delivery_package

      # @return [String] Indicates whether error logging or verbose logging is
      # enabled.
      attr_accessor :log_level

      # @return [Boolean] Indicates whether the manifest files on the drives
      # should be copied to block blobs.
      attr_accessor :backup_drive_manifest

      # @return [Array<DriveStatus>] List of drives that comprise the job.
      attr_accessor :drive_list


      #
      # Mapper for UpdateJobParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UpdateJobParameters',
          type: {
            name: 'Composite',
            class_name: 'UpdateJobParameters',
            model_properties: {
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Object'
                }
              },
              cancel_requested: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.cancelRequested',
                type: {
                  name: 'Boolean'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.state',
                type: {
                  name: 'String'
                }
              },
              return_address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.returnAddress',
                type: {
                  name: 'Composite',
                  class_name: 'ReturnAddress'
                }
              },
              return_shipping: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.returnShipping',
                type: {
                  name: 'Composite',
                  class_name: 'ReturnShipping'
                }
              },
              delivery_package: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.deliveryPackage',
                type: {
                  name: 'Composite',
                  class_name: 'PackageInfomation'
                }
              },
              log_level: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.logLevel',
                type: {
                  name: 'String'
                }
              },
              backup_drive_manifest: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.backupDriveManifest',
                type: {
                  name: 'Boolean'
                }
              },
              drive_list: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.driveList',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DriveStatusElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DriveStatus'
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