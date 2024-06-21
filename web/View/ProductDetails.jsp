<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Detail</title>
    <link rel="stylesheet" href="StylesProductDetail.css">
</head>
<style>
    body {
    font-family: Arial, sans-serif;
    background-color: #f9f9f9;
    margin: 0;
    padding: 0;
}

.container {
    width: 100%;
    max-width: 1200px;
    margin: 20px auto;
    padding: 20px;
    background-color: #fff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.product-detail {
    display: flex;
    justify-content: space-between;
    margin-bottom: 20px;
}

.product-image img {
    width: 300px;
    height: auto;
    background-color: #e0e0e0;
}

.product-info {
    flex: 1;
    margin-left: 20px;
}

.product-info h1 {
    font-size: 24px;
    margin-bottom: 10px;
}

.rating {
    font-size: 14px;
    color: #ffcc00;
    margin-bottom: 10px;
}

.rating a {
    color: #007bff;
    text-decoration: none;
    margin-left: 10px;
}

.rating a:hover {
    text-decoration: underline;
}

.brand {
    font-size: 16px;
    margin-bottom: 10px;
}

.price {
    font-size: 20px;
    color: #d9534f;
    margin-bottom: 20px;
}

.size p,
.quantity p {
    margin: 10px 0 5px 0;
    font-weight: bold;
}

.size button {
    margin-right: 10px;
    padding: 10px 15px;
    border: 1px solid #ddd;
    background-color: #fff;
    cursor: pointer;
    border-radius: 5px;
}

.size button:hover {
    background-color: #f1f1f1;
}

.quantity select {
    padding: 5px;
    border: 1px solid #ddd;
    border-radius: 5px;
}

.total-price {
    margin: 20px 0;
    font-size: 18px;
    font-weight: bold;
}

.add-to-cart,
.wishlist {
    display: inline-block;
    padding: 10px 20px;
    margin-right: 10px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

.add-to-cart {
    background-color: #5cb85c;
    color: #fff;
}

.add-to-cart:hover {
    background-color: #4cae4c;
}

.wishlist {
    background-color: #f0ad4e;
    color: #fff;
}

.wishlist:hover {
    background-color: #ec971f;
}

.product-tabs {
    border-top: 1px solid #ddd;
    padding-top: 20px;
}

.tabs {
    list-style: none;
    padding: 0;
    display: flex;
    border-bottom: 1px solid #ddd;
    margin-bottom: 20px;
}

.tabs li {
    padding: 10px 20px;
    cursor: pointer;
}

.tabs li.active {
    font-weight: bold;
    border-bottom: 2px solid #007bff;
}

.tab-content {
    padding: 20px;
    border: 1px solid #ddd;
    border-top: none;
}

.tab-pane {
    display: none;
}

.tab-pane.active {
    display: block;
}

</style>
<body>
    <div class="container">
        <div class="product-detail">
            <div class="product-image">
                <img src="/img/p7.jpg" alt="Product Image">
            </div>
            <div class="product-info">
                <h1>Tên sản phẩm</h1>
                <div class="rating">
                    ★★★★★
                    <a href="#">Xem đánh giá</a> |
                    <a href="#">Viết đánh giá</a>
                </div>
                <p class="brand">Thương hiệu : Taste of the Wild</p>
                <p class="price">00.00đ</p>
                <div class="size">
                    <p>Kích thước :</p>
                    <button>S</button>
                    <button>M</button>
                    <button>L</button>
                    <button>XL</button>
                    <button>XXL</button>
                    <button>3XL</button>
                </div>
                <div class="quantity">
                    <p>Số lượng :</p>
                    <select>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                    </select>
                </div>
                <p class="total-price">Tổng số tiền: 00.00 VND</p>
                <button class="add-to-cart">Thêm vào giỏ hàng</button>
                <button class="wishlist">❤️</button>
            </div>
        </div>
        <div class="product-tabs">
            <ul class="tabs">
                <li class="active">Mô tả</li>
                <li>Đánh giá</li>
                <li>Ghi chú</li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane active">
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s...</p>
                </div>
                <!-- Other tabs content can be added similarly -->
            </div>
        </div>
    </div>
</body>
</html>
