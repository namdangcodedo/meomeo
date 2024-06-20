<%-- 
    Document   : ShoppingCart
    Created on : Jun 11, 2024, 1:31:04 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart</title>
    <link rel="stylesheet" href="StylessShoppingCart.css">
</head>
<style>
    body {
    font-family: Arial, sans-serif;
    background-color: #f9f9f9;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.cart-container {
    width: 80%;
    max-width: 1200px;
    background-color: #fff;
    padding: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.cart-table {
    width: 100%;
    border-collapse: collapse;
}

.cart-table th, .cart-table td {
    padding: 10px;
    border: 1px solid #ddd;
    text-align: center;
}

.cart-table th {
    background-color: #f2f2f2;
}

.cart-table img {
    width: 50px;
    height: 50px;
    object-fit: cover;
}

.cart-table input[type="number"] {
    width: 60px;
    text-align: center;
}

.edit-button, .delete-button {
    background-color: transparent;
    border: none;
    cursor: pointer;
    font-size: 16px;
}

.cart-actions {
    display: flex;
    justify-content: space-between;
    margin-top: 20px;
    align-items: center;
}

.continue-shopping {
    background-color: #000;
    color: #fff;
    padding: 10px 20px;
    border: none;
    cursor: pointer;
}

.total-container {
    display: flex;
    align-items: center;
}

.total-label {
    font-weight: bold;
    margin-right: 10px;
}

.total-amount {
    font-size: 18px;
    margin-right: 20px;
}

.checkout-button {
    background-color: #000;
    color: #fff;
    padding: 10px 20px;
    border: none;
    cursor: pointer;
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

<body>
    <div class="cart-container">
        <table class="cart-table">
            <thead>
                <tr>
                    <th>Hình ảnh</th>
                    <th>Tên sản phẩm</th>
                    <th>Giá</th>
                    <th>Số Lượng</th>
                    <th>Tổng cộng</th>
                    <th>Sửa</th>
                    <th>Xóa</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><img src="/img/p7.jpg" alt="Product Image"></td>
                    <td>Tên sản phẩm</td>
                    <td>00.00₫</td>
                    <td><input type="number" value="1"></td>
                    <td>00.00₫</td>
                    <td><button class="edit-button">✏️</button></td>
                    <td><button class="delete-button">🗑️</button></td>
                </tr>
                <tr>
                    <td><img src="/img/p7.jpg" alt="Product Image"></td>
                    <td>Tên sản phẩm</td>
                    <td>00.00₫</td>
                    <td><input type="number" value="1"></td>
                    <td>00.00₫</td>
                    <td><button class="edit-button">✏️</button></td>
                    <td><button class="delete-button">🗑️</button></td>
                </tr>
            </tbody>
        </table>
        <div class="cart-actions">
          <a href="ProductList.jsp" class="cart-button">Tiếp tục mua hàng</a>
            
            <div class="total-container">
                <span class="total-label">Tổng giỏ hàng</span>
                <span class="total-amount">00.00₫</span>
               <a href="MakeOderRequest.jsp" class="cart-button">Thanh toán</a>
            </div>
        </div>
    </div>
</body>
</html>

