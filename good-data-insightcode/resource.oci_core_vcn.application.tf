resource "oci_core_vcn" "application" {
  #Required
  compartment_id = var.vcn_compartment_id

  #Optional
  cidr_blocks  = var.vcn_application_cidr_blocks
  display_name = "application-vcn"
  dns_label    = random_string.vcn_application_dns_label.result
}
