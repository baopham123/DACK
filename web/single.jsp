
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
        <link href="css/easyzoom.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link rel="stylesheet" href="css/starability-all.min.css">

        <!-- js -->
        <script src="js/jquery.min.js"></script>
        <!-- //js -->
        <!-- cart -->
        <script src="js/simpleCart.min.js"></script>
        <script src="js/formatmoney.js"></script>
        <!-- cart -->
        <!-- for bootstrap working -->
        <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
        <!-- //for bootstrap working -->
        <!-- animation-effect -->
        <link href="css/animate.min.css" rel="stylesheet"> 
        <script src="js/wow.min.js"></script>
        <script src="js/jquery.priceformat.min.js"></script>

        <script>
            new WOW().init();
        </script>
        <!-- //animation-effect -->
        <link href='//fonts.googleapis.com/css?family=Cabin:400,500,600,700' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>
    </head>
    
</head>
<div id="fb-root"></div>

<body>
    <%
        User user = null;
            if(session.getAttribute("user") != null){
                user = (User) session.getAttribute("user");
            }
         ProductGet productGet = new ProductGet();
         Product product = new Product();
         String productID = "";
         if (request.getParameter("productID") != null) {
              productID = request.getParameter("productID");
              product = productGet.getProduct(Long.parseLong(productID));
         }
         DecimalFormat formatter = new DecimalFormat("###,###,###");
    %>

    <jsp:include page="header.jsp"></jsp:include>

        <div class="banner-top">
            <div class="container">
                <h2 class="animated wow fadeInLeft" data-wow-delay=".5s">Sản Phẩm</h2>
                <h3 class="animated wow fadeInRight" data-wow-delay=".5s"><a href="index.html">Trang Chủ</a><label>/</label>Đơn Phẩm</h3>
                <div class="clearfix"> </div>
            </div>
        </div>
        <div class="product">
            <div class="container">
                               <div class="col-md-12 animated wow fadeInRight" data-wow-delay=".5s">
                    <div class="col-md-5 grid-im">

                        <div class="flexslider">
                            <ul class="slides">
                                <li data-thumb="<%=product.getProductImage()%>">
                                <div class="thumb-image"> <img src="<%=product.getProductImage()%>" data-imagezoom="true" class="img-responsive"> </div>
                            </li>
                            <li data-thumb="<%=product.getProductImageForward()%>">
                                <div class="thumb-image"> <img src="<%=product.getProductImageForward()%>" data-imagezoom="true" class="img-responsive"> </div>
                            </li>
                            <li data-thumb="<%=product.getProductImageBack()%>">
                                <div class="thumb-image"> <img src="<%=product.getProductImageBack()%>" data-imagezoom="true" class="img-responsive"> </div>
                            </li>
                        </ul>
                    </div>
                </div>	

                <div class="col-md-7 single-top-in">
                    <div class="span_2_of_a1 simpleCart_shelfItem">
                        <h3><%=product.getProductName()%></h3>

                        <div class="price_single">
                            <form>
                                <fieldset class="starability-basic">
                                    <label for="rate1" title="Terrible">1 star</label>
                                    <input type="radio" id="rate2" name="rating" value="2" />
                                    <label for="rate2" title="Not good">2 stars</label>
                                    <input type="radio" id="rate3" name="rating" value="3" />
                                    <label for="rate3" title="Average">3 stars</label>
                                    <input type="radio" id="rate4" name="rating" value="4" />
                                    <label for="rate4" title="Very good">4 stars</label>
                                    <input type="radio" id="rate5" name="rating" value="5" checked="checked"/>
                                    <label for="rate5" title="Amazing">5 stars</label>
                                    <input type="radio" id="rate1" name="rating" value="1" />
                                </fieldset>
                            </form>
                            <br>
                            <span class="reducedfrom item_price" ><%=formatter.format(product.getProductPrice())%> VNĐ</span>
                            <%if(user!=null){ %>
                            <a href="CartServlet?command=plus&productID=<%=product.getProductID()%>" data-text="Thêm vào giỏ" class="but-hover1 item_add">Thêm vào giỏ</a>
                            <% }else {%>
                            <a href="login.jsp" data-text="Thêm vào giỏ" class="but-hover1 item_add">Thêm vào giỏ</a>
                            <%}%>
                            <div class="clearfix"> </div>
                        </div>

                    </div>
                    <!----- tabs-box ---->
                    <div class="sap_tabs">	
                        <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
                            <ul class="resp-tabs-list">
                                <li class="resp-tab-item " aria-controls="tab_item-0" role="tab"><span>Mô Tả Sản Phẩm</span></li>
                                <div class="clearfix"></div>
                            </ul>				  	 
                            <div class="resp-tabs-container">
                                <h2 class="resp-accordion resp-tab-active" role="tab" aria-controls="tab_item-0"><span class="resp-arrow"></span>Mô Tả Sản Phẩm</h2><div class="tab-1 resp-tab-content resp-tab-content-active" aria-labelledby="tab_item-0" style="display:block">
                                    <div class="facts">
                                        <p><%=product.getProductDescription()%></p>
                                    </div>

                                </div>
                                <h2 class="resp-accordion" role="tab" aria-controls="tab_item-1"><span class="resp-arrow"></span>Additional Information</h2><div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
                                    <div class="facts1">



                                    </div>

                                </div>									

                                <div class="comments-top-top">

                                    <div class="top-comment-left">

                                    </div>


                                </div>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"> </div>
            <div class="page-header">
            </div>
        </div></div>
</div>	
<jsp:include page="footer.jsp"></jsp:include>
<script src="js/imagezoom.js"></script>
<script defer src="js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<script>
// Can also be used with $(document).ready()
                        $(window).load(function () {
                            $('.flexslider').flexslider({
                                animation: "slide",
                                controlNav: "thumbnails"
                            });
                        });
</script>

</body>
</html>
