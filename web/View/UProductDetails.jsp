<%-- 
    Document   : ProductDetails
    Created on : Jun 21, 2024, 8:13:37 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Detail</title>
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
        form {
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }
        .form-group {
            margin-bottom: 20px;
            display: flex;
            align-items: center;
            width: 48%;
        }
        label {
            flex: 1;
            margin-right: 10px;
            font-weight: bold;
            text-align: right;
        }
        input[type="text"], input[type="file"], input[type="date"], .status-input {
            flex: 2;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .status-label {
            margin-right: 10px;
            font-weight: normal;
            text-align: left;
        }
        .status-group {
            display: flex;
            align-items: center;
            justify-content: flex-start;
        }
        .button-container-right {
            text-align: right;
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
    </style>
</head>
<body>
<h1>Product Detail</h1>
<form action="updateProduct" method="post">
    <div class="form-container">
        <div class="form-group">
            <label for="productName">Product Name:</label>
            <input type="text" id="productName" name="productName" value="Product A">
        </div>
        <div class="form-group">
            <label for="description">Description:</label>
            <input type="text" id="description" name="description" value="Product A">
        </div>
        <div class="form-group">
            <label for="price">Price:</label>
            <input type="text" id="price" name="price" value="1,200">
        </div>
        <div class="form-group">
            <label for="quantity">Quantity:</label>
            <input type="text" id="quantity" name="quantity" value="20">
        </div>
        <div class="form-group">
            <label for="image">Image:</label>
            <input type="file" id="image" name="image">
        </div>
        <div class="form-group">
            <label for="category">Category:</label>
            <input type="text" id="category" name="category" value="Category A">
        </div>
        <div class="form-group">
            <label for="createdAt">Create At:</label>
            <input type="date" id="createdAt" name="createdAt" value="2024-06-10">
        </div>
        <div class="form-group">
            <label>Status:</label>
            <div class="status-group">
                <input type="radio" id="inStock" name="status" value="In Stock" checked class="status-input">
                <label class="status-label" for="inStock">In Stock</label>
                <input type="radio" id="outOfStock" name="status" value="Out of Stock" class="status-input">
                <label class="status-label" for="outOfStock">Out of Stock</label>
            </div>
        </div>
    </div>
    <div class="button-container-right">
        <button type="button" class="button-right">Cancel</button>
        <button type="submit">Save</button>
    </div>
</form>
</body>
</html>
