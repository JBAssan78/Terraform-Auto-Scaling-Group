 resource "aws_launch_template" "app1" {
 name = "app1_template"
 description = "launch template for app1"
 image_id = "ami-025ca978d4c1d9825"
 instance_type = "t3.micro"
 vpc_security_group_ids = [aws_security_group.app1.id]


 }


# arguments to add
# 1. name
# 2. description
# 3. ani 
# 4. instance type
# 5. key*
# 6. Security Group
# 7. public IP (True/false)
# 8. user data