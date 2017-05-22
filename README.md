efs terraform module
===========

A terraform module to create an EFS file system mount in AWS.


Module Input Variables
----------------------

- `creation_token` -  A unique name used as reference when creating the Elastic File System
- `performance_mode` - (Optional) The file system performance mode. Can be either "generalPurpose" or "maxIO"
- `subnet_id` - The ID of the subnet to add the mount target in
- `ip_address` - (Optional) The address (within the address range of the specified subnet) at which the file system may be mounted via the mount target
- `security_groups` - (Optional) A list of up to 5 VPC security group IDs (that must be for the same VPC as subnet specified) in effect for the mount target.
- `tags` - (Optional) dictionary of tags that will be added to resources created by the module

Usage
-----

```hcl
module "efs" {
  source = "github.com/feedyard/tf_aws_efs"

  creation_token = "my-efs"
  performance_mode = "generalPerformance"

  subnet_id = "subnet-c77b17c2"
  security_groups ["sg-1aaaa065","sg-1a38ab22"]
  
  tags {
    "Terraform" = "true"
    "Environment" = "${var.environment}"
  }
}
```

Outputs
=======

 - `efs_id` - The ID that identifies the file system (e.g. fs-ccfc0d65)
