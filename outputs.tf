output "instance_id" {
	description	= "Showcase EC2 instance ID"
	value		= aws_instance.ec2_showcase2.public_ip
	}

output "instance_public_ip" {
	description 	= "Showcase public ip"
	value		= aws_instance.ec2_showcase2.public_ip
	}
