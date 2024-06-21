<%-- 
    Document   : MyRequestOrderDetail
    Created on : Jun 11, 2024, 1:13:10 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Requested Order Details</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 20px;
                background-color: #f9f9f9;
            }
            h1 {
                text-align: center;
                color: #333;
            }
            .order-details {
                max-width: 600px;
                margin: auto;
                background-color: #fff;
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }
            .order-details h2 {
                text-align: center;
                color: #4CAF50;
            }
            .order-details p {
                margin: 10px 0;
                line-height: 1.5;
            }
            .order-details label {
                font-weight: bold;
            }
            .order-details input[type="text"], .order-details input[type="email"], .order-details input[type="tel"], .order-details input[type="date"], .order-details input[type="number"] {
                width: calc(100% - 20px);
                padding: 10px;
                margin: 5px 0;
                border: 1px solid #ddd;
                border-radius: 4px;
                box-sizing: border-box;
            }
            .product-table {
                width: 100%;
                border-collapse: collapse;
                margin: 20px 0;
            }
            .product-table th, .product-table td {
                border: 1px solid #ddd;
                padding: 8px;
                text-align: left;
            }
            .product-table th {
                background-color: #4CAF50;
                color: white;
            }
            .total-container {
                text-align: right;
                margin-top: 20px;
            }
            .button-container {
                text-align: center;
                margin-top: 20px;
            }
            button {
                background-color: #4CAF50;
                color: white;
                border: none;
                padding: 10px 20px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 4px 2px;
                cursor: pointer;
                border-radius: 4px;
                transition: background-color 0.3s ease;
            }
            button:hover {
                background-color: #45a049;
            }
        </style>
    </head>
    <body>
       
        
        <h1>Requested Order Details</h1>

        <div class="order-details">
            <h2>Order Information</h2>
            <p><label>Order ID:</label> <input type="text" id="orderID" value="001" readonly></p>
            <p><label>Order Date:</label> <input type="date" id="orderDate" value="2024-06-10"></p>
            <p><label>Status:</label> <input type="text" id="status" value="Shipped"></p>
            <h2>Customer Information</h2>
            <p><label>Customer Name:</label> <input type="text" id="customerName" value="Van A"></p>
            <p><label>Customer Email:</label> <input type="email" id="customerEmail" value="vana@gmail.com"></p>
            <p><label>Customer Phone:</label> <input type="tel" id="customerPhone" value="0987654321"></p>
            <p><label>Shipping Address:</label> <input type="text" id="shippingAddress" value="123 Main St, Springfield, IL 62701"></p>
            <h2>Product Details</h2>
            <table class="product-table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Product Name</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>001</td>
                        <td>Product A</td>
                        <td>2.200</td>
                        <td>2</td>
                        <td>4.4000</td>
                    </tr>
                    <!-- Additional rows can be added here -->
                </tbody>
            </table>
            <h2>Payment Information</h2>
            <div class="total-container">
                <p><label>Subtotal:</label> 4.400</p>
                <p><label>Shipping:</label> 200</p>
                <p><label>Total:</label> 4.600</p>
            </div>
            <div class="button-container">
                
            </div>
        </div>
    </body>
</html>