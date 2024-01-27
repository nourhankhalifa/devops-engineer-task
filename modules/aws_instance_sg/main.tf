resource "aws_instance" "instance" {
    count = var.instance_count
    ami = var.ami
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.security_group.id]
    subnet_id     = var.subnet_ids
    associate_public_ip_address = var.associate_public_ip_address

    user_data = var.user_data
    user_data_replace_on_change = var.user_data_replace_on_change
}

resource "aws_security_group" "security_group" {
    name = var.sg_name
    vpc_id = var.vpc_id
    ingress {
        from_port = var.sg_from_port
        to_port   = var.sg_to_port
        protocol = var.sg_protocol
        cidr_blocks = var.sg_cidr_block
    }
}

