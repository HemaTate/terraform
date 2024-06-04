provider "aws" {
  region = "us-east-1"
}

module "ec2" {
    source = "./module/ec2"
    this_aws_instance_ami = "ami-00beae93a2d981137"
    this_aws_instance_type = "t2.micro"
    //this_aws_instance_subnet = module.aws_vpc.aws_subnet_this_public
    this_aws_instance_key_name = "mass"
    this_aws_instance_availability_zone = "us-east-1"
    this_aws_instance_volume_size = 8
    this_aws_instance_count = 1
    this_aws_instance_user_data_base64 = true
    this_aws_instance_tags =  "Terra_hema_instance"
    this_aws_instance_subnet = module.vpc.subnet_id
    this_sg_vpc_id = VPC: vpc-0a5cd631f6e5febea
    } 
