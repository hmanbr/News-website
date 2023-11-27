<%-- 
    Document   : news
    Created on : Jul 13, 2023, 9:29:28 PM
    Author     : MSI
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>News  HTML-5 Template </title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

        <!-- CSS here -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/ticker-style.css">
        <link rel="stylesheet" href="assets/css/flaticon.css">
        <link rel="stylesheet" href="assets/css/slicknav.css">
        <link rel="stylesheet" href="assets/css/animate.min.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/slick.css">
        <link rel="stylesheet" href="assets/css/nice-select.css">
        <link rel="stylesheet" href="assets/css/style.css">
    </head>

    <body>
        <!-- Preloader Start -->
        <div id="preloader-active">
            <div class="preloader d-flex align-items-center justify-content-center">
                <div class="preloader-inner position-relative">
                    <div class="preloader-circle"></div>
                    <div class="preloader-img pere-text">
                        <img src="assets/img/logo/logo.png" alt="">
                    </div>
                </div>
            </div>
        </div>
        <!-- Preloader Start -->
        <header>
            <!-- Header Start -->
            <div class="header-area">
                <div class="main-header ">
                    <div class="header-top black-bg d-none d-sm-block">
                        <div class="container">
                            <div class="col-xl-12">
                                <div class="row d-flex justify-content-between align-items-center">
                                    <div class="header-info-left">
                                        <ul>     
                                            <li class="title"><span class="flaticon-energy"></span> trending-title</li>
                                            <li>Class property employ ancho red multi level mansion</li>
                                        </ul>
                                    </div>
                                    <div class="header-info-right">
                                        <ul class="header-date">
                                            <li><span class="flaticon-calendar"></span> +880166 253 232</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="header-mid gray-bg">
                        <div class="container">
                            <div class="row d-flex align-items-center">
                                <!-- Logo -->
                                <div class="col-xl-3 col-lg-3 col-md-3 d-none d-md-block">
                                    <div class="logo">
                                        <a href="index.jsp"><img src="assets/img/logo/logo.png" alt=""></a>
                                    </div>
                                </div>
                                <div class="col-xl-9 col-lg-9 col-md-9">
                                    <div class="header-banner f-right ">
                                        <img src="assets/img/gallery/header_card.png" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="header-bottom header-sticky">
                        <div class="container">
                            <div class="row align-items-center">
                                <div class="col-xl-8 col-lg-8 col-md-12 header-flex">
                                    <!-- sticky -->
                                    <div class="sticky-logo">
                                        <a href="index.jsp"><img src="assets/img/logo/logo.png" alt=""></a>
                                    </div>
                                    <!-- Main-menu -->
                                    <div class="main-menu d-none d-md-block">
                                        <nav>                  
                                            <ul id="navigation">
                                                <li><a href="${pageContext.request.contextPath}/home">Home</a></li>
                                                <li><a href="about.jsp">about</a></li>
                                                <li><a href="${pageContext.request.contextPath}/category">Category</a></li>
                                            </ul>
                                        </nav>
                                    </div>
                                </div>             
                                <div class="col-xl-4 col-lg-4 col-md-4">
                                    <div class="header-right f-right d-none d-lg-block">
                                        <!-- Heder social -->
                                        <ul class="header-social">    
                                            <li><a href="https://www.fb.com/sai4ull"><i class="fab fa-facebook-f"></i></a></li>
                                            <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                            <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                                            <li> <a href="#"><i class="fab fa-youtube"></i></a></li>
                                        </ul>
                                        <!-- Search Nav -->
                                        <div class="nav-search search-switch">
                                            <i class="fa fa-search"></i>
                                        </div>
                                    </div>
                                </div>
                                <!-- Mobile Menu -->
                                <div class="col-12">
                                    <div class="mobile_menu d-block d-md-none"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Header End -->
        </header>
        <main>
            <!-- About US Start -->
            <div class="about-area2 gray-bg pt-60 pb-60">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8">
                            <!-- Trending Tittle -->
                            <div class="about-right mb-90">
                                <div class="about-img">
                                    <img src="${article.image}" alt="">
                                </div>
                                <div class="heading-news mb-30 pt-30">
                                    <h3>${article.title}</h3>
                                </div>
                                <div class="about-prea">
                                    <p class="about-pera1 mb-25">${article.content}</p>

                                </div> 
                            </div>
                            <div id="comment-section" class="comments-area">
                                <c:forEach var="a" items="${top3comment}">
                                    <div class="comment-list">
                                        <div class="single-comment justify-content-between d-flex">
                                            <div class="user justify-content-between d-flex">
                                                <div class="thumb">
                                                    <img src="assets/img/comment/comment_1.png" alt="">
                                                </div>
                                                <div class="desc">
                                                    <p class="comment">
                                                        ${a.message}
                                                    </p>
                                                    <div class="d-flex justify-content-between">
                                                        <div class="d-flex align-items-center">
                                                            <h5>
                                                                <a href="#">${a.name}</a>
                                                            </h5>
                                                            <p class="date">${a.date}</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                            <button onclick="loadMore()" class="btn btn-primary">Load more comment</button>
                            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
                            <script>
                                function loadMore() {
                                    var amount = document.getElementsByClassName("comment-list").length;
                                    var id = <%= request.getAttribute("id") %>;
                                    $.ajax({
                                        url: "/Assigment/comment",
                                        type: "get", //send it through get method
                                        data: {
                                            exits: amount,
                                            id: id
                                        },
                                        success: function (data) {
                                            var row = document.getElementById("comment-section");
                                            row.innerHTML += data;
                                        },
                                        error: function (xhr) {
                                            //Do Something to handle error
                                        }
                                    });
                                }
                            </script>      

                            <!-- From -->
                            <div class="row">
                                <div class="col-lg-8">
                                    <form class="form-contact contact_form mb-80" action="comment" method="post" id="contactForm" novalidate="novalidate">
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <textarea class="form-control w-100 error" name="message" id="message" cols="30" rows="9" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Message'" placeholder="Enter Message"></textarea>
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <input class="form-control error" name="name" id="name" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" placeholder="Enter your name">
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <input class="form-control error" name="email" id="email" type="email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" placeholder="Email">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group mt-3">
                                            <button onclick="postComment()" class="button button-contactForm boxed-btn boxed-btn2">Send</button>
                                        </div>
                                    </form>
                                    <div id="reply-message"></div>
                                </div>
                            </div>
                            <script>
                                function postComment() {
                                    var message = document.getElementById("message").value;
                                    var name = document.getElementById("name").value;
                                    var email = document.getElementById("email").value;
                                    var id = <%= request.getAttribute("id") %>;

                                    if (!validateForm()) {
                                        var messageElement = document.getElementById("reply-message");
                                        messageElement.innerHTML = "Please fix the form errors before submitting.";
                                        return; // Exit the function without making the Ajax call
                                    }
                                    $.ajax({
                                        url: "/Assigment/comment",
                                        type: "post", //send it through post method
                                        data: {
                                            id: id,
                                            message: message,
                                            name: name,
                                            email: email
                                        },
                                        success: function (data) {
                                            var messageElement = document.getElementById("reply-message");
                                            messageElement.innerHTML = "Reply successful, reload page to see";
                                        },
                                        error: function (xhr) {
                                            var messageElement = document.getElementById("reply-message");
                                            messageElement.innerHTML = "Reply fail";
                                        }
                                    });
                                }

                                function validateForm() {
                                    var message = document.getElementById("message").value;
                                    var name = document.getElementById("name").value;
                                    var email = document.getElementById("email").value;

                                    // Check message length
                                    if (message.length < 10) {
                                        
                                        return false;
                                    }

                                    // Check name length
                                    if (name.length < 2) {
                                        
                                        return false;
                                    }

                                    // Check email format
                                    var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                                    if (!emailPattern.test(email)) {
                                        
                                        return false;
                                    }

                                    // All conditions are met, allow form submission
                                    return true;
                                }
                            </script>
                        </div>
                        <div class="col-lg-4">
                            <!-- Flow Socail -->
                            <div class="single-follow mb-45">
                                <div class="single-box">
                                    <div class="follow-us d-flex align-items-center">
                                        <div class="follow-social">
                                            <a href="#"><img src="assets/img/news/icon-fb.png" alt=""></a>
                                        </div>
                                        <div class="follow-count">  
                                            <span>8,045</span>
                                            <p>Fans</p>
                                        </div>
                                    </div> 
                                    <div class="follow-us d-flex align-items-center">
                                        <div class="follow-social">
                                            <a href="#"><img src="assets/img/news/icon-tw.png" alt=""></a>
                                        </div>
                                        <div class="follow-count">
                                            <span>8,045</span>
                                            <p>Fans</p>
                                        </div>
                                    </div>
                                    <div class="follow-us d-flex align-items-center">
                                        <div class="follow-social">
                                            <a href="#"><img src="assets/img/news/icon-ins.png" alt=""></a>
                                        </div>
                                        <div class="follow-count">
                                            <span>8,045</span>
                                            <p>Fans</p>
                                        </div>
                                    </div>
                                    <div class="follow-us d-flex align-items-center">
                                        <div class="follow-social">
                                            <a href="#"><img src="assets/img/news/icon-yo.png" alt=""></a>
                                        </div>
                                        <div class="follow-count">
                                            <span>8,045</span>
                                            <p>Fans</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- New Poster -->
                            <div class="news-poster d-none d-lg-block">
                                <img src="assets/img/news/news_card.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- About US End -->
        </main>
        <footer>
            <!-- Footer Start-->
            <div class="footer-main footer-bg">
                <div class="footer-area footer-padding">
                    <div class="container">
                        <div class="row d-flex justify-content-between">
                            <div class="col-xl-3 col-lg-3 col-md-5 col-sm-8">
                                <div class="single-footer-caption mb-50">
                                    <div class="single-footer-caption mb-30">
                                        <!-- logo -->
                                        <div class="footer-logo">
                                            <a href="index.jsp"><img src="assets/img/logo/logo2_footer.png" alt=""></a>
                                        </div>
                                        <div class="footer-tittle">
                                            <div class="footer-pera">
                                                <p class="info1">Lorem ipsum dolor sit amet, nsectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.</p>
                                                <p class="info2">198 West 21th Street, Suite 721 New York,NY 10010</p>
                                                <p class="info2">Phone: +95 (0) 123 456 789 Cell: +95 (0) 123 456 789</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-lg-4 col-md-5 col-sm-7">
                                <div class="single-footer-caption mb-50">
                                    <div class="footer-tittle">
                                        <h4>Popular post</h4>
                                    </div>
                                    <!-- Popular post -->
                                    <c:forEach var="a" items="${articleList}" varStatus="loop">
                                        <c:if test="${loop.index < 3}">
                                            <div class="whats-right-single mb-20">
                                                <div class="whats-right-img">
                                                    <img src="${a.image}" alt="" style="width: 86px; height: 80px;">
                                                </div>
                                                <div class="whats-right-cap">
                                                    <h4><a href="news?aid=${a.id}">${a.title}</a></h4>
                                                    <p>${a.date}</p> 
                                                </div>
                                            </div>
                                        </c:if>
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-3 col-md-5 col-sm-7">
                                <div class="single-footer-caption mb-50">
                                    <div class="banner">
                                        <img src="assets/img/gallery/body_card4.png" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- footer-bottom aera -->
                <div class="footer-bottom-area footer-bg">
                    <div class="container">
                        <div class="footer-border">
                            <div class="row d-flex align-items-center">
                                <div class="col-xl-12 ">
                                    <div class="footer-copy-right text-center">
                                        <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Footer End-->
        </footer>
        <!-- Search model Begin -->
        <div class="search-model-box">
            <div class="d-flex align-items-center h-100 justify-content-center">
                <div class="search-close-btn">+</div>
                <form class="search-model-form" action="search" method="post">
                    <input type="text" name="searchText" id="search-input" placeholder="Searching key.....">
                </form>
            </div>
        </div>
        <!-- Search model end -->

        <!-- JS here -->

        <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
        <!-- Jquery, Popper, Bootstrap -->
        <script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="./assets/js/popper.min.js"></script>
        <script src="./assets/js/bootstrap.min.js"></script>
        <!-- Jquery Mobile Menu -->
        <script src="./assets/js/jquery.slicknav.min.js"></script>

        <!-- Jquery Slick , Owl-Carousel Plugins -->
        <script src="./assets/js/owl.carousel.min.js"></script>
        <script src="./assets/js/slick.min.js"></script>
        <!-- Date Picker -->
        <script src="./assets/js/gijgo.min.js"></script>
        <!-- One Page, Animated-HeadLin -->
        <script src="./assets/js/wow.min.js"></script>
        <script src="./assets/js/animated.headline.js"></script>
        <script src="./assets/js/jquery.magnific-popup.js"></script>

        <!-- Scrollup, nice-select, sticky -->
        <script src="./assets/js/jquery.scrollUp.min.js"></script>
        <script src="./assets/js/jquery.nice-select.min.js"></script>
        <script src="./assets/js/jquery.sticky.js"></script>

        <!-- contact js -->
        <script src="./assets/js/contact.js"></script>
        <script src="./assets/js/jquery.form.js"></script>
        <script src="./assets/js/jquery.validate.min.js"></script>
        <script src="./assets/js/mail-script.js"></script>
        <script src="./assets/js/jquery.ajaxchimp.min.js"></script>

        <!-- Jquery Plugins, main Jquery -->	
        <script src="./assets/js/plugins.js"></script>
        <script src="./assets/js/main.js"></script>

    </body>
</html>