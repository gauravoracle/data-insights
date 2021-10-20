resource "oci_core_subnet" "application_db" {
  #Required
  cidr_block     = var.subnet_application_db_cidr
  compartment_id = var.vcn_compartment_id
  vcn_id         = oci_core_vcn.application.id

  #Optional
  #dhcp_options_id = oci_core_dhcp_options.test_dhcp_options.id
  display_name               = "database-subnet"
  dns_label                  = random_string.subnet_application_db_dns_label.result
  prohibit_public_ip_on_vnic = true
  #route_table_id = oci_core_route_table.test_route_table.id
  #security_list_ids = va
}
