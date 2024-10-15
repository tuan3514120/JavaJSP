<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="<c:url value="css/stl.css"/>">
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-light bg-light justify-content-between"style="background-color:#EEEEEE;">
    <form class="form-inline">
        <a class="navbar-brand" href="#">TNV<img src="<c:url value="image/logo.png"/>"></a>
        <form class="form-inline">
            <input class="form-control mr-sm-2" type="search" placeholder="Tìm kiếm sản phẩm..." aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><img src="image/search.png">Tìm kiếm</button>
        </form>
        <form class="form-inline">




            <li class="nav-item">
                <a class="nav-link" href="login.jsp">Login</a>
            </li>


            <a class="btn btn-success btn-sm ml-3" href="show">
                <i class="fa fa-shopping-cart"></i> Cart
                <span class="badge badge-light">3</span>
            </a>

        </form>
</nav>


<div class="navbar navbar-expand-lg navbar-light" style="background-color: rgb(8, 138, 8);">


    <div class="container"
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" <a href="<c:url value="trangchu.jsp"/>"">Trang chủ</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Chăm sóc da
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" <a href="<c:url value="srm.jsp"/>">Sữa rửa mặt</a></a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Nước tẩy trang</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Nước hoa hồng</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Serum</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Tẩy tế bào chết</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Kem dưỡng</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Xịt khoáng</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Kem chống nắng</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Sản phẩm đặc trị
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" <a href="<c:url value="mun.jsp"/>">Trị mụn</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Trị sẹo</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Trị thâm</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Trị nám</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Trị nếp nhăn</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Trị tàn nhang</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Chăm sóc cơ thể
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" <a href="<c:url value="wax.jsp"/>">Sáp vuốt tóc</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Dầu gội</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Dầu xả</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Dầu dưỡng tóc</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Xịt khử mùi</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Nước hoa</a>

                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" <a href="<c:url value="blog.jsp"/>">Blogs</a></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" <a href="<c:url value="about.jsp"/>">About Shop</a></a>


            </li>


    </div>
</div>


</nav>
</div>


<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img class="d-block w-100" src="11.png" style="width: 100%" alt="First slide">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="3.jpg" alt="Second slide">
        </div>

        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
        <div class="carousel-caption d-none d-md-block">
            <h5><button type="button" class="btn btn-dark">XEM CHI TIẾT SẢN PHẨM</button></h5>

            <p></p>


        </div>
    </div>

    <div class="row">
        <div class="col-12 title">
            <h3><img src="image/hot.png"> Sản phẩm HOT</h3>
            <hr></div>
    </div>



    <div class="row">
        <c:forEach items="${listP}" var="o">
            <div class="col-2th">
                <div class="card">
                    <div class="image">
                        <img src="./image/${o.image}">
                    </div>
                    <div class="name">
                        <p><center>${o.title}</center></p>
                    </div>
                    <div class="price">
                        <p><center>${o.price}</center></p>
                    </div>
                    <div class="col">
                        <a href="#" class="btn btn-success btn-block">Thêm vào giỏ hàng</a>
                    </div>
                </div>
            </div>
        </c:forEach>












        <nav class="navbar navbar-expand-lg navbar-light bg-light" style="background-color: rgb(110,110,110);">

            <ul class="navbar-nav">
                <nav class="nav flex-column">
                    <a class="nav-link disabled" href="#">THÔNG TIN CỬA HÀNG :</a>
                    <a class="nav-link" href="#"><img src="image/placeholder.png"> Địa chỉ: 110 Phan Thanh, Phường Thạc Gián, TP.Đà Nẵng</a>
                    <a class="nav-link" href="#"><img src="image/instagram.png"> IG:qtuan_nguyen</a>
                    <a class="nav-link" href="#"><img src="image/mail.png"> Email:nvqtuan.20it6@vku.udn.vn</a>
                    <a class="nav-link" href="#"><img src="image/facebook.png"> FB:http://fb.com/TNV1912</a></nav>

                <li class="navbar-nav">
                    <nav class="nav flex-column">
                        <a class="nav-link disabled" href="#">HỖ TRỢ KHÁCH HÀNG :</a>

                        <a class="nav-link" href="#"><img src="image/call.png"> Tel:0974989154</a>
                        <a class="nav-link" href="#"><img src="image/money.png"> Hướng dẫn mua hàng</a>
                        <a class="nav-link" href="#"><img src="image/money.png"> Phương thức thanh toán</a>
                        <a class="nav-link" href="#"><img src="image/review.png"> Chính sách xử lý khiếu nại</a></nav>

                </li>
                <li class="nav-item">

                    <nav class="nav flex-column">
                        <a class="nav-link disabled" href="#">CHƯƠNG TRÌNH & CHÍNH SÁCH :</a>
                        <a class="nav-link" href="#"><img src="image/delivery.png"> Chính sách vận chuyển</a>
                        <a class="nav-link" href="#"><img src="image/dongbo.png"> Chính sách đổi trả</a>
                        <a class="nav-link" href="#"><img src="image/lock.png"> Chính sách bảo mật</a>
                        <a class="nav-link" href="#"><img src="image/free.png"> Chương trình FreeShip</a></nav>

                <li class="navbar-nav">
                    <nav class="nav flex-column">
                        <footer class="container-fluid text-center">
                            <br><br><br>
                            <p>Đăng ký để luôn nhận thông báo mới nhất từ chúng tôi</p>
                            <form class="form-inline">Get Deals :
                                <input type="email" class="form-control" size="30" placeholder="Email Address">
                                <button type="button" class="btn btn-danger"> Sign Up</button>
                            </form>
                        </footer>



            </ul>

    </div>

    </nav>

    <ul class="nav justify-content-center"style="background-color: rgb(66,66,66);">
        <li class="nav-item">
            <a class="nav-link active" href="#">Giới thiệu</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Cửa hàng</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Blogs</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Câu hỏi thường gặp</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Liên hệ</a>
        </li>
    </ul>
    <div class="copyrightText""background-color: rgb(66,66,66);">
    <p>Copyright by <a href="#">NguyenVanQuocTuan-20IT290</a>. All Right Reserved </p>
</div>


<script src="bootstrap/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function () {

        $('button').tooltip();})</script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>

</html>