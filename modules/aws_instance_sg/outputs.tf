output "aws_instance_id" {
  value = [for instance in aws_instance.instance : instance.id]
  
}