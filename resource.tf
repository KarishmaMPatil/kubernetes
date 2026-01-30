resource "aws_instance" "webserver" {
    ami                    =           "ami-019715e0d74f695be"
    instance_type          =           "t3.micro"
    vpc_security_group_ids =           ["sg-07474c841ef9cd4f6"]
    key_name               =           "ubuntu"

    tags = {
        Name    = "webserver-instance"
        purpose = "learning-terraform"
    }
    user_data = <<-EOF
                #!/bin/bash
                sudo -i 
                apt install apache2 -y
                systemctl start apache2
                EOF

    
}