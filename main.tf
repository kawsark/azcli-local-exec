resource "null_resource" "azcli" {
  provisioner "local-exec" {
    command = <<-EOT
    env
    pwd
    ls -la ./
    ls -laR ../
    echo "ARM CLIENT ID is: $${ARM_CLIENT_ID}"
    #az login --service-principal -u $${ARM_CLIENT_ID} -p $${ARM_CLIENT_SECRET} --tenant $${ARM_TENANT_ID}
    #az account set --subscription="$${ARM_SUBSCRIPTION_ID}"
    #az vm list-sizes --location eastus
    #az storage account list
EOT
  }
}
