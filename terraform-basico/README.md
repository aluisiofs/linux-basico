# Projeto: Infraestrutura como Código com Terraform e LocalStack (`terraform-basico`)

Este módulo reúne os exercícios práticos da **Semana 5** da Trilha DevOps Junior NTT Data, com foco em **Infraestrutura como Código (IaC)** utilizando Terraform e LocalStack.

## 🚀 Tecnologias Utilizadas

- **Terraform** (Linguagem HCL)
- **LocalStack** (simulação de serviços AWS localmente via Docker)
- **AWS Provider**
- **Amazon S3** (bucket simulado)

## 🛠️ Como Executar o Projeto

### 1. Subir o LocalStack via Docker

```bash
docker run -d -p 4566:4566 -p 4510-4559:4510-4559 --name localstack_main localstack/localstack
