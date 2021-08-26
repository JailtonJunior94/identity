# Identity Server 
PoC (Prova de Conceito), para criação de servidor de autenticação utililizando Identity Server 4

### Tecnologias Utilizadas
1. [.NET](https://dotnet.microsoft.com/download)
2. [Identity Server 4](https://identityserver4.readthedocs.io/en/latest/)
3. [Terraform](https://www.terraform.io/)
4. [Microsoft Azure](https://azure.microsoft.com/pt-br/)

### Executar em ambiente local (Docker Compose)
1. Na raiz do projeto executar o seguinte comando: 
    ```
    docker-compose up -d 
    ```

### Criação da Infra (Terraform)
1. Iniciando o terraform. na pasta terraform executar:
   ```
   terraform init
   ```
2. Aplicar a formatação
   ```
   terraform fmt
   ```
3. Validação do que foi criado
   ```
   terraform validate
   ```
4. Aplicar o plano (planejamento dos recursos que serão criados)
   ```
   terraform plan
   ```
5. Executar a criação da infra
   ```
   terraform apply -auto-approve
   ```

### Executar teste de carga (Artillery.io)
1. Executando o teste de carga 
   ```
   artillery run -o artillery-report.json artillery.yaml
   ```