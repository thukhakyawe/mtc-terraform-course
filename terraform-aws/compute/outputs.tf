# --- compute/output.tf ---

output "instance"{
    value = aws_instance.mtc_node[*]
    sensitive = true
}