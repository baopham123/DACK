

<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Map"%>
<%@page import="model.Item"%>
<%@page import="model.Cart"%>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>header</title>
    </head>
    <body>

        <%
            User user = null;
            if (session.getAttribute("user") != null) {
                user = (User) session.getAttribute("user");
            }

            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
            DecimalFormat formatter = new DecimalFormat("###,###,###");
        %>
        <div class="header">
            <div class="container">
                <div class="logo-nav">
                    <nav class="navbar navbar-default">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header nav_2">
                            <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <div class="navbar-brand logo-nav-left ">
                                <h1 class="animated wow pulse" data-wow-delay=".5s"><a href="index.jsp">BOOK SHOP</a></h1>
                            </div>

                        </div> 
                        <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                            <ul class="nav navbar-nav">
                                <li class="active"><a href="index.jsp" class="act">Trang Chủ</a></li>	
                                <!-- Mega Menu -->
                                <li>
                                    <a href="product.jsp">Sản Phẩm</a>
                                </li>
                                <%if (user != null) {%>
                                <li><a href="cart.jsp">Giỏ hàng</a></li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-user" ></i><%=user.getUserName()%><b class="caret"></b></a>
                                    <ul class="dropdown-menu" style="float: right;margin-right: 50px;">
                                        <li><a href="/BookShop/LogoutServlet">Đăng xuất</a></li>
                                    </ul>
                                </li>
                                <% } else { %>
                                <li></i><a href="login.jsp">Đăng nhập</a></li>
                                        <% }%>

                            </ul>
                        </div>
                    </nav>
                </div>

            </div>
        </div>
    </body>
</html>
