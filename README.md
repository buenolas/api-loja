# Loja - API CRUD

Bem-vindo ao repositório da **Loja - API CRUD**. Este projeto é uma API para gerenciamento de lojas, permitindo operações CRUD (Create, Read, Update, Delete) em produtos, incluindo título, descrição e preço.

## Descrição

Esta API foi desenvolvida para facilitar a gestão de produtos em lojas online. Com esta API, você pode:

- **Criar** novos produtos com título, descrição e preço.
- **Listar** todos os produtos.
- **Atualizar** informações de produtos existentes.
- **Excluir** produtos do catálogo.

## Funcionalidades

- **API RESTful**: Endpoints para operações CRUD.
- **Gerenciamento de Produtos**: Título, descrição e preço.
- **Integração com Banco de Dados**: Suporte para diversos SGBDs.
- **Utilização de Docker**: Facilita a configuração e execução do ambiente de desenvolvimento.

## Estrutura do Projeto

A estrutura básica do projeto é a seguinte:

```
loja/
├── src/                # Código fonte da aplicação
├── public/             # Arquivos públicos (HTML, CSS, JS)
├── deps/               # Dependências e bibliotecas
├── assets/             # Imagens, ícones e outros assets
├── Dockerfile          # Configuração do Docker
├── docker-compose.yml  # Configuração do Docker Compose
└── README.md           # Documentação do projeto
```

## Instalação

### Pré-requisitos

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

### Passos para Instalação

1. Clone o repositório:
   ```sh
   git clone https://github.com/seu-usuario/loja.git
   cd loja
   ```

2. Construa e inicie os containers Docker:
   ```sh
   docker-compose up --build
   ```

3. A aplicação estará disponível em `http://localhost:3000`.

### Endpoints da API

- **GET /produtos**: Lista todos os produtos.
- **POST /produtos**: Cria um novo produto.
  - Body:
    ```json
    {
      "titulo": "Nome do Produto",
      "descricao": "Descrição do Produto",
      "preco": 100.00
    }
    ```
- **GET /produtos/{id}**: Retorna os detalhes de um produto específico.
- **PUT /produtos/{id}**: Atualiza as informações de um produto específico.
  - Body:
    ```json
    {
      "titulo": "Nome do Produto",
      "descricao": "Descrição do Produto",
      "preco": 150.00
    }
    ```
- **DELETE /produtos/{id}**: Exclui um produto específico.

## Contribuição

Se você deseja contribuir com o projeto, siga os passos abaixo:

1. Faça um fork do repositório.
2. Crie uma nova branch com a sua feature: `git checkout -b minha-feature`
3. Commit suas mudanças: `git commit -m 'Adiciona nova feature'`
4. Faça um push para a branch: `git push origin minha-feature`
5. Envie um Pull Request

## Licença

Este projeto está licenciado sob a MIT License - veja o arquivo [LICENSE](LICENSE) para mais detalhes.

---

Caso você tenha alguma dúvida ou problema, sinta-se à vontade para abrir uma issue no repositório.
