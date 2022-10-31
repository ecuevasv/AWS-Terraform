## Output variables
output "alb_dns_name" {
  value = aws_lb.lb_example.dns_name
  description = "The domain name of the load balancer"
}

output "rds_address" {
  value = data.terraform_remote_state.db.outputs.address
}

output "rds_port" {
  value = data.terraform_remote_state.db.outputs.port 
} 

output "rds_storagetype" {
  value = data.terraform_remote_state.db.outputs.storage_type
}