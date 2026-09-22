# Configuração do provedor simulado (AWS via LocalStack)
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configuração do provedor AWS para o LocalStack
provider "aws" {
  region     = "us-east-1"
  access_key = "mock_access_key"
  secret_key = "mock_secret_key"

  # Desabilita validações que não são necessárias no LocalStack
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  # Utiliza o formato de URL por caminho para o S3
  s3_use_path_style = true

  # Redireciona o S3 para o LocalStack
  endpoints {
    s3 = "http://localhost:4566"
  }
}

# Criação do bucket S3
resource "aws_s3_bucket" "bucket_nttdata" {
  bucket = "bucket-testes-nttdata"
}

