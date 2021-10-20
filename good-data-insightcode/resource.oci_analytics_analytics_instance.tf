resource "oci_analytics_analytics_instance" "analytics_instance" {
    #Required
    capacity {
        #Required
        capacity_type = var.analytics_instance_capacity_type
        capacity_value = var.analytics_instance_capacity_value
    }
    compartment_id = var.analytics_instance_compartment_id
    feature_set = var.analytics_instance_feature_set
    idcs_access_token = var.analytics_instance_idcs_access_token
    license_type = var.analytics_instance_license_type
    name = var.analytics_instance_name

    #Optional
    #defined_tags = {"Operations.CostCenter"= "42"}
    description = var.analytics_instance_description
    #email_notification = var.analytics_instance_email_notification
    #freeform_tags = {"Department"= "Finance"}
    network_endpoint_details {
        #Required
        network_endpoint_type = var.analytics_instance_network_endpoint
        #Optional
        #subnet_id = oci_core_subnet.test_subnet.id
        #vcn_id = oci_core_vcn.test_vcn.id
        #whitelisted_ips = var.analytics_instance_network_endpoint_details_whitelisted_ips
        #whitelisted_vcns {

            #Optional
            #id = var.analytics_instance_network_endpoint_details_whitelisted_vcns_id
            #whitelisted_ips = var.analytics_instance_network_endpoint_details_whitelisted_vcns_whitelisted_ips
        #}
    }
}
