<%-- 
    Document   : ProductList
    Created on : Jun 11, 2024, 12:05:25 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Grid</title>
    <link rel="stylesheet" href="StylesProductList.css">
</head>
<style>
    body {
    font-family: Arial, sans-serif;
    background-color: #f9f9f9;
    margin: 0;
    padding: 0;
}

.container {
    display: flex;
    width: 100%;
    max-width: 1200px;
    margin: 0 auto;
    padding: 20px;
    box-sizing: border-box;
}

.sidebar {
    width: 250px;
    padding: 20px;
    background-color: #fff;
    border-right: 1px solid #ddd;
}

.filter-section {
    margin-bottom: 20px;
}

.filter-section h3 {
    margin: 0 0 10px 0;
    font-size: 16px;
    color: #333;
}

.filter-section ul {
    list-style: none;
    padding: 0;
    margin: 0;
}

.filter-section ul li {
    margin-bottom: 5px;
}

.filter-section label {
    color: #333;
}

.filter-section input[type="range"] {
    width: 100%;
}

.filter-section .price-range {
    display: flex;
    justify-content: space-between;
    margin-top: 10px;
}

button {
    display: inline-block;
    padding: 10px 20px;
    margin-top: 10px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

button:hover {
    background-color: #0056b3;
}

.popular-products {
    margin-top: 20px;
}

.popular-products .product {
    display: flex;
    align-items: center;
    margin-bottom: 10px;
}

.product-image {
    width: 50px;
    height: 50px;
    background-color: #e0e0e0;
    margin-right: 10px;
}

.product-info p {
    margin: 0;
    color: #333;
}

.rating {
    color: #ffcc00;
}

.main-content {
    flex: 1;
    padding: 20px;
    background-color: #fff;
}

.toolbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 20px;
}

.view-toggle {
    background-color: #007bff;
    color: #fff;
    border: none;
    padding: 10px;
    cursor: pointer;
    border-radius: 5px;
}

.view-toggle:hover {
    background-color: #0056b3;
}

.product-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 20px;
}

.product-card {
    background-color: #fff;
    border: 1px solid #ddd;
    padding: 20px;
    text-align: center;
}

.product-card .product-image {
    width: 100px;
    height: 100px;
    background-color: #e0e0e0;
    margin: 0 auto 10px auto;
}

.pagination {
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 20px;
}

.pagination span {
    display: inline-block;
    padding: 5px 10px;
    margin: 0 5px;
    border: 1px solid #ddd;
    cursor: pointer;
}

.pagination span:hover {
    background-color: #007bff;
    color: #fff;
}

.pagination button {
    padding: 5px 10px;
    border: 1px solid #ddd;
    background-color: #007bff;
    color: #fff;
    cursor: pointer;
}

.pagination button:hover {
    background-color: #0056b3;
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
    <a href="Home.jsp" class="cart-button" >Back</a>
    <div class="container">
        <aside class="sidebar">
            <div class="filter-section">
                <h3>Thương hiệu</h3>
                <ul>
                    <li><label><input type="checkbox"> Thương hiệu 1</label></li>
                    <li><label><input type="checkbox"> Thương hiệu 2</label></li>
                    <li><label><input type="checkbox"> Thương hiệu 3</label></li>
                    <li><label><input type="checkbox"> Thương hiệu 4</label></li>
                    <li><label><input type="checkbox"> Thương hiệu 5</label></li>
                    <li><label><input type="checkbox"> Thương hiệu 6</label></li>
                </ul>
            </div>

            <div class="filter-section">
                <h3>Giá</h3>
                <input type="range" min="0" max="100" value="50">
                <div class="price-range">
                    <span>0.00đ</span>
                    <span>100.00đ</span>
                </div>
                <button>lọc</button>
            </div>

            <div class="filter-section">
                <h3>Kích cỡ</h3>
                <ul>
                    <li><label><input type="checkbox"> S</label></li>
                    <li><label><input type="checkbox"> M</label></li>
                    <li><label><input type="checkbox"> L</label></li>
                    <li><label><input type="checkbox"> XL</label></li>
                </ul>
            </div>

            <div class="filter-section">
                <h3>Màu sắc</h3>
                <ul>
                    <li><label><input type="radio" name="color"> Đen</label></li>
                    <li><label><input type="radio" name="color"> Cam</label></li>
                    <li><label><input type="radio" name="color"> Xanh nước biển</label></li>
                    <li><label><input type="radio" name="color"> Vàng</label></li>
                    <li><label><input type="radio" name="color"> Xanh lá cây</label></li>
                    <li><label><input type="radio" name="color"> Hồng</label></li>
                </ul>
            </div>

            <button>Lọc sản phẩm</button>
            <button>Xóa bộ lọc</button>

            <div class="popular-products">
                <h3>Sản phẩm phổ biến</h3>
                <div class="product">
                    <div class="product-image"></div>
                    <div class="product-info">
                        <p>Tên sản phẩm</p>
                        <p>00.00đ</p>
                        <div class="rating">★★★★★</div>
                    </div>
                </div>
                <div class="product">
                    <div class="product-image"></div>
                    <div class="product-info">
                        <p>Tên sản phẩm</p>
                        <p>00.00đ</p>
                        <div class="rating">★★★★★</div>
                    </div>
                </div>
                <div class="product">
                    <div class="product-image"></div>
                    <div class="product-info">
                        <p>Tên sản phẩm</p>
                        <p>00.00đ</p>
                        <div class="rating">★★★★★</div>
                    </div>
                </div>
            </div>
        </aside>

        <main class="main-content">
            <div class="toolbar">
                <select>
                    <option value="name-asc">Tên, A tới Z</option>
                    <option value="name-desc">Tên, Z tới A</option>
                    <option value="price-asc">Giá, thấp tới cao</option>
                    <option value="price-desc">Giá, cao tới thấp</option>
                </select>
            </div>

            <div class="product-grid">
                <div class="product-card">
                    <div class="product-image"></div>
                    <div class="product-info">
                        <p>Tên sản phẩm</p>
                        <p>00.00đ</p>
                    </div>
                </div>
                <!-- Repeat product-card as needed -->
                <div class="product-card">
                    <div class="product-image"></div>
                    <div class="product-info">
                        <p>Tên sản phẩm</p>
                        <p>00.00đ</p>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image"></div>
                    <div class="product-info">
                        <p>Tên sản phẩm</p>
                        <p>00.00đ</p>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image"></div>
                    <div class="product-info">
                        <p>Tên sản phẩm</p>
                        <p>00.00đ</p>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image"></div>
                    <div class="product-info">
                        <p>Tên sản phẩm</p>
                        <p>00.00đ</p>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image"></div>
                    <div class="product-info">
                        <p>Tên sản phẩm</p>
                        <p>00.00đ</p>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image"></div>
                    <div class="product-info">
                        <p>Tên sản phẩm</p>
                        <p>00.00đ</p>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image"></div>
                    <div class="product-info">
                        <p>Tên sản phẩm</p>
                        <p>00.00đ</p>
                    </div>
                </div>
                <div class="product-card">
                    <div class="product-image"></div>
                    <div class="product-info">
                        <p>Tên sản phẩm</p>
                        <p>00.00đ</p>
                    </div>
                </div>
                <!-- Add more product cards similarly -->
            </div>

            <div class="pagination">
                <span>1</span>
                <span>2</span>
                <span>3</span>
                <span>4</span>
                <button>Trang sau</button>
            </div>
        </main>
    </div>
</body>
</html>
