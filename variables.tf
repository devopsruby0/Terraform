variable "ami" {
  description = "ami value"
  type = string
}

variable "instance_type" {
  description = "type of instance to be launched"
  type = string
  default = "t2.micro"
}

variable "key_name" {
  description = "key pair to use for ssh access"
  type = string
}

variable "instance_name" {

  description = "name of Ec2 Instance"
  type = string
}