<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/homeStyle.css">
<title>Insert title here</title>
</head>
<body>
    <!-- Header -->
    <header>
        <div class="navbar">
            <div class="logo">Shop247</div>
            <nav>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Dịch Vụ Sửa Chữa</a></li>
                    <li><a href="#">About Us</a></li>
                    <li class="dropdown">
                        <a href="#">Sản Phẩm</a>
                        <ul class="dropdown-content">
                            <li><a href="#">Laptop</a></li>
                            <li><a href="#">Chuột</a></li>
                            <li><a href="#">Bàn Phím</a></li>
                            <li><a href="#">Linh Kiện</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <div class="user-area">
                <%-- Kiểm tra trạng thái đăng nhập --%>
                <%
                    String user = (String) session.getAttribute("username");
                    if (user != null) {
                %>
                    <span>Xin chào, <%= user %>!</span> | <a href="logout.jsp">Đăng Xuất</a>
                <% 
                    } else { 
                %>
                    <a href="login.jsp">Đăng Nhập</a> | <a href="register.jsp">Đăng Ký</a>
                <% 
                    } 
                %>
            </div>
            <div class="search-bar">
                <input type="text" placeholder="Tìm kiếm sản phẩm...">
                <button class="btn btn-primary">Tìm</button>
            </div>
        </div>
    </header>

    <!-- Sidebar & Main Content -->
    <div class="container d-flex">
        <aside class="sidebar">
            <h3>Danh Mục Sửa Chữa</h3>
            <ul>
                <li><a href="#">Sửa Laptop</a></li>
                <li><a href="#">Sửa Tablet</a></li>
                <li><a href="#">Sửa Điện Thoại</a></li>
            </ul>
        </aside>

        <main class="main-content">
            <!-- Banner Slider -->
            <div class="banner-slider">
                <div class="banner" id="banner1">Banner 1</div>
                <div class="banner" id="banner2">Banner 2</div>
                <div class="banner" id="banner3">Banner 3</div>
                <div class="banner" id="banner4">Banner 4</div>
                <div class="banner" id="banner5">Banner 5</div>
            </div>
        </main>
    </div>

    <!-- Footer -->
    <footer class="footer">
        <p>&copy; 2024 NongLamDev. All rights reserved.</p>
    </footer>

    <script src="js/homeScript.js"></script>
</body>
</html>