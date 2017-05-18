resource "aws_efs_file_system" "mod" {
  creation_token = "${var.creation_token}"
  performance_mode = "${var.performance_mode}"

  tags = "${merge(var.tags, map("Name", format("%s", var.creation_token)))}"
}

resource "aws_efs_mount_target" "mod" {
  file_system_id = "${aws_efs_file_system.mod.id}"
  subnet_id      = "${var.subnet_id}"
  ip_address     = "${var.ip_address}"

  security_groups = ["${var.security_groups}"]
}
