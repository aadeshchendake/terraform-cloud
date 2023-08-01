resource "null_resource" "terraform_cloud_test" {
  count = 5
  provisioner "local-exec" {
    command = "echo 'Test ${count.index}'"
  }
}
  
