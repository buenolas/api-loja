---

# Store - CRUD API

Welcome to the **Store - CRUD API** repository. This project is an API for store management, allowing CRUD (Create, Read, Update, Delete) operations on products, including title, description, and price.

## Description

This API was developed to facilitate product management in online stores. With this API, you can:

- **Create** new products with title, description, and price.
- **List** all products.
- **Update** information for existing products.
- **Delete** products from the catalog.

## Features

- **RESTful API**: Endpoints for CRUD operations.
- **Product Management**: Title, description, and price.
- **Database Integration**: Support for various DBMSs.
- **Docker Usage**: Simplifies the setup and execution of the development environment.

## Project Structure

The basic project structure is as follows:

```
store/
├── src/                # Application source code
├── public/             # Public files (HTML, CSS, JS)
├── deps/               # Dependencies and libraries
├── assets/             # Images, icons, and other assets
├── Dockerfile          # Docker configuration
├── docker-compose.yml  # Docker Compose configuration
└── README.md           # Project documentation
```

## Installation

### Prerequisites

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

### Installation Steps

1. Clone the repository:
   ```sh
   git clone https://github.com/your-username/store.git
   cd store
   ```

2. Build and start the Docker containers:
   ```sh
   docker-compose up --build
   ```

3. The application will be available at `http://localhost:3000`.

### API Endpoints

- **GET /products**: Lists all products.
- **POST /products**: Creates a new product.
  - Body:
    ```json
    {
      "title": "Product Name",
      "description": "Product Description",
      "price": 100.00
    }
    ```
- **GET /products/{id}**: Retrieves details of a specific product.
- **PUT /products/{id}**: Updates information for a specific product.
  - Body:
    ```json
    {
      "title": "Product Name",
      "description": "Product Description",
      "price": 150.00
    }
    ```
- **DELETE /products/{id}**: Deletes a specific product.

## Contribution

If you wish to contribute to the project, follow these steps:

1. Fork the repository.
2. Create a new branch for your feature: `git checkout -b my-feature`
3. Commit your changes: `git commit -m 'Add new feature'`
4. Push to the branch: `git push origin my-feature`
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

If you have any questions or issues, feel free to open an issue in the repository.
