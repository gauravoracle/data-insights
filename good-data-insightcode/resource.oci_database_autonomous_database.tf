resource "oci_database_autonomous_database" "data_insights_autonomous_database" {
  #Required
  compartment_id = var.autonomous_database_compartment_id
  cpu_core_count = var.autonomous_database_cpu_core_count
  db_name        = var.autonomous_database_db_name

  #Optional
  admin_password = var.autonomous_database_admin_password
  #are_primary_whitelisted_ips_used = var.autonomous_database_are_primary_whitelisted_ips_used
  #autonomous_container_database_id = oci_database_autonomous_container_database.test_autonomous_container_database.id
  #autonomous_database_backup_id = oci_database_autonomous_database_backup.test_autonomous_database_backup.id
  #autonomous_database_id = oci_database_autonomous_database.test_autonomous_database.id
  #clone_type = var.autonomous_database_clone_type
  data_safe_status = var.autonomous_database_data_safe_status
  data_storage_size_in_tbs = var.autonomous_database_data_storage_size_in_tbs
  db_version               = var.autonomous_database_db_version
  db_workload              = var.autonomous_database_db_workload
  #defined_tags = var.autonomous_database_defined_tags
  display_name = var.autonomous_database_display_name
  #freeform_tags = {"Department"= "Finance"}
  #is_access_control_enabled = var.autonomous_database_is_access_control_enabled
  is_auto_scaling_enabled = false
  is_data_guard_enabled   = false
  is_dedicated            = false
  is_free_tier            = false
  #is_preview_version_with_service_terms_accepted = var.autonomous_database_is_preview_version_with_service_terms_accepted
  license_model = var.autonomous_database_license_model
  #nsg_ids = [oci_core_network_security_group.adw-nsg.id]
  #private_endpoint_label = var.autonomous_database_private_endpoint_label
  #refreshable_mode = var.autonomous_database_refreshable_mode
  #source = var.autonomous_database_source
  #source_id = oci_database_source.test_source.id
  #standby_whitelisted_ips = var.autonomous_database_standby_whitelisted_ips
  #subnet_id = oci_core_subnet.application_db.id
  #timestamp = var.autonomous_database_timestamp
  #whitelisted_ips = var.autonomous_database_whitelisted_ips
}
