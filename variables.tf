#-----------------
#General Variables
#-----------------
variable "availability_zone" {
  description = "Availability Zones for the Subnet"
  type        = string
  default = "ap-southeast-2a"
}

variable "aws_region"{
  description = "region"
  type = string
  default = "ap-southeast-2"
}

#------------------
#Key Pair Variables
#------------------
variable "key_pair_name" {
  description = "Key Pair for ssh access to instance"
  type        = string
  default = "keypair"
}

variable "file_name" {
  description = "Name of the key pair file"
  type        = string
  default = "keypair"
}

#------------------
#Instance Variables
#------------------
variable "instance_type" {
  description = "Instance Type"
  type        = string
  default = "t2.micro"
}
variable "instance_tag" {
  description = "Tag(s) for Instance(s)"
  type        = list(string)
  default = ["CM", "Index01", "Index02"]
}
variable "ec2_instance_name" {
  type        = string
  description = "The name to give the instance."
  default = "test"
}

variable "counter" {
  description = "Number of instances to launch"
  type        = number
  default = 2
}

#----------------
#Subnet Variables
#----------------
variable "cidr_block" {
  description = "CIDR Block"
  type        = string
  default = "192.168.1.0/24"
}