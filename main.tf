module "server" {
  source = "github.com/galindonkov/terraform-variables"
}

output "new_server_names" {
  value = "${ module.server.players }"
}
