resource "oci_core_service_gateway" "application_service_gateway" {
  #Required
  compartment_id = var.vcn_compartment_id
  services {
    #Required
    service_id = data.oci_core_services.all_oci_services.services.0.id
  }
  vcn_id = oci_core_vcn.application.id

  #Optional
  #defined_tags = {"Operations.CostCenter"= "42"}
  display_name = "application-service-gateway"
  #freeform_tags = {"Department"= "Finance"}
  #route_table_id = oci_core_route_table.application_route_table.id
}
