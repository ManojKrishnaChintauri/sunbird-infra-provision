remote_state {
  backend = "s3"
  config = {
    bucket  = get_env("AWS_TERRAFORM_BACKEND_BUCKET_NAME")
    region  = get_env("AWS_TERRAFORM_BACKEND_BUCKET_REGION")
    key     = "${path_relative_to_include()}/${get_env("TF_ENV")}.terraform.tfstate"
    encrypt = true
  }
}