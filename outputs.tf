  output "user_names" {
       value = aws_iam_user.user[*].name
     }
