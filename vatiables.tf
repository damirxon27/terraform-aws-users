 variable "group_name" {
       type        = string
       description = "The name of the IAM group."
     }

     variable "users" {
       type = map(string)
       description = "A map of IAM users and their roles."
     }
     

   
    