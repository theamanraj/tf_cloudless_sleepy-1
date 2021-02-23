# Runs a shell script
variable "apikey" {
	}
resource "null_resource" "sleep" {
  triggers = {
	uuid = "${uuid()}"
  }

  provisioner "local-exec" {
    command = "./ibmcloudcli.sh apikey"
  }
 }
