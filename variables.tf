// Module specific variables
variable "creation_token" {
  description = "Reference name of the Elastic File System."
  default = ""
}

variable "performance_mode" {
  description = "The file system performance mode."
  default = "generalPurpose"
}

variable "subnet_id" {
  description = "The ID of the subnet to add the mount target in."
}

variable "ip_address" {
  description = "The address at which the file system is mounted"
  default =""
}

variable "security_groups" {
  description = "A list of up to 5 VPC security group IDs."
  default     = []
}

variable "tags" {
  description = "A map of tags to add to all resources"
  default     = {}
}
