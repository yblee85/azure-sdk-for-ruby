# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_06_01_preview
  module Models
    #
    # Cosmos DB indexing policy
    #
    class IndexingPolicy

      include MsRestAzure

      # @return [Boolean] Indicates if the indexing policy is automatic
      attr_accessor :automatic

      # @return [IndexingMode] Indicates the indexing mode. Possible values
      # include: 'Consistent', 'Lazy', 'None'. Default value: 'Consistent' .
      attr_accessor :indexing_mode

      # @return [Array<IncludedPath>] List of paths to include in the indexing
      attr_accessor :included_paths

      # @return [Array<ExcludedPath>] List of paths to exclude from indexing
      attr_accessor :excluded_paths

      # @return [Array<Array<CompositePath>>] List of composite path list
      attr_accessor :composite_indexes

      # @return [Array<SpatialSpec>] List of spatial specifics
      attr_accessor :spatial_indexes


      #
      # Mapper for IndexingPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IndexingPolicy',
          type: {
            name: 'Composite',
            class_name: 'IndexingPolicy',
            model_properties: {
              automatic: {
                client_side_validation: true,
                required: false,
                serialized_name: 'automatic',
                type: {
                  name: 'Boolean'
                }
              },
              indexing_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'indexingMode',
                default_value: 'Consistent',
                type: {
                  name: 'String'
                }
              },
              included_paths: {
                client_side_validation: true,
                required: false,
                serialized_name: 'includedPaths',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'IncludedPathElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'IncludedPath'
                      }
                  }
                }
              },
              excluded_paths: {
                client_side_validation: true,
                required: false,
                serialized_name: 'excludedPaths',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ExcludedPathElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ExcludedPath'
                      }
                  }
                }
              },
              composite_indexes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'compositeIndexes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ArrayElementType',
                      type: {
                        name: 'Sequence',
                        element: {
                            client_side_validation: true,
                            required: false,
                            serialized_name: 'CompositePathElementType',
                            type: {
                              name: 'Composite',
                              class_name: 'CompositePath'
                            }
                        }
                      }
                  }
                }
              },
              spatial_indexes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'spatialIndexes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SpatialSpecElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SpatialSpec'
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