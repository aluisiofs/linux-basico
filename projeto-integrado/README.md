## Como Executar o Projeto Localmente

### Pré-requisitos

* Docker e Docker Compose instalados.

### Execução

1. Subir os containers em segundo plano:

   ```bash
   docker compose up -d
   ```

2. Verificar o status dos serviços:

   ```bash
   docker compose ps
   ```

3. Visualizar os logs da aplicação:

   ```bash
   docker compose logs -f app
   ```

4. Parar e remover os containers:

   ```bash
   docker compose down
   ```
