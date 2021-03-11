locals {
  # CAF landing zones can retrieve remote objects from a different landing zone and the
  # combined_objects will merge it with the local objects
  combined_objects_aks_clusters                      = merge(tomap({ (local.client_config.landingzone_key) = module.aks_clusters }), try(var.remote_objects.aks_clusters, {}))
  combined_objects_app_service_environments          = merge(tomap({ (local.client_config.landingzone_key) = module.app_service_environments }), try(var.remote_objects.app_service_environments, {}))
  combined_objects_app_service_plans                 = merge(tomap({ (local.client_config.landingzone_key) = module.app_service_plans }), try(var.remote_objects.app_service_plans, {}))
  combined_objects_app_services                      = merge(tomap({ (local.client_config.landingzone_key) = module.app_services }), try(var.remote_objects.app_services, {}))
  combined_objects_application_security_groups       = merge(tomap({ (local.client_config.landingzone_key) = module.application_security_groups }), try(var.remote_objects.application_security_groups, {}))
  combined_objects_availability_sets                 = merge(tomap({ (local.client_config.landingzone_key) = module.availability_sets }), try(var.remote_objects.availability_sets, {}))
  combined_objects_azuread_applications              = merge(tomap({ (local.client_config.landingzone_key) = module.azuread_applications }), try(var.remote_objects.azuread_applications, {}))
  combined_objects_azuread_groups                    = merge(tomap({ (local.client_config.landingzone_key) = module.azuread_groups }), try(var.remote_objects.azuread_groups, {}))
  combined_objects_azuread_users                     = merge(tomap({ (local.client_config.landingzone_key) = module.azuread_users }), try(var.remote_objects.azuread_users, {}))
  combined_objects_azure_container_registries        = merge(tomap({ (local.client_config.landingzone_key) = module.container_registry }), try(var.remote_objects.container_registry, {}))
  combined_objects_azurerm_firewalls                 = merge(tomap({ (local.client_config.landingzone_key) = module.azurerm_firewalls }), try(var.remote_objects.azurerm_firewalls, {}))
  combined_objects_dns_zones                         = merge(tomap({ (local.client_config.landingzone_key) = module.dns_zones }), try(var.remote_objects.dns_zones, {}))
  combined_objects_event_hub_namespaces              = merge(tomap({ (local.client_config.landingzone_key) = module.event_hub_namespaces }), try(var.remote_objects.event_hub_namespaces, {}))
  combined_objects_front_door_waf_policies           = merge(tomap({ (local.client_config.landingzone_key) = module.front_door_waf_policies }), try(var.remote_objects.front_door_waf_policies, {}))
  combined_objects_keyvaults                         = merge(tomap({ (local.client_config.landingzone_key) = module.keyvaults }), try(var.remote_objects.keyvaults, {}))
  combined_objects_keyvault_keys                     = merge(tomap({ (local.client_config.landingzone_key) = module.keyvault_keys }), try(var.remote_objects.keyvault_keys, {}))
  combined_objects_keyvault_certificate_requests     = merge(tomap({ (local.client_config.landingzone_key) = module.keyvault_certificate_requests }), try(var.remote_objects.keyvault_certificate_requests, {}))
  combined_objects_managed_identities                = merge(tomap({ (local.client_config.landingzone_key) = module.managed_identities }), try(var.remote_objects.managed_identities, {}))
  combined_objects_mssql_databases                   = merge(tomap({ (local.client_config.landingzone_key) = module.mssql_databases }), try(var.remote_objects.mssql_databases, {}))
  combined_objects_mssql_elastic_pools               = merge(tomap({ (local.client_config.landingzone_key) = module.mssql_elastic_pools }), try(var.remote_objects.mssql_elastic_pools, {}))
  combined_objects_mssql_managed_databases           = merge(tomap({ (local.client_config.landingzone_key) = module.mssql_managed_databases }), try(var.remote_objects.mssql_managed_databases, {}))
  combined_objects_mssql_managed_instances           = merge(tomap({ (local.client_config.landingzone_key) = module.mssql_managed_instances }), try(var.remote_objects.mssql_managed_instances, {}))
  combined_objects_mssql_managed_instances_secondary = merge(tomap({ (local.client_config.landingzone_key) = module.mssql_managed_instances_secondary }), try(var.remote_objects.mssql_managed_instances_secondary, {}))
  combined_objects_mssql_servers                     = merge(tomap({ (local.client_config.landingzone_key) = module.mssql_servers }), try(var.remote_objects.mssql_servers, {}))
  combined_objects_mysql_servers                     = merge(tomap({ (local.client_config.landingzone_key) = module.mysql_servers }), try(var.remote_objects.mysql_servers, {}))
  combined_objects_networking                        = merge(tomap({ (local.client_config.landingzone_key) = module.networking }), try(var.remote_objects.vnets, {}))
  combined_objects_network_watchers                  = merge(tomap({ (local.client_config.landingzone_key) = module.network_watchers }), try(var.remote_objects.network_watchers, {}))
  combined_objects_postgresql_servers                = merge(tomap({ (local.client_config.landingzone_key) = module.postgresql_servers }), try(var.remote_objects.postgresql_servers, {}))
  combined_objects_private_dns                       = merge(tomap({ (local.client_config.landingzone_key) = module.private_dns }), try(var.remote_objects.private_dns, {}))
  combined_objects_proximity_placement_groups        = merge(tomap({ (local.client_config.landingzone_key) = module.proximity_placement_groups }), try(var.remote_objects.proximity_placement_groups, {}))
  combined_objects_public_ip_addresses               = merge(tomap({ (local.client_config.landingzone_key) = module.public_ip_addresses }), try(var.remote_objects.public_ip_addresses, {}))
  combined_objects_recovery_vaults                   = merge(tomap({ (local.client_config.landingzone_key) = module.recovery_vaults }), try(var.remote_objects.recovery_vaults, {}))
  combined_objects_resource_groups                   = merge(tomap({ (local.client_config.landingzone_key) = module.resource_groups }), try(var.remote_objects.resource_groups, {}))
  combined_objects_storage_accounts                  = merge(tomap({ (local.client_config.landingzone_key) = module.storage_accounts }), try(var.remote_objects.storage_accounts, {}))
  combined_objects_synapse_workspaces                = merge(tomap({ (local.client_config.landingzone_key) = module.synapse_workspaces }), try(var.remote_objects.synapse_workspaces, {}))
}