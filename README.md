### Description

This repo contains reusable terraform `module`

### Using the module

To use a module from this repository, add a block like the following to your terraform code:
```
module "server" {
  source = "github.com/galindonkov/terraform-variables"
}

output "new_server_names" {
  value = "${ module.server.players }"
}
```
### Prerequisites

- Terraform installation : [Installation process ](https://learn.hashicorp.com/terraform/getting-started/install.html)

### The repo is having following file

- main.tf : Terraform configuration file

### How to use the repo

- Clone this repo to your local machines : `git clone git@github.com:galindonkov/terraform-module.git`

- Change to the currently added directory : `cd terraform-module/`

- Execute `terraform init` to get terraform initialized

- Execute `terraform plan` to generate and show an execution plan based on the configured `main.tf` file

- You are now ready to proceed with the execution itself by `terraform apply`.

  > NOTE: The command will prompt for an execution confirmation either with `yes` or `no`.        
  
- Accoring to our configuration file in which we have added as a module source github repo, then you will get as an output the   following
`  
new_server_names = [
    Pele,
    Ronaldo,
    Mesi,
    Maradona,
    Gundi
    ]
    `
   
- After you finish, you can destroy your currect infrastructure by `terraform destroy`
