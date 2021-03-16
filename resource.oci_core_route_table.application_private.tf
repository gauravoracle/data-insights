resource "oci_core_route_table" "application_private" {
  #Required
  compartment_id = var.vcn_compartment_id
  vcn_id         = oci_core_vcn.application.id

  #Optional
  #defined_tags = {"Operations.CostCenter"= "42"}
  display_name = "application-private-route-table"
  #freeform_tags = {"Department"= "Finance"}
  route_rules {
    #Required
    network_entity_id = oci_core_nat_gateway.application_nat_gateway.id

    #Optional
    #cidr_block = var.route_table_route_rules_cidr_block
    #description = var.route_table_route_rules_description
    destination      = "0.0.0.0/0"
    destination_type = "CIDR_BLOCK"
  }
  route_rules {
    #Required
    network_entity_id = oci_core_service_gateway.application_service_gateway.id

    #Optional
    #cidr_block = var.route_table_route_rules_cidr_block
    #description = var.route_table_route_rules_description
    destination      = lookup(data.oci_core_services.all_oci_services.services[0], "cidr_block")
    destination_type = "SERVICE_CIDR_BLOCK"
  }


}
