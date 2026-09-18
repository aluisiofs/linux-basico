# Projeto: Fundamentos de Docker (`docker-basico`)

Este repositório reúne os exercícios práticos desenvolvidos na **Semana 3** da Trilha DevOps Junior NTT Data, com foco na conteinerização de aplicações utilizando **Docker**.

---

## 📘 Conceitos Fundamentais

- **Containers vs. Máquinas Virtuais (VMs):** Enquanto as VMs dependem de um _Hypervisor_ e recriam um sistema operacional completo para cada instância (consumindo mais memória e CPU), os containers compartilham o próprio Kernel do sistema operacional hospedeiro (_Kernel Sharing_). Isso torna os containers leves, portáteis e com inicialização em questão de segundos.
- **Imagem Docker:** Template estático e somente leitura contendo o sistema operacional base, dependências, variáveis e o código-fonte da aplicação.
- **Container:** Instância em execução de uma imagem Docker.
- **Dockerfile:** Arquivo de declaração com as instruções de automação para construção de uma imagem personalizada.

---

## 🛠️ Estrutura do Projeto

```text
docker-basico/
├── app.js               # Código-fonte da aplicação Web em Node.js (Express)
├── package.json         # Manifesto de dependências e scripts do Node.js
├── Dockerfile           # Instruções de build da imagem Docker
├── .dockerignore        # Arquivos/pastas ignorados na cópia para a imagem
└── README.md            # Documentação do projeto

```

---

## 🚀 Passo a Passo para Build e Execução

### 1\. Construir a Imagem Docker (`docker build`)

Para compilar a imagem a partir do `Dockerfile`, execute na raiz do projeto:

docker build -t minha-app-node:v1 .

### 2\. Executar o Container (`docker run`)

Inicie o container mapeando a porta 8080 da sua máquina para a porta 3000 interna do container:

docker run -d -p 8080:3000 --name meu-container-node minha-app-node:v1

### 3\. Inspecionar o Container em Execução (`docker ps`)

Para confirmar se o container está rodando:

docker ps

### 4\. Testar a Aplicação

Abra o navegador em `http://localhost:8080` ou execute no terminal:

curl http://localhost:8080

_Saída esperada:_ `🚀 Aplicação rodando com sucesso dentro de um Container Docker!`

### 5\. Finalizar e Remover o Container

# Para a execução do container

docker stop meu-container-node

# Remove o container parado

docker rm meu-container-node
