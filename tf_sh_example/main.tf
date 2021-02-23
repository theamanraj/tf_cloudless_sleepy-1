# Runs a shell script

resource "null_resource" "sleep" {
  triggers = {
	uuid = "${uuid()}"
  }

  provisioner "local-exec" {
    apikey = var.api_key
    command = "./ibmcloudcli.sh apikey"
  }
 }
