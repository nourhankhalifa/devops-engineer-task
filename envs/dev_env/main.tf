data "terraform_remote_state" "common_values" {
  backend = "local"
  config = {
    path = "../common_resources/terraform.tfstate"
  }
  
}

module "instance" {
    source = "../../modules/aws_instance_sg"
    subnet_ids = "${data.terraform_remote_state.common_values.outputs.aws_subnet_public_id}"
    instance_type = var.instance_type
    sg_name = var.sg_name
    vpc_id = "${data.terraform_remote_state.common_values.outputs.vpc_id}"
    instance_count = var.instance_count
}