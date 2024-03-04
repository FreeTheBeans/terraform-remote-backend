bucket_name        = "free-the-beans-terraform-backend"   // Must be the same as the bucket name in the main.tf -> terraform block
bucket_key         = "free-the-beans/backend/terraform.tfstate" // Must be the same as the key in the main.tf -> terraform block
table_name         = "free-the-beans-db-terraform-lock"      // Must be the same as the table name in the main.tf -> dynamodb block
aws_resource_owner = "luke.bradford@bbd.co.za" //