<%-- 
    Document   : MyOrderDetails
    Created on : Jun 21, 2024, 8:23:02 AM
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
                max-width: 1200px;
                margin: auto;
                background-color: #fff;
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                display: flex;
                flex-wrap: wrap;
            }
            .section {
                width: 48%;
                margin: 1%;
            }
            .full-width {
                width: 100%;
            }
            .section h2 {
                text-align: center;
                color: #4CAF50;
            }
            .section p {
                margin: 10px 0;
                line-height: 1.5;
            }
            .section label {
                font-weight: bold;
            }
            .section input[type="text"], .section input[type="email"], .section input[type="tel"], .section input[type="date"], .section input[type="number"] {
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
                width: 100%;
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
            .circle-container {
                text-align: center;
                margin-top: 20px;
            }

            .circle {
                width: 100px;
                height: 100px;
                border-radius: 50%;
                background-color: #4CAF50;
                display: inline-flex;
                justify-content: center;
                align-items: center;
                margin: 10px;
                color: white;
                font-size: 16px;
                font-weight: bold;
                text-transform: uppercase;
                position: relative; /* Để tạo không gian cho label dưới hình tròn */
            }

            .circle-label {
                position: absolute;
                bottom: -20px; /* Điều chỉnh khoảng cách của label so với hình tròn */
                left: 0;
                width: 100%;
                text-align: center;
                font-size: 12px;
                color: #333;
            }

        </style>
    </head>
    <body>
        <h1>Requested Order Details</h1>

        <div class="order-details">
            <div class="section">
                <h2>Order Information</h2>
                <p><label>Order ID:</label><div>001</div></p>
                <p><label>Order Date:</label> <div>2024-06-10</div></p>
                <p><label>Status:</label> <div>Pending</div></p>
            </div>
            <div class="section">
                <h2>Customer Information</h2>
                <p><label>Customer Name:</label> <input type="text" id="customerName" value="Van A"></p>
                <p><label>Customer Email:</label> <input type="email" id="customerEmail" value="vana@gmail.com"></p>
                <p><label>Customer Phone:</label> <input type="tel" id="customerPhone" value="0987654321"></p>
                <p><label>Shipping Address:</label> <input type="text" id="shippingAddress" value="123 Main St, Springfield, IL 62701"></p>
            </div>
            <div class="section">
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
            </div>
            <div class="section">
                <h2>Payment Information</h2>
                <div class="total-container">
                    <p><label>Subtotal:</label> 4.400</p>
                    <p><label>Shipping:</label> 200</p>
                    <p><label>Total:</label> 4.600</p>
                </div>
            </div>
            <div class="circle-container">
                <div class="circle">
                    <span>=></span>
                    <div class="circle-label">Order Confirmed</div>
                </div>
                <div class="circle">
                    <span>=></span>
                    <div class="circle-label">Seller Preparing Order</div>
                </div>
                <div class="circle">
                    <span>=></span>
                    <div class="circle-label">Shipping</div>
                </div>
                <div class="circle">
                    <span>=></span>
                    <div class="circle-label">Delivered</div>
                </div>
            </div>

            <div class="button-container">
                <button id="updateButton">Update</button>
                <button id="cancelButton">Cancel</button>
            </div>

        </div>
    </body>
</html>
