resource "oci_core_internet_gateway" "application_internet_gateway" {
  #Required
  compartment_id = var.vcn_compartment_id
  vcn_id         = oci_core_vcn.application.id

  #Optional
  enabled = "true"
  #defined_tags = {"Operations.CostCenter"= "42"}
  display_name = "application-internet-gateway"
  #freeform_tags = {"Department"= "Finance"}
}
