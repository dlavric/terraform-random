# Repository for learning Terraform
This repository has been created for learning the `random` provider for Terraform OSS

## This Repository creates a Random provider with Terraform

## Instructions

### Prerequisites

- [X] [Terraform](https://www.terraform.io/downloads)

## How to Use this Repo

- Clone this repository:
```shell
git clone git@github.com:dlavric/terraform-random.git
```

- Go to the directory where the repo is stored and make sure the `main.tf` file is there too:
```shell
cd terraform-random
```

- Run `terraform init`, to download any external dependency
```shell
terraform init
```

This is the output of initializing the Terraform code:
```shell
Initializing the backend...

Initializing provider plugins...
- Reusing previous version of hashicorp/random from the dependency lock file
- Using previously-installed hashicorp/random v3.1.0

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```

- Apply the changes with Terraform
```shell
terraform apply
```

This is the output for applying the changes:
```shell
Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # random_id.server will be created
  + resource "random_id" "server" {
      + b64_std     = (known after apply)
      + b64_url     = (known after apply)
      + byte_length = 8
      + dec         = (known after apply)
      + hex         = (known after apply)
      + id          = (known after apply)
      + prefix      = "Daniela"
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + server = (known after apply)

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

random_id.server: Creating...
random_id.server: Creation complete after 0s [id=iA70kkbIBHg]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

Outputs:

server = "iA70kkbIBHg"
```

- To confirm the resources that have been created
```shell
terraform state list
```

Output is:
```shell
random_id.server
```


- Destroy the instance
```shell
terraform destroy
```

This is how it is supposed to look after destroying the changes:
```shell
random_id.server: Refreshing state... [id=iA70kkbIBHg]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # random_id.server will be destroyed
  - resource "random_id" "server" {
      - b64_std     = "DanielaiA70kkbIBHg=" -> null
      - b64_url     = "DanielaiA70kkbIBHg" -> null
      - byte_length = 8 -> null
      - dec         = "Daniela9804042347922064504" -> null
      - hex         = "Daniela880ef49246c80478" -> null
      - id          = "iA70kkbIBHg" -> null
      - prefix      = "Daniela" -> null
    }

Plan: 0 to add, 0 to change, 1 to destroy.

Changes to Outputs:
  - server = "iA70kkbIBHg" -> null

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

random_id.server: Destroying... [id=iA70kkbIBHg]
random_id.server: Destruction complete after 0s

Destroy complete! Resources: 1 destroyed.
```

## Reference Documentation
- [Random provider] (https://registry.terraform.io/providers/hashicorp/random/latest/docs)
- [Resources for the random provider] (https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/id)