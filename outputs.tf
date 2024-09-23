output "instance_id" {
  description = "The ID of the ec2 instance"
  value = aws_instance.this.id
}

output "public_ip" {
  description = "the public IP address of Ec2 instance"
  value = aws_instance.this.public_ip
}