output "public-ip-for-compute-instance" {
  value = oci_core_instance.new_instance.public_ip
}

output "instance-name" {
  value = oci_core_instance.new_instance.display_name
}

output "instance-OCID" {
  value = oci_core_instance.new_instance.id
}

output "instance-region" {
  value = oci_core_instance.new_instance.region
}

output "instance-shape" {
  value = oci_core_instance.new_instance.shape
}

output "instance-state" {
  value = oci_core_instance.new_instance.state
}

output "instance-OCPUs" {
  value = oci_core_instance.new_instance.shape_config[0].ocpus
}

output "instance-memory-in-GBs" {
  value = oci_core_instance.new_instance.shape_config[0].memory_in_gbs
}

output "time-created" {
  value = oci_core_instance.new_instance.time_created
}