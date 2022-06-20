# profile > User Details > User Information > OCID
variable "user_ocid" {default = "ocid1.user.oc1..."}
# profile > Tenancy details > Tenancy information > OCID
variable "tenancy_ocid" {default = "ocid1.tenancy.oc1..."}
# profile > User Details > "scroll down" > API Key > Add API Key > Download pem files
variable "private_key_path" {default = "./api_...pem"} 
# profile > User Details > "scroll down" > API Key > Add API Key > copy fingerprint
variable "fingerprint" {default = "a4:61:..."}

# compute > Instance > "scroll down" > Availability domain
variable "availability_domain" {default = "EBsw:AP-..-1"}  
# Manage regions > Region Identifier of Target resions
variable "region" {default = "ap-..."}
# serch Compartment > find your compartment OCID
variable "compartment_ocid" {default = "ocid1.compartment.oc1..."}
# Network > Virtual Cloud Network > create VCN > create Subnet > Subnet Information > OCID
variable "public_subnet_ocid" {default = "ocid1.subnet.oc1..."}

# os image OCID (https://docs.oracle.com/en-us/iaas/images/)
variable "image_name" {default = "ocid1.image.oc1..."}
# compute shape (https://docs.oracle.com/en-us/iaas/Content/Compute/References/computeshapes.htm)
variable "shape" {default = "VM.Standard..."} 
# make your ssh key (https://docs.oracle.com/en/learn/oci-database-management/generate-ssh-key/generate-ssh-keys.html#introduction)
variable "ssh_pub_key_path" {default = "./ssh-key_...key.pub"}
# ocpu counts
variable "ocpu" {default = 1}
# memory size
variable "mem" {default = 4}
# instance name
variable "display_name" {default = "name..."}
