<%-- 
    Document   : MyRequestOrderList
    Created on : Jun 11, 2024, 1:11:19 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Request Order List</title>
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
            .search-container {
                text-align: center;
                margin-bottom: 20px;
            }
            input[type="text"], input[type="date"] {
                padding: 10px;
                margin: 5px;
                width: 200px;
                border: 1px solid #ddd;
                border-radius: 4px;
            }
            table {
                width: 100%;
                border-collapse: collapse;
            }
            th, td {
                border: 1px solid #ddd;
                padding: 8px;
                text-align: left;
            }
            th {
                background-color: #4CAF50;
                color: white;
            }
            tr:nth-child(even) {
                background-color: #f2f2f2;
            }
            .button-container {
                display: flex;
                justify-content: center;
            }
            button, .pagination a {
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
            button:hover, .pagination a:hover {
                background-color: #45a049;
            }
            .pagination {
                text-align: center;
                margin-top: 20px;
            }
            .pagination a {
                color: white;
                margin: 0 5px;
                text-decoration: none;
                font-weight: bold;
            }
        </style>
    </head>
    <body>
        <h1>Request Order List</h1>

        <div class="search-container">
            <input type="text" id="searchInput" placeholder="Search for orders..">
            <button class="button" >Search</button>
        </div>
        <div>
            <input type="date" id="startDate" placeholder="Start Date">
            <input type="date" id="endDate" placeholder="End Date">
            <button class="button" >Filter</button>
        </div>

        <table>
            <thead>
                <tr>
                    <th>Order ID</th>
                    <th>Product Name</th>
                    <th>Date Request</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody id="orderTable">
                <tr>
                    <td>001</td>
                    <td>Product A</td>
                    <td>2024-06-10</td>
                    <td>Pending</td>
                    <td>
                        <div class="button-container">
                            <button class="button">View</button>
                            <button class="button">Update</button>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>002</td>
                    <td>Product A</td>
                    <td>2024-06-10</td>
                    <td>Pending</td>
                    <td>
                        <div class="button-container">
                            <button class="button">View</button>
                            <button class="button">Update</button>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>003</td>
                    <td>Product A</td>
                    <td>2024-06-10</td>
                    <td>Shipped</td>
                    <td>
                        <div class="button-container">
                            <button class="button">View</button>
                          
                        </div>
                    </td>
                </tr>

            </tbody>
        </table>

        <div class="pagination">
            <button type="button">&laquo; Previous</button>
            <a href="/">1</a>
            <a href="/">2</a>
            <a href="/">3</a>
            <a href="/">4</a>
            <a href="/">5</a>
            <button type="button">Next &raquo;</button>
        </div>

    </body>
</html>
