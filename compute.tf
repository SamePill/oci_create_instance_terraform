
resource "oci_core_instance" "new_instance" {
    # Required
    availability_domain = "${var.availability_domain}"
    compartment_id = "${var.tenancy_ocid}"
    shape = "${var.shape}"
    source_details {
        source_id = "${var.image_name}"  
        source_type = "image"
    }
    # Optional
    display_name = "${var.display_name}"
    shape_config {
        #Optional
        memory_in_gbs = "${var.mem}" 
        ocpus = "${var.ocpu}" 
    }        
    instance_options {are_legacy_imds_endpoints_disabled = false}
    availability_config {recovery_action = "RESTORE_INSTANCE"}
    preserve_boot_volume = false
    create_vnic_details {
        subnet_id = "${var.public_subnet_ocid}"
        assign_public_ip = true
        assign_private_dns_record = true
    }
    metadata = {
        ssh_authorized_keys = file(var.ssh_pub_key_path)
    } 
    agent_config {
        is_monitoring_disabled = false
        is_management_disabled = false
        plugins_config {
            desired_state = "DISABLED"
            name = "Vulnerability Scanning"
        }        
        plugins_config {
            desired_state = "DISABLED"
            name = "Oracle Autonomous Linux"
        }
        plugins_config {
            desired_state  = "ENABLED"
            name = "OS Management Service Agent"             
        }
        plugins_config {
            desired_state = "DISABLED"
            name = "Compute Instance Run Command"
        }
        plugins_config {
            desired_state = "ENABLED"
            name = "Compute Instance Monitoring"
        }
        plugins_config {
            desired_state = "DISABLED"
            name = "Block Volume Management"
        }
        plugins_config {
            desired_state = "DISABLED"
            name = "Bastion"
        }
    } 
}