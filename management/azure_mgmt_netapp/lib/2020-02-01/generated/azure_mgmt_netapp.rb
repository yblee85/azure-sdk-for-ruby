# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2020-02-01/generated/azure_mgmt_netapp/module_definition'
require 'ms_rest_azure'

module Azure::NetApp::Mgmt::V2020_02_01
  autoload :Operations,                                         '2020-02-01/generated/azure_mgmt_netapp/operations.rb'
  autoload :NetAppResource,                                     '2020-02-01/generated/azure_mgmt_netapp/net_app_resource.rb'
  autoload :Accounts,                                           '2020-02-01/generated/azure_mgmt_netapp/accounts.rb'
  autoload :Pools,                                              '2020-02-01/generated/azure_mgmt_netapp/pools.rb'
  autoload :Volumes,                                            '2020-02-01/generated/azure_mgmt_netapp/volumes.rb'
  autoload :Snapshots,                                          '2020-02-01/generated/azure_mgmt_netapp/snapshots.rb'
  autoload :AzureNetAppFilesManagementClient,                   '2020-02-01/generated/azure_mgmt_netapp/azure_net_app_files_management_client.rb'

  module Models
    autoload :ExportPolicyRule,                                   '2020-02-01/generated/azure_mgmt_netapp/models/export_policy_rule.rb'
    autoload :VolumePropertiesExportPolicy,                       '2020-02-01/generated/azure_mgmt_netapp/models/volume_properties_export_policy.rb'
    autoload :Dimension,                                          '2020-02-01/generated/azure_mgmt_netapp/models/dimension.rb'
    autoload :MountTargetProperties,                              '2020-02-01/generated/azure_mgmt_netapp/models/mount_target_properties.rb'
    autoload :ServiceSpecification,                               '2020-02-01/generated/azure_mgmt_netapp/models/service_specification.rb'
    autoload :ReplicationObject,                                  '2020-02-01/generated/azure_mgmt_netapp/models/replication_object.rb'
    autoload :OperationListResult,                                '2020-02-01/generated/azure_mgmt_netapp/models/operation_list_result.rb'
    autoload :VolumeSnapshotProperties,                           '2020-02-01/generated/azure_mgmt_netapp/models/volume_snapshot_properties.rb'
    autoload :ResourceNameAvailabilityRequest,                    '2020-02-01/generated/azure_mgmt_netapp/models/resource_name_availability_request.rb'
    autoload :VolumePropertiesDataProtection,                     '2020-02-01/generated/azure_mgmt_netapp/models/volume_properties_data_protection.rb'
    autoload :NetAppAccount,                                      '2020-02-01/generated/azure_mgmt_netapp/models/net_app_account.rb'
    autoload :Volume,                                             '2020-02-01/generated/azure_mgmt_netapp/models/volume.rb'
    autoload :NetAppAccountPatch,                                 '2020-02-01/generated/azure_mgmt_netapp/models/net_app_account_patch.rb'
    autoload :VolumeList,                                         '2020-02-01/generated/azure_mgmt_netapp/models/volume_list.rb'
    autoload :CapacityPoolList,                                   '2020-02-01/generated/azure_mgmt_netapp/models/capacity_pool_list.rb'
    autoload :ReplicationStatus,                                  '2020-02-01/generated/azure_mgmt_netapp/models/replication_status.rb'
    autoload :OperationDisplay,                                   '2020-02-01/generated/azure_mgmt_netapp/models/operation_display.rb'
    autoload :VolumePatchPropertiesExportPolicy,                  '2020-02-01/generated/azure_mgmt_netapp/models/volume_patch_properties_export_policy.rb'
    autoload :Operation,                                          '2020-02-01/generated/azure_mgmt_netapp/models/operation.rb'
    autoload :VolumePatch,                                        '2020-02-01/generated/azure_mgmt_netapp/models/volume_patch.rb'
    autoload :ActiveDirectory,                                    '2020-02-01/generated/azure_mgmt_netapp/models/active_directory.rb'
    autoload :MountTarget,                                        '2020-02-01/generated/azure_mgmt_netapp/models/mount_target.rb'
    autoload :CapacityPool,                                       '2020-02-01/generated/azure_mgmt_netapp/models/capacity_pool.rb'
    autoload :Snapshot,                                           '2020-02-01/generated/azure_mgmt_netapp/models/snapshot.rb'
    autoload :MetricSpecification,                                '2020-02-01/generated/azure_mgmt_netapp/models/metric_specification.rb'
    autoload :SnapshotsList,                                      '2020-02-01/generated/azure_mgmt_netapp/models/snapshots_list.rb'
    autoload :NetAppAccountList,                                  '2020-02-01/generated/azure_mgmt_netapp/models/net_app_account_list.rb'
    autoload :VolumeRevert,                                       '2020-02-01/generated/azure_mgmt_netapp/models/volume_revert.rb'
    autoload :ResourceNameAvailability,                           '2020-02-01/generated/azure_mgmt_netapp/models/resource_name_availability.rb'
    autoload :AuthorizeRequest,                                   '2020-02-01/generated/azure_mgmt_netapp/models/authorize_request.rb'
    autoload :CapacityPoolPatch,                                  '2020-02-01/generated/azure_mgmt_netapp/models/capacity_pool_patch.rb'
    autoload :InAvailabilityReasonType,                           '2020-02-01/generated/azure_mgmt_netapp/models/in_availability_reason_type.rb'
    autoload :CheckNameResourceTypes,                             '2020-02-01/generated/azure_mgmt_netapp/models/check_name_resource_types.rb'
    autoload :ServiceLevel,                                       '2020-02-01/generated/azure_mgmt_netapp/models/service_level.rb'
    autoload :EndpointType,                                       '2020-02-01/generated/azure_mgmt_netapp/models/endpoint_type.rb'
    autoload :ReplicationSchedule,                                '2020-02-01/generated/azure_mgmt_netapp/models/replication_schedule.rb'
    autoload :RelationshipStatus,                                 '2020-02-01/generated/azure_mgmt_netapp/models/relationship_status.rb'
    autoload :MirrorState,                                        '2020-02-01/generated/azure_mgmt_netapp/models/mirror_state.rb'
  end
end