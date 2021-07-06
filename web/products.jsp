
<%@page import="java.text.DecimalFormat"%>
<%@page import="model.Product"%>
<%@page import="get.ProductGet"%>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BOOK STORE</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Classic Style Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //for-mobile-apps -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!-- js -->
        <script src="js/jquery.min.js"></script>
        <!-- //js -->
        <!-- cart -->
        <script src="js/simpleCart.min.js"></script>
        <!-- cart -->
        <!-- for bootstrap working -->
        <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
        <!-- //for bootstrap working -->
        <!-- animation-effect -->
        <link href="css/animate.min.css" rel="stylesheet"> 
        <script src="js/wow.min.js"></script>
        <script>
            new WOW().init();
        </script>
        <!-- //animation-effect -->
        <link href='//fonts.googleapis.com/css?family=Cabin:400,500,600,700' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>
    </head>
    <body>
        <%
            User user = null;
            if (session.getAttribute("user") != null) {
                user = (User) session.getAttribute("user");
            }
            DecimalFormat formatter = new DecimalFormat("###,###,###");
            ProductGet productGet = new ProductGet();
        %>
        <jsp:include page="header.jsp"></jsp:include>

            <div class="banner-top">
                <div class="container">
                    <h2 class="animated wow fadeInLeft" data-wow-delay=".5s">Sản Phẩm</h2>
                    <h3 class="animated wow fadeInRight" data-wow-delay=".5s"><a href="index.html">Trang Chủ</a><label>/</label>Sản Phẩm<label>/</label>Sách</h3>
                    <div class="clearfix"> </div>
                </div>
            </div>

            <div class="product">
                <div class="container">
                    <div class="col-md-12 animated wow fadeInRight" data-wow-delay=".5s">  

                        <div class="mid-popular">

                        <%
                            for (Product p : productGet.getListProductByCategory(1)) {
                        %>
                        <div class="col-sm-4 item-grid item-gr  simpleCart_shelfItem">

                            <div class="grid-pro" style="width: 250px; height: 400px;">
                                <div  class=" grid-product " >
                                    <figure>		
                                        <a href="single.jsp?productID=<%=p.getProductID()%>">
                                            <div class="grid-img">
                                                <img  src="<%=p.getProductImageBack()%>" class="img-responsive" alt="">
                                            </div>
                                            <div class="grid-img">
                                                <img  src="<%=p.getProductImageForward()%>" class="img-responsive"  alt="">
                                            </div>			
                                        </a>		
                                    </figure>	
                                </div>
                                <div class="women">
                                    <a href="#"><img src="" alt=""></a>
                                    <h6><a href="single.jsp?productID=<%=p.getProductID()%>"><%=p.getProductName()%></a></h6>
                                    <p ><em class="item_price"><%=formatter.format(p.getProductPrice())%> VNĐ</em></p>
                                    <%if (user != null) {%>
                                    <a href="CartServlet?command=plus&productID=<%=p.getProductID()%>" data-text="Thêm vào giỏ" class="but-hover1 item_add">Thêm vào giỏ</a>
                                    <% } else {%>
                                    <a href="login.jsp" data-text="Thêm vào giỏ" class="but-hover1 item_add">Thêm vào giỏ</a>
                                    <%}%>
                                </div>
                            </div>
                        </div>
                        <%
                            }
                        %>

                        <div class="clearfix"> </div>
                    </div>
                </div>
                <div class="clearfix"> </div>
                <div class="social animated wow fadeInUp" data-wow-delay=".1s">
                </div>
            </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
