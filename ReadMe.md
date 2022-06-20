# Create Instance by terraform

1. install Terraform
    ```
    install_on_ubuntu (for Ubuntu/Devian)
    install_on_mac.sh (for mac)
    install_on_centos.sh (for CentOS/RHEL)
    - Install shell scripts include initialization and plan.
    ```
    > You can download from https://www.terraform.io/downloads
2. Create OCI API Key on OCI profile page.
3. Set your OCI connectin information on vars.tf
4. Run "run.sh". It try to create instance maximum 1000times.
    > You can edit maximum tring on run.sh
