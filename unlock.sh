rm -f .terraform.lock.hcl
rm -f .terraform.tfstate.lock.info
rm -f .unlock.sh.swp
rm -f terraform.tfstate
terraform init
terraform plan
