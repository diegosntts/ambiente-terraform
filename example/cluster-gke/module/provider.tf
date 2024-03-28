# configurar as credenciais do Google Cloud e informações do projeto
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.21.0"
    }
  }
}

provider "google" {
  credentials = file("${path.module}/keys.json")
  project     = var.project
  region      = var.region
  zone        = var.zone
}
