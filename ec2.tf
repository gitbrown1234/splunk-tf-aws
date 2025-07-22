#Ec2 Instance
provider "aws" {
  region = "ap-southeast-2"

}

#data "template_file" "user_data" {
#  template = file("../splunk.yaml")
#}

resource "aws_instance" "test_env_ec2" {
  count                       = var.counter
  ami                         = "ami-0cb3193ac3a1520ce"
  instance_type               = var.instance_type
  key_name                    = var.key_pair_name
  security_groups             = ["${aws_security_group.security.id}", "${aws_security_group.splunkweb.id}"]
  associate_public_ip_address = true
  user_data                   = "${file("splunk.yaml")}"
  subnet_id                   = aws_subnet.subnet.id

  root_block_device {
    volume_size = 20
  }

  tags = {
    Name = var.instance_tag[count.index]
  }
}