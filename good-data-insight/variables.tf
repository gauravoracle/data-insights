# Global
variable "region" {
  type = string
}

variable "tenancy_ocid" {
  type = string
}

variable "compartment_ocid" {
  type = string
}

# Network
variable "vcn_compartment_id" {
  type = string
}

variable "vcn_application_cidr_blocks" {
  type = list(string)
  default = ["10.0.0.0/16"]
}

variable "subnet_application_lb_pub_cidr" {
  type = string
  default = "10.0.0.0/24"
}

variable "subnet_application_app_cidr" {
  type = string
  default = "10.0.1.0/24"
}

variable "subnet_application_db_cidr" {
  type = string
  default = "10.0.2.0/24"
}

variable "subnet_application_infra_cidr" {
  type = string
  default = "10.0.3.0/24"
}


#Compute

variable "instance_compartment_id" {
  type = string
}

variable "instance_availability_domain" {
  type = string
}

variable "instance_shape" {
  type = string
}

variable "instance_hostname_label" {
  type = string
}

variable "instance_display_name" {
  type = string
}

variable "instance_boot_volume_size" {
  type = number
}

variable "ssh_public_key" {
  type = string
}
variable "image_oraclelinux_7" {
  # https://docs.cloud.oracle.com/en-us/iaas/images/image/229363c7-b01f-4b71-8c19-0661df7e16b5/
  # Oracle-Linux-7.8-2020.07.28-0
  default = {
    ap-chuncheon-1   = "ocid1.image.oc1.ap-chuncheon-1.aaaaaaaaww7iqofqcvpqxdeepddchw2t2p6urg462bcuevnicrzliusscp4a"
    ap-hyderabad-1   = "ocid1.image.oc1.ap-hyderabad-1.aaaaaaaaxqkanohk5nmrejimyp7fc5huacsglu54phhhgzs4sjuyzumdd5xq"
    ap-melbourne-1   = "ocid1.image.oc1.ap-melbourne-1.aaaaaaaavryus2l726gcwa7i5htp43r4wkyzxwvsorieg77geavgat75rfla"
    ap-mumbai-1      = "ocid1.image.oc1.ap-mumbai-1.aaaaaaaa7gtckjtrponxrvklftqsdz4r7xyh52xhhf5iso3usymh3inmg3fa"
    ap-osaka-1       = "ocid1.image.oc1.ap-osaka-1.aaaaaaaavzh4sw4gw2lliqw7sod52dqegmeplv64rnut5xvwkx3rue7425eq"
    ap-seoul-1       = "ocid1.image.oc1.ap-seoul-1.aaaaaaaambznhuxe3nw75c7r3ivucmkqcxpd7i4zkxixkwbntzbvcrphkkqq"
    ap-sydney-1      = "ocid1.image.oc1.ap-sydney-1.aaaaaaaalnehg5nzezkueoq3cwo54zy7niaxoutpcwihnjgv4hccpczlrxpq"
    ap-tokyo-1       = "ocid1.image.oc1.ap-tokyo-1.aaaaaaaaj3mfguqxhzfxv3ajhd5r3unryam5ty3zl3cgfck6kt4fcbnd6gpa"
    ca-montreal-1    = "ocid1.image.oc1.ca-montreal-1.aaaaaaaaxr4ev3khtpybvrcmw6cmdigg5ylrf34mpzi6vtleh4ebphhczdpq"
    ca-toronto-1     = "ocid1.image.oc1.ca-toronto-1.aaaaaaaaemkdkubr2znyndgbrhmgn4e2quojqu3maurpf2whxqp3p7bl5spq"
    eu-amsterdam-1   = "ocid1.image.oc1.eu-amsterdam-1.aaaaaaaamrux6spoj3xz4dxfr5qeohieguay5r25sjkuwtponeibkx3zhk2q"
    eu-frankfurt-1   = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaahxue6crkdeevk75bzw63cmhh3c4uyqddcwov7mwlv7na4lkz7zla"
    eu-zurich-1      = "ocid1.image.oc1.eu-zurich-1.aaaaaaaaf53yagb2jpcye4bippimv77synq7ud5jvruz7tzltfyueydoaaba"
    me-jeddah-1      = "ocid1.image.oc1.me-jeddah-1.aaaaaaaakliwnlwkikvhdlbaukxaivtbq6f57gn26afkie7npe4fn23drprq"
    sa-saopaulo-1    = "ocid1.image.oc1.sa-saopaulo-1.aaaaaaaaaytcynnmhb4dchwl33jdbogtix3yniig23xqe5afov4phatczbsq"
    uk-gov-london-1  = "ocid1.image.oc4.uk-gov-london-1.aaaaaaaabfgc3drgk7huewta65a5t5u425jhuyhraxc64wcmnn3xbx4yes3a"
    uk-london-1      = "ocid1.image.oc1.uk-london-1.aaaaaaaad3ykcml7uxbkl7oqxbnydtqslgg6oyz35ju5szz4lwttjxi36yua"
    us-ashburn-1     = "ocid1.image.oc1.iad.aaaaaaaakcggae4tjdluuizz2if7zivhk2ch47yiqyrrhr7qgygchu7ddyla"
    us-gov-ashburn-1 = "ocid1.image.oc3.us-gov-ashburn-1.aaaaaaaakxfbshidf53f4clz2n5mabosbfih7mevgqisbxr6h6xbrlq7zikq"
    us-gov-chicago-1 = "ocid1.image.oc3.us-gov-chicago-1.aaaaaaaaazcg4c7o5acnswdy4kytkldavr7hnauv76o24ubvbp43wjemyvqq"
    us-gov-phoenix-1 = "ocid1.image.oc3.us-gov-phoenix-1.aaaaaaaanm7pmfdnu4qr4a2bkkx6ofod376x7rnvu4pln46qbkdpw4l23e6a"
    us-langley-1     = "ocid1.image.oc2.us-langley-1.aaaaaaaajaq7kmorgojrfrry74iu536mh5x3yy7atnvtovlkbnj2352e3koa"
    us-luke-1        = "ocid1.image.oc2.us-luke-1.aaaaaaaaxa7sfwzig7kqothzvjjpuwhr6ppr4gvha3fopgly6wb6dg6nk4wq"
    us-phoenix-1     = "ocid1.image.oc1.phx.aaaaaaaa75jewsxs5j5lwtucurynvmf6aomgkm5ty33c23vb6ouxxoj2tu3q"
    us-sanjose-1     = "ocid1.image.oc1.us-sanjose-1.aaaaaaaanwz2yn524lxipjoupop7cjcmy5r4znohz2gbjcxmgzxf4xjs7q3a"
  }
  type = map(any)
}

