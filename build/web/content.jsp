
<%@page import="java.text.DecimalFormat"%>
<%@page import="model.Product"%>
<%@page import="get.ProductGet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            ProductGet productGet = new ProductGet();
            DecimalFormat formatter = new DecimalFormat("###,###,###");
        %>
        <div class="content">
            <div class="content-head">

                <div class="col-md-6 col-m1 animated wow fadeInLeft" data-wow-delay=".1s">
                    <div class="col-1">
                        <div class="col-md-6 col-2">
                            <a href=""><img src="images/novel.png" class="img-responsive" alt="">
                            </a>
                        </div>
                        <div class="col-md-6 col-p">
                            <h5>NOVEL BOOK</h5>
                            <p>Chúng tôi có rất nhiều những sản phẩm nổi tiếng từ các tác giả nổi tiếng như Ernest Miller Hemingway, Franz Kafka, J.R.R.Tolkien,...</p>
                            <a href="" class="shop" data-hover="Xem Ngay">Xem Ngay</a>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="col-1">
                        <div class="col-md-6 col-p">
                            <h5>LOVE BOOK</h5>
                            <p>Chúng tôi có rất nhiều những sản phẩm nổi tiếng từ các tác giả như Maureen Child, Debra Mullins, Linda Howard,...</p>
                            <a href="" class="shop" data-hover="Xem Ngay">Xem Ngay</a>
                        </div>
                        <div class="col-md-6 col-2">
                            <a href=""><img src="images/love.jpg" class="img-responsive" alt="">
                            </a></div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
                <div class="col-md-6 col-m1 animated wow fadeInLeft" data-wow-delay=".1s">
                    <div class="col-1">
                        <div class="col-md-6 col-2">
                            <a href="#"><img src="images/thieunhi.jpg" class="img-responsive" alt="">
                            </a></div>
                        <div class="col-md-6 col-p">
                            <h5>SÁCH THIẾU NHI</h5>
                            <p>Chúng tôi có rất nhiều những sản phẩm nổi tiếng từ các tác giả nổi tiếng như Hector Malot, Edomondo De Amicis,...</p>
                            <a href="" class="shop" data-hover="Xem Ngay">Xem Ngay</a>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="col-1">
                        <div class="col-md-6 col-p">
                            <h5>SÁCH TRINH THÁM</h5>
                            <p>Chúng tôi có rất nhiều những sản phẩm nổi tiếng từ các tác giả như Conan Doyle, Agatha Christie, Dan Brown,...</p>
                            <a href="" class="shop" data-hover="Xem Ngay">Xem Ngay</a>
                        </div>
                        <div class="col-md-6 col-2">
                            <a href=""><img src="images/trinhtham.jpg" class="img-responsive" alt="">
                            </a></div>
                        <div class="clearfix"> </div>
                    </div>
                </div>


                <div class="clearfix"></div>
            </div>	
        </div>

        <!---->



        <!----->
        <!---->
        <div class="content-top">

            <div class="col-md-12 col-md2 animated wow fadeInLeft" data-wow-delay=".1s">
                <% for (Product p : productGet.getList3ProductByCategory(1)) {%> 
                <div class="col-sm-4 item-grid simpleCart_shelfItem">
                    <div class="grid-pro">
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

                            <h6><a href="single.jsp?productID=<%=p.getProductID()%>"><%=p.getProductName()%></a></h6>
                            <p ><em class="item_price"><%=formatter.format(p.getProductPrice())%> VNĐ</em></p>

                        </div>
                    </div>	
                </div>				
                <% }%>

                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
        </div>
    </body>
</html>
