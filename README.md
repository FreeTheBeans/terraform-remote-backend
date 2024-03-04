# terraform-remote-backend

Current required GH secrets:
- AWS_ASSUME_ROLE
- AWS_REGION

To Create these resources
- Insure the backend block in the `main.tf` file is commented out
- Phase 1:
- - run tf_init -> this creates the state file locally
- - run tf_validate
- - run tf_plan
- - run tf_apply
- Phase 2:
- - uncomment the `backend` block in the main.tf file
- - run tf_init
- It should now be using the resources you just created as the remote backend

To delete these resources, inverse the creation order
so:
comment out the 'backend' block in 'terraform' in the main.tf
run terraform init (will pull statefile down)
then only can you delete the resources using terraform destroy -var-file=''