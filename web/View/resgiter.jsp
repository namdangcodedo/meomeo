
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng ký tài khoản</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .container {
            width: 500px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="password"],
        input[type="email"],
        input[type="tel"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        .error-message {
            color: red;
            margin-top: 10px;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Đăng ký tài khoản</h1>
   
    <form action="register" method="post">
        <%-- Trường tên --%>
        <label for="name">Họ và tên:</label>
        <input type="text" id="name" name="name" required>

        <%-- Trường email --%>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>

        <%-- Trường số điện thoại --%>
        <label for="phone">Số điện thoại:</label>
        <input type="tel" id="phone" name="phone" required>

        <%-- Trường địa chỉ --%>
        <label for="address">Địa chỉ:</label>
        <input type="text" id="address" name="address" required>

        <%-- Trường mật khẩu --%>
        <label for="password">Mật khẩu:</label>
        <input type="password" id="password" name="password" required>

        <%-- Trường xác nhận mật khẩu --%>
        <label for="confirmPassword">Xác nhận mật khẩu:</label>
        <input type="password" id="confirmPassword" name="confirmPassword" required>

        <%-- Nút đăng ký --%>
        
        <button><a href="Home.jsp">Đăng ký</a></button>
        <%-- Hiển thị thông báo lỗi --%>
        <% if (request.getAttribute("errorMessage") != null) { %>
        <p class="error-message">${request.getAttribute("errorMessage")}</p>
        <% } %>
    </form>
</div>
</body>
</html>