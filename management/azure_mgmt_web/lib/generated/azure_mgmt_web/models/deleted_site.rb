# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # A deleted app.
    #
    class DeletedSite < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [DateTime] Time in UTC when the app was deleted.
      attr_accessor :deleted_timestamp

      # @return [String] Current state of the app.
      attr_accessor :state

      # @return [Array<String>] Hostnames associated with the app.
      attr_accessor :host_names

      # @return [String] Name of the repository site.
      attr_accessor :repository_site_name

      # @return [UsageState] State indicating whether the app has exceeded its
      # quota usage. Read-only. Possible values include: 'Normal', 'Exceeded'
      attr_accessor :usage_state

      # @return [Boolean] <code>true</code> if the app is enabled; otherwise,
      # <code>false</code>. Setting this value to false disables the app (takes
      # the app offline).
      attr_accessor :enabled

      # @return [Array<String>] Enabled hostnames for the app.Hostnames need to
      # be assigned (see HostNames) AND enabled. Otherwise,
      # the app is not served on those hostnames.
      attr_accessor :enabled_host_names

      # @return [SiteAvailabilityState] Management information availability
      # state for the app. Possible values include: 'Normal', 'Limited',
      # 'DisasterRecoveryMode'
      attr_accessor :availability_state

      # @return [Array<HostNameSslState>] Hostname SSL states are used to
      # manage the SSL bindings for app's hostnames.
      attr_accessor :host_name_ssl_states

      # @return [String] Resource ID of the associated App Service plan,
      # formatted as:
      # "/subscriptions/{subscriptionID}/resourceGroups/{groupName}/providers/Microsoft.Web/serverfarms/{appServicePlanName}".
      attr_accessor :server_farm_id

      # @return [Boolean] <code>true</code> if reserved; otherwise,
      # <code>false</code>. Default value: false .
      attr_accessor :reserved

      # @return [DateTime] Last time the app was modified, in UTC. Read-only.
      attr_accessor :last_modified_time_utc

      # @return [SiteConfig] Configuration of the app.
      attr_accessor :site_config

      # @return [Array<String>] Azure Traffic Manager hostnames associated with
      # the app. Read-only.
      attr_accessor :traffic_manager_host_names

      # @return [Boolean] Indicates whether app is deployed as a premium app.
      attr_accessor :premium_app_deployed

      # @return [Boolean] <code>true</code> to stop SCM (KUDU) site when the
      # app is stopped; otherwise, <code>false</code>. The default is
      # <code>false</code>. Default value: false .
      attr_accessor :scm_site_also_stopped

      # @return [String] Specifies which deployment slot this app will swap
      # into. Read-only.
      attr_accessor :target_swap_slot

      # @return [HostingEnvironmentProfile] App Service Environment to use for
      # the app.
      attr_accessor :hosting_environment_profile

      # @return [String] Micro services like apps, logic apps. Default value:
      # 'WebSites' .
      attr_accessor :micro_service

      # @return [String] Name of gateway app associated with the app.
      attr_accessor :gateway_site_name

      # @return [Boolean] <code>true</code> to enable client affinity;
      # <code>false</code> to stop sending session affinity cookies, which
      # route client requests in the same session to the same instance. Default
      # is <code>true</code>.
      attr_accessor :client_affinity_enabled

      # @return [Boolean] <code>true</code> to enable client certificate
      # authentication (TLS mutual authentication); otherwise,
      # <code>false</code>. Default is <code>false</code>.
      attr_accessor :client_cert_enabled

      # @return [Boolean] <code>true</code> to disable the public hostnames of
      # the app; otherwise, <code>false</code>.
      # If <code>true</code>, the app is only accessible via API management
      # process.
      attr_accessor :host_names_disabled

      # @return [String] List of IP addresses that the app uses for outbound
      # connections (e.g. database access). Read-only.
      attr_accessor :outbound_ip_addresses

      # @return [Integer] Size of the function container.
      attr_accessor :container_size

      # @return [Integer] Maximum allowed daily memory-time quota (applicable
      # on dynamic apps only).
      attr_accessor :daily_memory_time_quota

      # @return [DateTime] App suspended till in case memory-time quota is
      # exceeded.
      attr_accessor :suspended_till

      # @return [Integer] Maximum number of workers.
      # This only applies to Functions container.
      attr_accessor :max_number_of_workers

      # @return [CloningInfo] If specified during app creation, the app is
      # cloned from a source app.
      attr_accessor :cloning_info

      # @return [String] Name of the resource group the app belongs to.
      # Read-only.
      attr_accessor :resource_group

      # @return [Boolean] <code>true</code> if the app is a default container;
      # otherwise, <code>false</code>.
      attr_accessor :is_default_container

      # @return [String] Default hostname of the app. Read-only.
      attr_accessor :default_host_name

      # @return [SlotSwapStatus] Status of the last deployment slot swap
      # operation.
      attr_accessor :slot_swap_status


      #
      # Mapper for DeletedSite class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DeletedSite',
          type: {
            name: 'Composite',
            class_name: 'DeletedSite',
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
              kind: {
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
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
              tags: {
                required: false,
                serialized_name: 'tags',
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
              deleted_timestamp: {
                required: false,
                read_only: true,
                serialized_name: 'properties.deletedTimestamp',
                type: {
                  name: 'DateTime'
                }
              },
              state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.state',
                type: {
                  name: 'String'
                }
              },
              host_names: {
                required: false,
                read_only: true,
                serialized_name: 'properties.hostNames',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              repository_site_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.repositorySiteName',
                type: {
                  name: 'String'
                }
              },
              usage_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.usageState',
                type: {
                  name: 'Enum',
                  module: 'UsageState'
                }
              },
              enabled: {
                required: false,
                serialized_name: 'properties.enabled',
                type: {
                  name: 'Boolean'
                }
              },
              enabled_host_names: {
                required: false,
                read_only: true,
                serialized_name: 'properties.enabledHostNames',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              availability_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.availabilityState',
                type: {
                  name: 'Enum',
                  module: 'SiteAvailabilityState'
                }
              },
              host_name_ssl_states: {
                required: false,
                serialized_name: 'properties.hostNameSslStates',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'HostNameSslStateElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HostNameSslState'
                      }
                  }
                }
              },
              server_farm_id: {
                required: false,
                serialized_name: 'properties.serverFarmId',
                type: {
                  name: 'String'
                }
              },
              reserved: {
                required: false,
                serialized_name: 'properties.reserved',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              last_modified_time_utc: {
                required: false,
                read_only: true,
                serialized_name: 'properties.lastModifiedTimeUtc',
                type: {
                  name: 'DateTime'
                }
              },
              site_config: {
                required: false,
                serialized_name: 'properties.siteConfig',
                type: {
                  name: 'Composite',
                  class_name: 'SiteConfig'
                }
              },
              traffic_manager_host_names: {
                required: false,
                read_only: true,
                serialized_name: 'properties.trafficManagerHostNames',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              premium_app_deployed: {
                required: false,
                read_only: true,
                serialized_name: 'properties.premiumAppDeployed',
                type: {
                  name: 'Boolean'
                }
              },
              scm_site_also_stopped: {
                required: false,
                serialized_name: 'properties.scmSiteAlsoStopped',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              target_swap_slot: {
                required: false,
                read_only: true,
                serialized_name: 'properties.targetSwapSlot',
                type: {
                  name: 'String'
                }
              },
              hosting_environment_profile: {
                required: false,
                serialized_name: 'properties.hostingEnvironmentProfile',
                type: {
                  name: 'Composite',
                  class_name: 'HostingEnvironmentProfile'
                }
              },
              micro_service: {
                required: false,
                serialized_name: 'properties.microService',
                default_value: 'WebSites',
                type: {
                  name: 'String'
                }
              },
              gateway_site_name: {
                required: false,
                serialized_name: 'properties.gatewaySiteName',
                type: {
                  name: 'String'
                }
              },
              client_affinity_enabled: {
                required: false,
                serialized_name: 'properties.clientAffinityEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              client_cert_enabled: {
                required: false,
                serialized_name: 'properties.clientCertEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              host_names_disabled: {
                required: false,
                serialized_name: 'properties.hostNamesDisabled',
                type: {
                  name: 'Boolean'
                }
              },
              outbound_ip_addresses: {
                required: false,
                read_only: true,
                serialized_name: 'properties.outboundIpAddresses',
                type: {
                  name: 'String'
                }
              },
              container_size: {
                required: false,
                serialized_name: 'properties.containerSize',
                type: {
                  name: 'Number'
                }
              },
              daily_memory_time_quota: {
                required: false,
                serialized_name: 'properties.dailyMemoryTimeQuota',
                type: {
                  name: 'Number'
                }
              },
              suspended_till: {
                required: false,
                read_only: true,
                serialized_name: 'properties.suspendedTill',
                type: {
                  name: 'DateTime'
                }
              },
              max_number_of_workers: {
                required: false,
                read_only: true,
                serialized_name: 'properties.maxNumberOfWorkers',
                type: {
                  name: 'Number'
                }
              },
              cloning_info: {
                required: false,
                serialized_name: 'properties.cloningInfo',
                type: {
                  name: 'Composite',
                  class_name: 'CloningInfo'
                }
              },
              resource_group: {
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceGroup',
                type: {
                  name: 'String'
                }
              },
              is_default_container: {
                required: false,
                read_only: true,
                serialized_name: 'properties.isDefaultContainer',
                type: {
                  name: 'Boolean'
                }
              },
              default_host_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.defaultHostName',
                type: {
                  name: 'String'
                }
              },
              slot_swap_status: {
                required: false,
                read_only: true,
                serialized_name: 'properties.slotSwapStatus',
                type: {
                  name: 'Composite',
                  class_name: 'SlotSwapStatus'
                }
              }
            }
          }
        }
      end
    end
  end
end
