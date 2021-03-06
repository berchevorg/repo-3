terraform {
  backend "remote" {
    organization = "twentyfour24"

    workspaces {
      name = "repo-3"
    }
  }
}

resource "random_pet" "name" {

  length    = "5"
  separator = "-"
}

output "out" {
  value = "${random_pet.name.id}"
}
