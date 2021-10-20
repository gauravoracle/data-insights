data "oci_core_services" "all_oci_services" {
  filter {
    name   = "description"
    values = ["All .* Services In Oracle Services Network"]
    regex  = true
  }
}
