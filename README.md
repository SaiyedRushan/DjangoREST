# Django Rest Framework API

This project is a Django REST Framework application that serves as a backend server for an e-commerce platform. It provides REST APIs for managing customer information and orders.

## Installation

1. Clone the repository:

2. Create a virtual environment and install dependencies:

   ```bash
   python -m venv venv
   source venv/bin/activate  # for Linux/Mac
   venv\Scripts\activate  # for Windows
   pip install -r backend/requirements.txt
   ```

3. Apply database migrations:

   ```bash
   python manage.py migrate
   ```

4. Create a superuser (for accessing the Django admin interface):

   ```bash
   python manage.py createsuperuser
   ```

5. Start the development server:

   ```bash
   python manage.py runserver
   ```

## Usage

### Core App (Customer Model)

The `core` app contains a model called `Customer` which stores customer information. You can manage customer data using the Django admin interface or the REST APIs provided by the `core` app.

### Ecommerce App (Order APIs)

The `ecommerce` app exposes REST APIs for managing customer orders. These APIs require token authentication for access. To use these APIs, you need to authenticate and include the token in your requests.

#### Authentication

To authenticate and obtain a token, send a POST request to the token endpoint with your username and password:

```http
POST /api/token/
Content-Type: application/json

{
  "username": "your_username",
  "password": "your_password"
}
```

The token will be returned in the response. Include this token in the `Authorization` header of your subsequent requests to access the order APIs:

```http
Authorization: Token your_token_here
```

#### Order APIs

- `GET /api/orders/`: Get a list of all orders.
- `POST /api/orders/`: Create a new order.
- `GET /api/orders/{id}/`: Get details of a specific order.
- `PUT /api/orders/{id}/`: Update a specific order.
- `DELETE /api/orders/{id}/`: Delete a specific order.

---
