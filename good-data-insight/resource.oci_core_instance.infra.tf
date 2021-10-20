resource "oci_core_instance" "infra_instance" {

  #Required
  availability_domain = var.instance_availability_domain
  compartment_id      = var.instance_compartment_id
  shape               = var.instance_shape

  #Optional
  agent_config {

    #Optional
    is_management_disabled = false
    is_monitoring_disabled = false
  }
  #availability_config {

  #Optional
  create_vnic_details {

    #Optional
    assign_public_ip = false
    display_name = var.instance_display_name
    hostname_label = var.instance_hostname_label
    nsg_ids = [oci_core_network_security_group.compute-nsg.id]
    subnet_id = oci_core_subnet.application_infra.id
  }
  display_name = var.instance_display_name

  #Optional
  launch_options {

    #Optional
    boot_volume_type = "PARAVIRTUALIZED"
    firmware         = "UEFI_64"
    network_type            = "PARAVIRTUALIZED"
    remote_data_volume_type = "PARAVIRTUALIZED"
  }
  shape_config {
    #Optional
    memory_in_gbs = var.instance_shape_config_memory_in_gbs
    ocpus         = var.instance_shape_config_ocpus
  }
  metadata = {
    ssh_authorized_keys = var.ssh_public_key
    #user_data = base64encode(file(var.custom_bootstrap_file_name))
  }
  source_details {
    #Required
    source_id   = var.image_oraclelinux_7[var.region]
    source_type = "image"

    #Optional
    boot_volume_size_in_gbs = var.instance_boot_volume_size
    #kms_key_id = oci_kms_key.test_key.id
  }
  preserve_boot_volume = false
}
