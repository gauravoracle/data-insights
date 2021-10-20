
resource oci_core_network_security_group adw-nsg {
  compartment_id = var.vcn_compartment_id
  #defined_tags = {
  #}
  display_name = "adw-nsg"
  #freeform_tags = {
  #}
  vcn_id = oci_core_vcn.application.id
}

resource oci_core_network_security_group compute-nsg {
  compartment_id = var.vcn_compartment_id
  #defined_tags = {
  #}
  display_name = "compute-nsg"
  #freeform_tags = {
  #}
  vcn_id = oci_core_vcn.application.id
}

resource oci_core_network_security_group_security_rule adw-nsg_network_security_group_security_rule_1 {
  #description = <<Optional value not found in discovery>>
  #destination = <<Optional value not found in discovery>>
  destination_type          = ""
  direction                 = "INGRESS"
  network_security_group_id = oci_core_network_security_group.adw-nsg.id
  protocol                  = "6"
  source                    = "10.0.0.0/16"
  source_type               = "CIDR_BLOCK"
  stateless                 = "false"
  tcp_options {
    destination_port_range {
      max = "1521"
      min = "1521"
    }
    #source_port_range = <<Optional value not found in discovery>>
  }
}

resource oci_core_network_security_group_security_rule compute-nsg_network_security_group_security_rule_1 {
  #description = <<Optional value not found in discovery>>
  #destination = <<Optional value not found in discovery>>
  destination_type          = ""
  direction                 = "INGRESS"
  network_security_group_id = oci_core_network_security_group.compute-nsg.id
  protocol                  = "6"
  source                    = "10.0.0.0/8"
  source_type               = "CIDR_BLOCK"
  stateless                 = "false"
  tcp_options {
    destination_port_range {
      max = "22"
      min = "22"
    }
    #source_port_range = <<Optional value not found in discovery>>
  }
}

resource oci_core_network_security_group_security_rule compute-nsg_network_security_group_security_rule_2 {
  #description = <<Optional value not found in discovery>>
  destination               = "0.0.0.0/0"
  destination_type          = "CIDR_BLOCK"
  direction                 = "EGRESS"
  network_security_group_id = oci_core_network_security_group.compute-nsg.id
  protocol                  = "6"
  #source = <<Optional value not found in discovery>>
  source_type = ""
  stateless   = "false"
  tcp_options {
    destination_port_range {
      max = "443"
      min = "443"
    }
    #source_port_range = <<Optional value not found in discovery>>
  }
}
