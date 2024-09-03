output "group_name" {
  value = aws_iam_group.group.name
}

output "user_names" {
  value = [for u in aws_iam_user.user : u.name]
}


