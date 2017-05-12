output "efs_dns" {
  value = "${aws_efs_mount_target.mod.dns_name}"
}

output "efs_id" {
  value = "${aws_efs_file_system.mod.id}"
}