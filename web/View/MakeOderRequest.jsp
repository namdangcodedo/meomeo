<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
            background: #f4f4f4;
        }
        .container {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            width: 600px;
            margin: auto;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type="text"], input[type="email"], select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .row {
            display: flex;
            justify-content: space-between;
            margin-bottom: 10px;
        }
        .row > div {
            width: 48%;
        }
        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid #ccc;
        }
        th, td {
            padding: 8px;
            text-align: left;
        }
        .product img {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            margin-right: 10px;
        }
        .total-price {
            text-align: right;
            margin-top: 10px;
            font-size: larger;
        }
        .buttons {
            text-align: right;
            margin-top: 20px;
        }
        button {
            padding: 10px 20px;
            color: white;
            background-color: #007BFF;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-left: 10px;
        }
        button.cancel {
            background-color: #6c757d;
        }
        .cart-button {
    display: inline-block;
    padding: 10px 20px;
    font-size: 16px;
    cursor: pointer;
    text-align: center;
    text-decoration: none;
    color: #fff;
    background-color: #007bff;
    border: none;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}
    </style>
</head>
<body>
    <div class="container">
        <h2>Make an Order</h2>
        <div class="form-group">
            <label for="fullname">Fullname*</label>
            <input type="text" id="fullname" name="fullname">
        </div>
        <div class="form-group">
            <label for="phonenumber">PhoneNumber*</label>
            <input type="text" id="phonenumber" name="phonenumber">
        </div>
        <div class="form-group">
            <label for="address">Address*</label>
            <input type="text" id="address" name="address">
        </div>
        <div class="row">
            <div>
                <label   for="payment">Payment*</label>
                <select id="payment" name="payment">
                    <option>VISA Card</option>
                    <option>PayPal</option>
                    <option>MasterCard</option>
                </select>
                <a href="pay.jsp" class="cart-button">Thêm thông tin thẻ</a>
            </div>
            <div>
                <label for="shipping">Shipping carrier*</label>
                <select id="shipping" name="shipping">
                    <option>DHL</option>
                    <option>FedEx</option>
                    <option>UPS</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <label for="voucher">Voucher*</label>
            <select id="voucher" name="voucher">
                <option>100%</option>
                <option>50%</option>
                <option>25%</option>
            </select>
        </div>
        <table>
            <tr>
                <th>Product</th>
                <th>Type</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Action</th>
            </tr>
            <tr>
                <td><img src="product1.jpg" alt="Product1"></td>
                <td>NgaCQ</td>
                <td>1000</td>
                <td><input type="number" value="1" min="1"></td>
                <td><button type="button">Delete</button></td>
            </tr>
            <tr>
                <td><img src="product2.jpg" alt="Product2"></td>
                <td>NgaCQ</td>
                <td>1000</td>
                <td><input type="number" value="1" min="1"></td>
                <td><button type="button">Delete</button></td>
            </tr>
        </table>
        <div class="total-price">
            Total Price: $0
        </div>
        <div class="buttons">
            <button type="button" class="cancel">Cancel</button>
            <button type="button">Make Orders</button>
        </div>
    </div>
</body>
</html>