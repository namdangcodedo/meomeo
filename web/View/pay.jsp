<%-- 
    Document   : pay
    Created on : Jun 11, 2024, 1:48:07 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Director | Dashboard</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <meta name="description" content="Developed By M Abdur Rokib Promy">
    <meta name="keywords" content="Admin, Bootstrap 3, Template, Theme, Responsive">
    <!-- bootstrap 3.0.2 -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- font Awesome -->
    <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="${pageContext.request.contextPath}/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <!-- Theme style -->
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />

     <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
            }

            .container {
                width: 80%;
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

            .invoice-header {
                display: flex;
                justify-content: space-between;
                align-items: center;
                margin-bottom: 20px;
            }

            .invoice-header .logo {
                width: 150px;
                height: auto;
            }

            .invoice-header .invoice-info {
                text-align: right;
            }

            .invoice-info h3 {
                margin-bottom: 5px;
            }

            .invoice-info p {
                margin-bottom: 0;
            }

            .table {
                width: 100%;
                border-collapse: collapse;
            }

            th, td {
                text-align: left;
                padding: 8px;
                border: 1px solid #ddd;
            }

            th {
                background-color: #f0f0f0;
            }

            .table-total {
                margin-top: 20px;
            }

            .table-total tr:first-child th {
                text-align: right;
            }

            .table-total tr:last-child th,
            .table-total tr:last-child td {
                font-weight: bold;
            }

            .pagination {
                display: flex;
                justify-content: center;
                margin-top: 20px;
            }

            .pagination a {
                margin: 0 5px;
                padding: 10px 15px;
                text-decoration: none;
                color: #007bff;
                border: 1px solid #ddd;
                border-radius: 5px;
            }

            .pagination a.active {
                background-color: #007bff;
                color: white;
                border: 1px solid #007bff;
            }
        </style>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
    <body>
       <div class="container">
        <div class="row">
            <div class="col-lg-4 mb-lg-0 mb-3">
                <div class="card p-3">
                    <div class="img-box">
                        <img src="https://www.freepnglogos.com/uploads/visa-logo-download-png-21.png" alt="">
                    </div>
                    <div class="number">
                        <label class="fw-bold" for="">**** **
** 1060</label>
                    </div>
                    <div class="d-flex align-items-center justify-content-between">
                        <small><span class="fw-bold">Expiry date:</span><span>10/16</span></small>
                        <small><span class="fw-bold">Name:</span><span>Kumar</span></small>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 mb-lg-0 mb-3">
                <div class="card p-3">
                    <div class="img-box">
                        <img src="https://www.freepnglogos.com/uploads/mastercard-png/file-mastercard-logo-svg-wikimedia-commons-4.png"
                            alt="">
                    </div>
                    <div class="number">
                        <label class="fw-bold">**** **
** 1060</label>
                    </div>
                    <div class="d-flex align-items-center justify-content-between">
                        <small><span class="fw-bold">Expiry date:</span><span>10/16</span></small>
                        <small><span class="fw-bold">Name:</span><span>Kumar</span></small>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 mb-lg-0 mb-3">
                <div class="card p-3">
                    <div class="img-box">
                        <img src="https://www.freepnglogos.com/uploads/discover-png-logo/credit-cards-discover-png-logo-4.png"
                            alt="">
                    </div>
                    <div class="number">
                        <label class="fw-bold">**** **
** 1060</label>
                    </div>
                    <div class="d-flex align-items-center justify-content-between">
                        <small><span class="fw-bold">Expiry date:</span><span>10/16</span></small>
                        <small><span class="fw-bold">Name:</span><span>Kumar</span></small>
                    </div>
                </div>
            </div>
            <div class="col-12 mt-4">
                <div class="card p-3">
                    <p class="mb-0 fw-bold h4">Payment Methods</p>
                </div>
            </div>
            <div class="col-12">
                <div class="card p-3">
                    <div class="card-body border p-0">
                        <p>
                            <a class="btn btn-primary w-100 h-100 d-flex align-items-center justify-content-between"
                                data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="true"
                                aria-controls="collapseExample">
                                <span class="fw-bold">PayPal</span>
                                <span class="fab fa-cc-paypal">
                                </span>
                            </a>
                        </p>
                        <div class="collapse p-3 pt-0" id="collapseExample">
                            <div class="row">
                                <div class="col-8">
                                    <p class="h4 mb-0">Summary</p>
                                    <p class="mb-0"><span class="fw-bold">Product:</span><span class="c-green">: Name of
                                            product</span></p>
                                    <p class="mb-0"><span class="fw-bold">Price:</span><span
                                            class="c-green">:$452.90</span></p>
                                    <p class="mb-0">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Atque
                                        nihil neque
                                        quisquam aut
                                        repellendus, dicta vero? Animi dicta cupiditate, facilis provident quibusdam ab
                                        quis,
                                        iste harum ipsum hic, nemo qui!</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-body border p-0">
                        <p>
                            <a class="btn btn-primary p-2 w-100 h-100 d-flex align-items-center justify-content-between"
                                data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="true"
                                aria-controls="collapseExample">
                                <span class="fw-bold">Credit Card</span>
                                <span class="">
                                    <span class="fab fa-cc-amex"></span>
                                    <span class="fab fa-cc-mastercard"></span>
                                    <span class="fab fa-cc-discover"></span>
                                </span>
                            </a>
                        </p>
                        <div class="collapse show p-3 pt-0" id="collapseExample">
                            <div class="row">
                                <div class="col-lg-5 mb-lg-0 mb-3">
                                    <p class="h4 mb-0">Summary</p>
                                    <p class="mb-0"><span class="fw-bold">Product:</span><span class="c-green">: Name of
                                            product</span>
                                    </p>
                                    <p class="mb-0">
                                        <span class="fw-bold">Price:</span>
                                        <span class="c-green">:$452.90</span>
                                    </p>
                                    <p class="mb-0">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Atque
                                        nihil neque
                                        quisquam aut
                                        repellendus, dicta vero? Animi dicta cupiditate, facilis provident quibusdam ab
                                        quis,
                                        iste harum ipsum hic, nemo qui!</p>
                                </div>
                                <div class="col-lg-7">
                                    <form action="" class="form">
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="form__div">
                                                    <input type="text" class="form-control" placeholder=" ">
                                                    <label for="" class="form__label">Card Number</label>
                                                </div>
                                            </div>

                                            <div class="col-6">
                                                <div class="form__div">
                                                    <input type="text" class="form-control" placeholder=" ">
                                                    <label for="" class="form__label">MM / yy</label>
                                                </div>
                                            </div>

                                            <div class="col-6">
                                                <div class="form__div">
                                                    <input type="password" class="form-control" placeholder=" ">
                                                    <label for="" class="form__label">cvv code</label>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="form__div">
                                                    <input type="text" class="form-control" placeholder=" ">
                                                    <label for="" class="form__label">name on the card</label>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="btn btn-primary w-100">Sumbit</div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-12">
                <div class="btn btn-primary payment">
                    Make Payment
                </div>
            </div>
        </div>
    </div>
    </body>
</html>
