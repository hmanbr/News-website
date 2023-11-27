<%-- 
    Document   : home
    Created on : Jun 13, 2023, 10:19:18 AM
    Author     : MSI
--%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.time.LocalDate" %>
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
                                            <li>${articleList[0].title}</li>
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
                                        <a href="${pageContext.request.contextPath}/home"><img src="assets/img/logo/logo.png" alt="" ></a>
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
                                        <a href="${pageContext.request.contextPath}/home"><img src="assets/img/logo/logo.png" alt=""></a>
                                    </div>
                                    <!-- Main-menu -->
                                    <div class="main-menu d-none d-md-block">
                                        <nav>                  
                                            <ul id="navigation">
                                                <li><a href="${pageContext.request.contextPath}/home">Home</a></li>
                                                <li><a href="about.jsp">About</a></li>
                                                <li><a href="${pageContext.request.contextPath}/category">Category</a></li>
                                                    <c:if test="${sessionScope.acc == null}">
                                                    <li><a href="login.jsp">Login</a></li>
                                                    </c:if>
                                                    <c:if test="${sessionScope.acc != null}">
                                                    <li><a href="manage">Welcome ${sessionScope.acc.username}</a></li>
                                                    <li><a href="logout">Logout</a></li>
                                                    </c:if>
                                            </ul>
                                        </nav>
                                    </div>
                                </div>             
                                <div class="col-xl-4 col-lg-4 col-md-4">
                                    <div class="header-right f-right d-none d-lg-block">
                                        <!-- Heder social -->
                                        <ul class="header-social">    
                                            <li><a href="https://www.facebook.com/ConganThuDo/?locale=vi_VN"><i class="fab fa-facebook-f"></i></a></li>
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
            <!-- Trending Area Start -->
            <div class="trending-area fix pt-25 gray-bg">
                <div class="container">
                    <div class="trending-main">
                        <div class="row">
                            <div class="col-lg-8">
                                <!-- Trending Top -->
                                <div class="slider-active">
                                    <!-- Single -->
                                    <c:forEach var="a" items="${articleList}" varStatus="loop">
                                        <c:if test="${loop.index < 3}">
                                            <div class="single-slider">
                                                <div class="trending-top mb-30">
                                                    <div class="trend-top-img">
                                                        <img src="${a.image}" alt="">
                                                        <div class="trend-top-cap">
                                                            <span class="bgr" data-animation="fadeInUp" data-delay=".2s" data-duration="1000ms">${a.category}</span>
                                                            <h2><a href="news?aid=${a.id}" data-animation="fadeInUp" data-delay=".4s" data-duration="1000ms">${a.title}</a></h2>
                                                                <c:forEach var="b" items="${authorList}">
                                                                    <c:if test="${a.author_id eq b.id}">
                                                                    <p data-animation="fadeInUp" data-delay=".6s" data-duration="1000ms">by ${b.name} - ${a.date}</p>
                                                                </c:if>
                                                            </c:forEach>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:if>
                                    </c:forEach>
                                </div>
                            </div>
                            <!-- Right content -->
                            <div class="col-lg-4">
                                <!-- Trending Top -->
                                <div class="row">
                                    <div class="col-lg-12 col-md-6 col-sm-6">
                                        <div class="trending-top mb-30">
                                            <div class="trend-top-img">
                                                <img src="${articleList[3].image}" alt="">
                                                <div class="trend-top-cap trend-top-cap2">
                                                    <span class="bgb">${articleList[3].category}</span>
                                                    <h2><a href="news?aid=${articleList[3].id}">${articleList[3].title}</a></h2>
                                                    <p>${articleList[3].date}</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-6 col-sm-6">
                                        <div class="trending-top mb-30">
                                            <div class="trend-top-img">
                                                <img src="${articleList[4].image}" alt="">
                                                <div class="trend-top-cap trend-top-cap2">
                                                    <span class="bgg">${articleList[4].category}</span>
                                                    <h2><a href="news?aid=${articleList[4].id}">${articleList[4].title}</a></h2>
                                                    <p>${articleList[4].date}</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Trending Area End -->


            <!-- Whats New Start -->
            <section class="whats-news-area pt-50 pb-20 gray-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8">
                            <div class="whats-news-wrapper">
                                <!-- Heading & Nav Button -->
                                <div class="row justify-content-between align-items-end mb-15">
                                    <div class="col-xl-4">
                                        <div class="section-tittle mb-30">
                                            <h3>Whats New</h3>
                                        </div>
                                    </div>
                                    <div class="col-xl-8 col-md-9">
                                        <div class="properties__button">
                                            <!--Nav Button  -->                                            
                                            <nav>                                                 
                                                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                                    <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Lifestyle</a>
                                                    <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Showbiz</a>
                                                    <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Health</a>
                                                    <a class="nav-item nav-link" id="nav-last-tab" data-toggle="tab" href="#nav-last" role="tab" aria-controls="nav-contact" aria-selected="false">Sports</a>
                                                    <a class="nav-item nav-link" id="nav-Sports" data-toggle="tab" href="#nav-nav-Sport" role="tab" aria-controls="nav-contact" aria-selected="false">Technology</a>
                                                </div>
                                            </nav>
                                            <!--End Nav Button  -->

                                            <script>
                                                // Get references to the necessary elements
                                                const navTabs = document.getElementById('nav-tab');
                                                const paginationContainer = document.getElementById('pagination-container');

                                                // Add a click event listener to the navigation tabs
                                                navTabs.addEventListener('click', function (event) {
                                                event.preventDefault();
                                                        // Update the endPage value based on the selected tab
                                                        let endPage;
                                                        switch (event.target.id) {
                                                case 'nav-home-tab':
                                                        endPage = endPageLifestyle; // Set the desired endPage value for the 'Lifestyle' tab
                                                        break;
                                                        case 'nav-profile-tab':
                                                        endPage = endPageShowbiz; // Set the desired endPage value for the 'Showbiz' tab
                                                        break;
                                                        case 'nav-contact-tab':
                                                        endPage = endPageHealth; // Set the desired endPage value for the 'Health' tab
                                                        break;
                                                        case 'nav-last-tab':
                                                        endPage = endPageSport; // Set the desired endPage value for the 'Sports' tab
                                                        break;
                                                        case 'nav-Sports':
                                                        endPage = endPageTechnology; // Set the desired endPage value for the 'Technology' tab
                                                        break;
                                                        default:
                                                        endPage = endPage; // Default endPage value if no tab matches
                                                }

                                                // Update the pagination links with the new endPage value

                                            </script>

                                        </div>
                                    </div>
                                </div>
                                <!-- Tab content -->
                                <div class="row">
                                    <div class="col-12">
                                        <!-- Nav Card -->
                                        <div class="tab-content" id="nav-tabContent">
                                            <!-- card one -->
                                            <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">       
                                                <div class="row">
                                                    <!-- Left Details Caption -->
                                                    <div class="col-xl-6 col-lg-12">
                                                        <div class="whats-news-single mb-40 mb-40">
                                                            <div class="whates-img">
                                                                <img src="${lifestyleArticleList[0].image}" alt="">
                                                            </div>
                                                            <div class="whates-caption">
                                                                <h4><a href="news?aid=${a.id}">${lifestyleArticleList[0].title}</a></h4>
                                                                    <c:forEach var="b" items="${authorList}">
                                                                        <c:if test="${lifestyleArticleList[0].author_id eq b.id}">
                                                                        <span>by ${b.name} - ${lifestyleArticleList[0].date}</span>
                                                                    </c:if>
                                                                </c:forEach>
                                                                <c:set var="content" value="${lifestyleArticleList[0].content}" />
                                                                <c:set var="firstSentence" value="${fn:substringBefore(content, '.')}"/>
                                                                <p>${firstSentence}</p>                                                            
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Right single caption -->
                                                    <div class="col-xl-6 col-lg-12">
                                                        <div class="row">
                                                            <!-- single -->
                                                            <c:forEach var="a" items="${lifestyleArticleList}" varStatus="loop">
                                                                <c:if test="${loop.index < 3}">
                                                                    <div class="col-xl-12 col-lg-6 col-md-6 col-sm-10">
                                                                        <div class="whats-right-single mb-20">
                                                                            <div class="whats-right-img">
                                                                                <img src="${a.image}" alt="" style="width: 124px; height: 104px;">
                                                                            </div>
                                                                            <div class="whats-right-cap">
                                                                                <span class="colorb">LIFESTYLE</span>
                                                                                <h4><a href="news?aid=${a.id}">${a.title}</a></h4>
                                                                                <p>${a.date}</p> 
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </c:if>
                                                            </c:forEach>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Card two -->
                                            <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                                                <div class="row">
                                                    <!-- Left Details Caption -->
                                                    <div class="col-xl-6">
                                                        <div class="whats-news-single mb-40">
                                                            <div class="whates-img">
                                                                <img src="${showbizArticleList[0].image}" alt="">
                                                            </div>
                                                            <div class="whates-caption">
                                                                <h4><a href="news?aid=${a.id}">${showbizArticleList[0].title}</a></h4>
                                                                    <c:forEach var="b" items="${authorList}">
                                                                        <c:if test="${showbizArticleList[0].author_id eq b.id}">
                                                                        <span>by ${b.name} - ${showbizArticleList[0].date}</span>
                                                                    </c:if>
                                                                </c:forEach>
                                                                <c:set var="content" value="${showbizArticleList[0].content}" />
                                                                <c:set var="firstSentence" value="${fn:substringBefore(content, '.')}"/>
                                                                <p>${firstSentence}</p>                                                            
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Right single caption -->
                                                    <div class="col-xl-6 col-lg-12">
                                                        <div class="row">
                                                            <!-- single -->
                                                            <c:forEach var="a" items="${showbizArticleList}" varStatus="loop">
                                                                <c:if test="${loop.index < 3}">
                                                                    <div class="col-xl-12 col-lg-6 col-md-6 col-sm-10">
                                                                        <div class="whats-right-single mb-20">
                                                                            <div class="whats-right-img">
                                                                                <img src="${a.image}" alt="" style="width: 124px; height: 104px;">
                                                                            </div>
                                                                            <div class="whats-right-cap">
                                                                                <span class="colorb">SHOWBIZ</span>
                                                                                <h4><a href="news?aid=${a.id}">${a.title}</a></h4>
                                                                                <p>${a.date}</p> 
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </c:if>
                                                            </c:forEach>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Card three -->
                                            <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
                                                <div class="row">
                                                    <!-- Left Details Caption -->
                                                    <div class="col-xl-6">
                                                        <div class="whats-news-single mb-40">
                                                            <div class="whates-img">
                                                                <img src="${healthArticleList[0].image}" alt="">
                                                            </div>
                                                            <div class="whates-caption">
                                                                <h4><a href="news?aid=${a.id}">${healthArticleList[0].title}</a></h4>
                                                                    <c:forEach var="b" items="${authorList}">
                                                                        <c:if test="${healthArticleList[0].author_id eq b.id}">
                                                                        <span>by ${b.name} - ${healthArticleList[0].date}</span>
                                                                    </c:if>
                                                                </c:forEach>
                                                                <c:set var="content" value="${healthArticleList[0].content}" />
                                                                <c:set var="firstSentence" value="${fn:substringBefore(content, '.')}"/>
                                                                <p>${firstSentence}</p>                                                            
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Right single caption -->
                                                    <div class="col-xl-6 col-lg-12">
                                                        <div class="row">
                                                            <!-- single -->
                                                            <c:forEach var="a" items="${healthArticleList}" varStatus="loop">
                                                                <c:if test="${loop.index < 3}">
                                                                    <div class="col-xl-12 col-lg-6 col-md-6 col-sm-10">
                                                                        <div class="whats-right-single mb-20">
                                                                            <div class="whats-right-img">
                                                                                <img src="${a.image}" alt="" style="width: 124px; height: 104px;">
                                                                            </div>
                                                                            <div class="whats-right-cap">
                                                                                <span class="colorb">HEALTH</span>
                                                                                <h4><a href="news?aid=${a.id}">${a.title}</a></h4>
                                                                                <p>${a.date}</p> 
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </c:if>
                                                            </c:forEach>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- card fure -->
                                            <div class="tab-pane fade" id="nav-last" role="tabpanel" aria-labelledby="nav-last-tab">
                                                <div class="row">
                                                    <!-- Left Details Caption -->
                                                    <div class="col-xl-6">
                                                        <div class="whats-news-single mb-40">
                                                            <div class="whates-img">
                                                                <img src="${sportArticleList[0].image}" alt="">
                                                            </div>
                                                            <div class="whates-caption">
                                                                <h4><a href="news?aid=${a.id}">${sportArticleList[0].title}</a></h4>
                                                                    <c:forEach var="b" items="${authorList}">
                                                                        <c:if test="${sportArticleList[0].author_id eq b.id}">
                                                                        <span>by ${b.name} - ${sportArticleList[0].date}</span>
                                                                    </c:if>
                                                                </c:forEach>
                                                                <c:set var="content" value="${healthArticleList[0].content}" />
                                                                <c:set var="firstSentence" value="${fn:substringBefore(content, '.')}"/>
                                                                <p>${firstSentence}</p>                                                            
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Right single caption -->
                                                    <div class="col-xl-6 col-lg-12">
                                                        <div class="row">
                                                            <!-- single -->
                                                            <c:forEach var="a" items="${sportArticleList}" varStatus="loop">
                                                                <c:if test="${loop.index < 3}">
                                                                    <div class="col-xl-12 col-lg-6 col-md-6 col-sm-10">
                                                                        <div class="whats-right-single mb-20">
                                                                            <div class="whats-right-img">
                                                                                <img src="${a.image}" alt="" style="width: 124px; height: 104px;">
                                                                            </div>
                                                                            <div class="whats-right-cap">
                                                                                <span class="colorb">SPORT</span>
                                                                                <h4><a href="news?aid=${a.id}">${a.title}</a></h4>
                                                                                <p>${a.date}</p> 
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </c:if>
                                                            </c:forEach>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- card Five -->
                                            <div class="tab-pane fade" id="nav-nav-Sport" role="tabpanel" aria-labelledby="nav-Sports">
                                                <div class="row">
                                                    <!-- Left Details Caption -->
                                                    <div class="col-xl-6">
                                                        <div class="whats-news-single mb-40">
                                                            <div class="whates-img">
                                                                <img src="${technologyArticleList[0].image}" alt="">
                                                            </div>
                                                            <div class="whates-caption">
                                                                <h4><a href="news?aid=${a.id}">${technologyArticleList[0].title}</a></h4>
                                                                    <c:forEach var="b" items="${authorList}">
                                                                        <c:if test="${technologyArticleList[0].author_id eq b.id}">
                                                                        <span>by ${b.name} - ${technologyArticleList[0].date}</span>
                                                                    </c:if>
                                                                </c:forEach>
                                                                <c:set var="content" value="${technologyArticleList[0].content}" />
                                                                <c:set var="firstSentence" value="${fn:substringBefore(content, '.')}"/>
                                                                <p>${firstSentence}</p>                                                            
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Right single caption -->
                                                    <div class="col-xl-6 col-lg-12">
                                                        <div class="row">
                                                            <!-- single -->
                                                            <c:forEach var="a" items="${technologyArticleList}" varStatus="loop">
                                                                <c:if test="${loop.index < 3}">
                                                                    <div class="col-xl-12 col-lg-6 col-md-6 col-sm-10">
                                                                        <div class="whats-right-single mb-20">
                                                                            <div class="whats-right-img">
                                                                                <img src="${a.image}" alt="" style="width: 124px; height: 104px;">
                                                                            </div>
                                                                            <div class="whats-right-cap">
                                                                                <span class="colorb">SPORT</span>
                                                                                <h4><a href="news?aid=${a.id}">${a.title}</a></h4>
                                                                                <p>${a.date}</p> 
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </c:if>
                                                            </c:forEach>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- End Nav Card -->
                                    </div>
                                </div>
                            </div>
                            <!-- Banner -->
                            <div class="banner-one mt-20 mb-30">
                                <img src="assets/img/gallery/body_card1.png" alt="">
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <!-- Flow Socail -->
                            <div class="single-follow mb-45">
                                <div class="single-box">
                                    <div class="follow-us d-flex align-items-center">
                                        <div class="follow-social">
                                            <a href="https://www.facebook.com/ConganThuDo/?locale=vi_VN"><img src="assets/img/news/icon-fb.png" alt=""></a>
                                        </div>
                                        <div class="follow-count">  

                                            <p>Fans</p>
                                        </div>
                                    </div> 
                                    <div class="follow-us d-flex align-items-center">
                                        <div class="follow-social">
                                            <a href="https://twitter.com/elonmusk"><img src="assets/img/news/icon-tw.png" alt=""></a>
                                        </div>
                                        <div class="follow-count">

                                            <p>Fans</p>
                                        </div>
                                    </div>
                                    <div class="follow-us d-flex align-items-center">
                                        <div class="follow-social">
                                            <a href="https://www.instagram.com/kimkardashian/"><img src="assets/img/news/icon-ins.png" alt=""></a>
                                        </div>
                                        <div class="follow-count">

                                            <p>Fans</p>
                                        </div>
                                    </div>
                                    <div class="follow-us d-flex align-items-center">
                                        <div class="follow-social">
                                            <a href="https://www.youtube.com/@tseries"><img src="assets/img/news/icon-yo.png" alt=""></a>
                                        </div>
                                        <div class="follow-count">

                                            <p>Fans</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Most Recent Area -->
                            <div class="most-recent-area">
                                <!-- Section Tittle -->
                                <div class="small-tittle mb-20">
                                    <h4>Most Recent</h4>
                                </div>
                                <!-- Details -->
                                <div class="most-recent mb-40">
                                    <div class="most-recent-img">
                                        <c:forEach var="a" items="${articleList}" varStatus="loop">
                                            <c:if test="${loop.index <= 0}">
                                                <img src="${a.image}" alt="">
                                                <div class="most-recent-cap">
                                                    <span class="bgbeg">${a.category}</span>
                                                    <h4><a href="news?aid=${a.id}">${a.title}</a></h4>
                                                        <c:forEach var="b" items="${authorList}">
                                                            <c:if test="${a.author_id eq b.id}">
                                                            <p>${b.name}  | ${a.date}</p>
                                                        </c:if>
                                                    </c:forEach>
                                                </div>
                                            </c:if>
                                        </c:forEach>
                                    </div>
                                </div>
                                <!-- Single -->
                                <c:forEach var="a" items="${articleList}" varStatus="loop">
                                    <c:if test="${loop.index != 0 && loop.index < 3}">
                                        <div class="most-recent-single">
                                            <div class="most-recent-images">
                                                <img src="${a.image}" alt="" style="width: 85px; height: 79px;">
                                            </div>
                                            <div class="most-recent-capt">
                                                <h4><a href="news?aid=${a.id}">${a.title}</a></h4>
                                                    <c:forEach var="b" items="${authorList}">
                                                        <c:if test="${a.author_id eq b.id}">
                                                        <p>${b.name}  | ${a.date}</p>
                                                    </c:if>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </c:if>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Whats New End -->
            <!--   Weekly2-News start -->
            <div class="weekly2-news-area pt-50 pb-30 gray-bg">
                <div class="container">
                    <div class="weekly2-wrapper">
                        <div class="row">
                            <!-- Banner -->
                            <div class="col-lg-3">
                                <div class="home-banner2 d-none d-lg-block">
                                    <img src="assets/img/gallery/body_card2.png" alt="">
                                </div>
                            </div>
                            <div class="col-lg-9">
                                <div class="slider-wrapper">
                                    <!-- section Tittle -->
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="small-tittle mb-30">
                                                <h4>Most Popular</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Slider -->
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="weekly2-news-active d-flex">
                                                <c:forEach var="a" items="${articleList}" varStatus="loop">
                                                    <c:if test="${loop.index < 5}">
                                                        <!-- Single -->
                                                        <div class="weekly2-single">
                                                            <div class="weekly2-img">
                                                                <img src="${a.image}" alt="" style="width: 235px; height: 155px;">
                                                            </div>
                                                            <div class="weekly2-caption">
                                                                <h4><a href="news?aid=${a.id}">${a.title}</a></h4>
                                                                    <c:forEach var="b" items="${authorList}">
                                                                        <c:if test="${a.author_id eq b.id}">
                                                                        <p>${b.name}  | ${a.date}</p>
                                                                    </c:if>
                                                                </c:forEach>
                                                            </div>
                                                        </div>
                                                    </c:if>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>           
            <!-- End Weekly-News -->
            <!--  Recent Articles start -->
            <div class="recent-articles pt-80 pb-80">
                <div class="container">
                    <div class="recent-wrapper">
                        <!-- section Tittle -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="section-tittle mb-30">
                                    <h3>Trending  News</h3>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <div class="recent-active dot-style d-flex dot-style">
                                    <c:forEach var="v" items="${videoList}" varStatus="loop">
                                        <c:if test="${loop.index < 4}">
                                            <!-- Single -->
                                            <div class="single-recent">
                                                <div class="what-img">
                                                    <img src="${v.image}" alt="" style="width: 263px; height: 210px;">
                                                </div>
                                                <div class="what-cap">
                                                    <h4><a href="news?aid=${a.id}"></a>${v.name}</h4>
                                                    <a class="popup-video" href="${v.link}"><span class="flaticon-play-button"></span></a>
                                                </div>
                                            </div>
                                        </c:if>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>           
            <!--Recent Articles End -->
            <!-- Start Video Area -->
            <div class="youtube-area video-padding d-none d-sm-block">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="video-items-active">
                                <div class="video-items text-center">
                                    <video controls>
                                        <source src="assets/video/news2.mp4" type="video/mp4">
                                        Your browser does not support the video tag.
                                    </video>
                                </div>
                                <div class="video-items text-center">
                                    <video controls>
                                        <source src="assets/video/news1.mp4" type="video/mp4">
                                        Your browser does not support the video tag.
                                    </video>
                                </div>
                                <div class="video-items text-center">
                                    <video controls>
                                        <source src="assets/video/news3.mp4" type="video/mp4">
                                        Your browser does not support the video tag.
                                    </video>
                                </div>
                                <div class="video-items text-center">
                                    <video controls>
                                        <source src="assets/video/news1.mp4" type="video/mp4">
                                        Your browser does not support the video tag.
                                    </video>
                                </div>
                                <div class="video-items text-center">
                                    <video controls>
                                        <source src="assets/video/news3.mp4" type="video/mp4">
                                        Your browser does not support the video tag.
                                    </video>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="video-info">
                        <div class="row">
                            <div class="col-12">
                                <div class="testmonial-nav text-center">
                                    <div class="single-video">
                                        <video controls>
                                            <source src="assets/video/news2.mp4" type="video/mp4">
                                            Your browser does not support the video tag.
                                        </video>
                                        <div class="video-intro">
                                            <h4>Old Spondon News - 2020 </h4>
                                        </div>
                                    </div>
                                    <div class="single-video">
                                        <video controls>
                                            <source src="assets/video/news1.mp4" type="video/mp4">
                                            Your browser does not support the video tag.
                                        </video>
                                        <div class="video-intro">
                                            <h4>Banglades News Video </h4>
                                        </div>
                                    </div>
                                    <div class="single-video">
                                        <video controls>
                                            <source src="assets/video/news3.mp4" type="video/mp4">
                                            Your browser does not support the video tag.
                                        </video>
                                        <div class="video-intro">
                                            <h4>Latest Video - 2020 </h4>
                                        </div>
                                    </div>
                                    <div class="single-video">
                                        <video controls>
                                            <source src="assets/video/news1.mp4" type="video/mp4">
                                            Your browser does not support the video tag.
                                        </video>
                                        <div class="video-intro">
                                            <h4>Spondon News -2019 </h4>
                                        </div>
                                    </div>
                                    <div class="single-video">
                                        <video controls>
                                            <source src="assets/video/news3.mp4" type="video/mp4">
                                            Your browser does not support the video tag.
                                        </video>
                                        <div class="video-intro">
                                            <h4>Latest Video - 2020</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> 
            <!-- End Start Video area-->
            <!--   Weekly3-News start -->
            <div class="weekly3-news-area pt-80 pb-130">
                <div class="container">
                    <div class="weekly3-wrapper">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="slider-wrapper">
                                    <!-- Slider -->
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="weekly3-news-active dot-style d-flex">
                                                <c:forEach var="a" items="${articleList}" varStatus="loop">
                                                    <c:if test="${loop.index < 5}">
                                                        <div class="weekly3-single">
                                                            <div class="weekly3-img">
                                                                <img src="${a.image}" alt="" style="width: 263px; height: 210px;">
                                                            </div>
                                                            <div class="weekly3-caption">
                                                                <h4><a href="news?aid=${a.id}">${a.title}</a></h4>
                                                                <p>${a.date}</p>
                                                            </div>
                                                        </div> 
                                                    </c:if>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>           
            <!-- End Weekly-News -->
            <!-- banner-last Start -->
            <div class="banner-area gray-bg pt-90 pb-90">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-10 col-md-10">
                            <div class="banner-one">
                                <img src="assets/img/gallery/body_card3.png" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- banner-last End -->
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
                                            <a href="${pageContext.request.contextPath}/home"><img src="assets/img/logo/logo.png" alt=""></a>
                                        </div>
                                        <div class="footer-tittle">
                                            <div class="footer-pera">
                                                <p class="info1">World best news source for your suffering.</p>
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

