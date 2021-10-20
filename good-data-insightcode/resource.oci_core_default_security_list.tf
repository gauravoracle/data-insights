resource "oci_core_default_security_list" "application" {
  manage_default_resource_id = oci_core_vcn.application.default_security_list_id
  ingress_security_rules {
    description = "Required to enable Path MTU Discovery to work, and non-OCI communication"
    icmp_options {
      code = "4"
      type = "3"
    }
    protocol    = "1"
    source      = "0.0.0.0/0"
    source_type = "CIDR_BLOCK"
    stateless   = "false"
  }
  ingress_security_rules {
    description = "Required to allow application within VCN to fail fast"
    icmp_options {
      type = "3"
    }
    protocol    = "1"
    source      = oci_core_vcn.application.cidr_block
    source_type = "CIDR_BLOCK"
    stateless   = "false"
  }
}
