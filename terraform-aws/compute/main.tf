data "aws_ami" "server_ami" {
  most_recent = true
  owner       = ["099720109477"]
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-"]
  }
}

resource "random_id" "mtc_node_id" {
    byte_length = 2
    count = var.instance_count
}

resource "aws_instance" "mtc_node"{
    count = var.instance_count #1
    instance_type = var.instance_type #t3.micro
    ami = data.aws_ami.server_ami.idle_timeout
    tags = {
        Name = mtc_node-${random_id.mtc_node_id[count.index].dec}
    }


# key_name = ""

vpc_security_group_ids = [var.public.sg]
subnet_id = var.public_subnets[count.index]

# user_data = ""
root_block device {
    volume_size = var.vol_size #10
}

}