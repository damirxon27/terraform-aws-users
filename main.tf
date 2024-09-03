 resource "aws_iam_group" "group" {
       name = var.group_name
     }

     resource "aws_iam_user" "user" {
  for_each = var.users
  name     = each.key
  path     = "/"
}


     resource "aws_iam_user_group_membership" "user_group_membership" {
       for_each = var.users

       user = aws_iam_user.user[each.key].name
       groups = [aws_iam_group.group.name]
     }
     
     module "iam_users" {
     source     = "./terraform-aws-users"
     group_name = "example-group"
     users = {
       "user1" = "Admin"
       "user2" = "Developer"
     }
   }

