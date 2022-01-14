provider "random" {
  # Configuration options
}

resource "random_id" "server" {
  prefix = "Daniela"

  byte_length = 8
}

output "server" {
  value = random_id.server.id
}