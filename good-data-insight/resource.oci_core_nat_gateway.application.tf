resource "oci_core_nat_gateway" "application_nat_gateway" {
  #Required
  compartment_id = var.vcn_compartment_id
  vcn_id         = oci_core_vcn.application.id

  #Optional
  block_traffic = false
  #defined_tags = {"Operations.CostCenter"= "42"}
  display_name = "application-nat-gateway"
  #freeform_tags = {"Department"= "Finance"}
  #public_ip_id = oci_core_public_ip.application_nat_public_ip.id
}
