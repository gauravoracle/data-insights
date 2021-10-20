resource "oci_core_route_table" "application_public" {
  #Required
  compartment_id = var.vcn_compartment_id
  vcn_id         = oci_core_vcn.application.id

  #Optional
  #defined_tags = {"Operations.CostCenter"= "42"}
  display_name = "application-public-route-table"
  #freeform_tags = {"Department"= "Finance"}
  route_rules {
    #Required
    network_entity_id = oci_core_internet_gateway.application_internet_gateway.id

    #Optional
    #cidr_block = var.route_table_route_rules_cidr_block
    #description = var.route_table_route_rules_description
    destination      = "0.0.0.0/0"
    destination_type = "CIDR_BLOCK"
  }
}
