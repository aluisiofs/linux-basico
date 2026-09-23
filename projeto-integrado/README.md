# 🚀 Projeto Integrado – Semana 7 

## 📋 Descrição do Projeto

Este projeto simula um cenário real de engenharia DevOps, onde uma aplicação web multi-tier foi conteinerizada e integrada a uma esteira de automação CI (Integração Contínua) utilizando **Docker**, **Docker Compose** e **GitHub Actions**.

---

## 🏗️ Arquitetura da Solução

O ambiente é composto por dois serviços principais comunicando-se em uma rede privada virtual:

- **Aplicação Web (Node.js/Express)**: Container rodando na porta `3000`, empacotado via `Dockerfile` otimizado (Node 18 Alpine).
- **Banco de Dados (PostgreSQL 15)**: Container de banco de dados rodando em imagem leve Alpine, configurado com volume de dados para persistência (`pgdata`).
- **Rede Interna (`rede_integrada`)**: Isolamento de comunicação tipo *bridge* para garantir segurança entre aplicação e banco.

---

## ⚙️ Esteira de CI (GitHub Actions)

A pipeline de Integração Contínua foi configurada no arquivo `.github/workflows/ci-projeto.yml` e executa automaticamente a cada *push* ou *pull request* nas branches `develop` e `main`:

1. **Checkout do Código**: Baixa o repositório no agente virtual do GitHub (`actions/checkout@v5`).
2. **Setup do Buildx**: Prepara o motor do Docker para builds otimizados (`docker/setup-buildx-action@v3`).
3. **Validação de Sintaxe**: Garante que o arquivo `docker-compose.yml` está correto (`docker compose config`).
4. **Build e Teste de Subida**: Compila as imagens Docker e valida a inicialização dos containers (`docker compose up -d --build`).

---

## 🗺️ Próximas Etapas da Esteira (Roadmap)

### 🔹 Etapa 2: Linting e Qualidade de Código
- **Análise Estática**: Padronização do código com ESLint e Prettier.
- **Validação Automatizada**: Execução de `npm run lint` na CI para impedir o build em caso de erros de código ou sintaxe.

### 🔹 Etapa 3: Análise de Segurança e Vulnerabilidades (DevSecOps)
- **Auditoria de Pacotes**: Execução do `npm audit` para detectar dependências vulneráveis.
- **Scan de Imagem Docker**: Integração com **Trivy** ou **Docker Scout** para mapear vulnerabilidades conhecidas (CVEs) nas imagens base.

### 🔹 Etapa 4: Publicação no Container Registry (CD)
- **Gestão de Segredos**: Configuração de credenciais (`secrets`) no GitHub Actions para autenticação no **Docker Hub** ou **GHCR**.
- **Publicação Automática**: Build e push automatizado das imagens versionadas (`latest` e tags de versão) ao realizar merge na branch `main`.

## 🛠️ Como Executar o Projeto Localmente

### Pré-requisitos

* Docker Engine e Docker Compose V2 instalados.

### Execução

1. **Subir os containers em segundo plano:**

   docker compose up -d