variable "instance_shape_config_memory_in_gbs" {
  type = number
}

variable "instance_shape_config_ocpus" {
  type = number
}

#Database
variable "autonomous_database_compartment_id" {
  type = string
}

variable "autonomous_database_cpu_core_count" {
  type = number
}

variable "autonomous_database_db_name" {
  type = string
}

variable "autonomous_database_admin_password" {
  type = string
}

variable "autonomous_database_data_storage_size_in_tbs" {
  type = number
}

variable "autonomous_database_db_version" {
  type = string
}

variable "autonomous_database_display_name" {
  type = string
}

variable "autonomous_database_db_workload" {
  type = string
  default = "DW"
}

variable "autonomous_database_license_model" {
  type = string
  default = "LICENSE_INCLUDED"
}

variable "autonomous_database_data_safe_status" {
  type = string
  default = "NOT_REGISTERED"
}

#Analytics
variable "analytics_instance_capacity_type" {
  type = string
  default = "OLPU_COUNT"
}

variable "analytics_instance_capacity_value" {
  type = string
}

variable "analytics_instance_compartment_id" {
  type = string
}

variable "analytics_instance_feature_set" {
  type = string
  default = "ENTERPRISE_ANALYTICS"
}

variable "analytics_instance_idcs_access_token" {
  type = string
}

variable "analytics_instance_license_type" {
  type = string
  default = "LICENSE_INCLUDED"
}

variable "analytics_instance_name" {
  type = string
}

variable "analytics_instance_description" {
  type = string
}

variable "analytics_instance_network_endpoint" {
  type = string
  default = "PUBLIC"
}
