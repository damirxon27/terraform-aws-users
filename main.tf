 resource "aws_iam_group" "group" {
       name = var.group_name
     }

     resource "aws_iam_user" "user" {
       for_each = var.users

       name = each.key
       force_destroy = true

       tags = {
         Role = each.value
       }
     }

     resource "aws_iam_user_group_membership" "user_group_membership" {
       for_each = var.users

       user = aws_iam_user.user[each.key].name
       groups = [aws_iam_group.group.name]
     }
     
