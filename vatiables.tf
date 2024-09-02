 variable "group_name" {
       type        = string
       description = "The name of the IAM group."
     }

     variable "users" {
  type = map(string)
  default = {
    "user1" = "default_role1"
    "user2" = "default_role2"
  }
}

     

   
    