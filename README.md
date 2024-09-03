# terraform-aws-users
module "iam_users" {
     source     = "./terraform-aws-users"
     group_name = "example-group"
     users = {
       "user1" = "Admin"
       "user2" = "Developer"
     }
   }
