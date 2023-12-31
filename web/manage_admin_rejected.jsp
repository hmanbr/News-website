<%-- 
    Document   : manage_admin_rejected
    Created on : Aug 25, 2023, 3:01:23 AM
    Author     : MSI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Tables / Pending - NiceAdmin Bootstrap Template</title>
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link href="assets/img/favicon.png" rel="icon">
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.gstatic.com" rel="preconnect">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
        <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
        <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="assets/vendor/simple-datatables/style_alt.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="assets/css/style_alt.css" rel="stylesheet">

        <!-- =======================================================
        * Template Name: NiceAdmin
        * Updated: Jul 27 2023 with Bootstrap v5.3.1
        * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
        * Author: BootstrapMade.com
        * License: https://bootstrapmade.com/license/
        ======================================================== -->

        <script type = "text/javascript" src="manage_pending.js"></script>
    </head>

    <body>

        <!-- ======= Header ======= -->
        <header id="header" class="header fixed-top d-flex align-items-center">

            <div class="d-flex align-items-center justify-content-between">
                <a href="${pageContext.request.contextPath}/manage" class="logo d-flex align-items-center">
                    <img src="assets/img/logo.png" alt="">
                    <span class="d-none d-lg-block">NiceAdmin</span>
                </a>
                <i class="bi bi-list toggle-sidebar-btn"></i>
            </div><!-- End Logo -->

            <div class="search-bar">
                <form class="search-form d-flex align-items-center" method="POST" action="#">
                    <input type="text" name="query" placeholder="Search" title="Enter search keyword">
                    <button type="submit" title="Search"><i class="bi bi-search"></i></button>
                </form>
            </div><!-- End Search Bar -->

            <nav class="header-nav ms-auto">
                <ul class="d-flex align-items-center">

                    <li class="nav-item d-block d-lg-none">
                        <a class="nav-link nav-icon search-bar-toggle " href="#">
                            <i class="bi bi-search"></i>
                        </a>
                    </li><!-- End Search Icon-->

                    </li><!-- End Messages Nav -->

                    <li class="nav-item dropdown pe-3">

                        <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
                            <img src="${author.image}" style="width: 30px; height: 30px;" alt="Profile" class="rounded-circle">
                            <span class="d-none d-md-block dropdown-toggle ps-2">${author.name == null ? accountName : author.name}</span>
                        </a><!-- End Profile Image Icon -->

                        <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                            <li class="dropdown-header">
                                <h6>${author.name == null ? accountName : author.name}</h6>
                                <span>${role}</span>
                            </li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li>
                                <a class="dropdown-item d-flex align-items-center" href="${pageContext.request.contextPath}/profile">
                                    <i class="bi bi-person"></i>
                                    <span>My Profile</span>
                                </a>
                            </li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li>
                                <a class="dropdown-item d-flex align-items-center" href="${pageContext.request.contextPath}/profile">
                                    <i class="bi bi-gear"></i>
                                    <span>Account Settings</span>
                                </a>
                            </li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>

                            <li>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <i class="bi bi-box-arrow-right"></i>
                                    <span>Sign Out</span>
                                </a>
                            </li>

                        </ul><!-- End Profile Dropdown Items -->
                    </li><!-- End Profile Nav -->

                </ul>
            </nav><!-- End Icons Navigation -->

        </header><!-- End Header -->

        <!-- ======= Sidebar ======= -->
        <aside id="sidebar" class="sidebar">
            <ul class="sidebar-nav" id="sidebar-nav">
                <li class="nav-item">
                    <a class="nav-link " href="${pageContext.request.contextPath}/manage">
                        <i class="bi bi-grid"></i>
                        <span>Dashboard</span>
                    </a>
                </li><!-- End Dashboard Nav -->
                <li class="nav-item">
                    <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
                        <i class="bi bi-layout-text-window-reverse"></i><span>Manage</span><i class="bi bi-chevron-down ms-auto"></i>
                    </a>
                    <ul id="tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                        <li>
                            <a href="${pageContext.request.contextPath}/managePending">
                                <i class="bi bi-circle"></i><span>New/pending Article</span>
                            </a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/manageApproved">
                                <i class="bi bi-circle"></i><span>Approved Article</span>
                            </a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/manageRejected">
                                <i class="bi bi-circle"></i><span>Rejected Article</span>
                            </a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/manageAuthor">
                                <i class="bi bi-circle"></i><span>Manage Author</span>
                            </a>
                        </li>
                    </ul>
                </li><!-- End Tables Nav -->

                <li class="nav-heading">Pages</li>

                <li class="nav-item">
                    <a class="nav-link collapsed" href="${pageContext.request.contextPath}/profile">
                        <i class="bi bi-person"></i>
                        <span>Profile</span>
                    </a>
                </li><!-- End Profile Page Nav -->

                <li class="nav-item">
                    <a class="nav-link collapsed" href="${pageContext.request.contextPath}/writeArticle">
                        <i class="ri-edit-2-line"></i>
                        <span>Write Article</span>
                    </a>
                </li><!-- End Contact Page Nav -->
            </ul>

        </aside><!-- End Sidebar-->

        <main id="main" class="main">

            <div class="pagetitle">
                <h1>Pending Article Tables</h1>
                <nav>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/manage">Home</a></li>
                        <li class="breadcrumb-item">Tables</li>
                        <li class="breadcrumb-item active">Pending article</li>
                    </ol>
                </nav>
            </div><!-- End Page Title -->

            <section class="section">
                <div class="row">
                    <div class="col-lg-12">

                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Pending article</h5>

                                <!-- Default Table -->
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th scope="col">ID</th>
                                            <th scope="col">Author</th>
                                            <th scope="col">Title</th>
                                            <th scope="col">Category</th>
                                            <th scope="col">Date</th>
                                            <th scope="col">Status</th>
                                            <th scope="col">Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="ara" items="${allRejectedArticles}">
                                            <tr>
                                                <th scope="row">${ara.id}</th>
                                                    <c:forEach var="b" items="${authorList}">
                                                        <c:if test="${ara.author_id eq b.id}">
                                                        <td>${b.name}</td>
                                                    </c:if>
                                                </c:forEach>
                                                <td>${ara.title}</td>
                                                <td>${ara.category}</td>
                                                <td>${ara.date}</td>
                                                <td>
                                                    <select id="statusSelect_${ara.id}" class="badge bg-danger" onchange="updateBadgeClass('statusSelect_${ara.id}')">
                                                        <option value="pending">Pending</option>
                                                        <option value="approved">Approved</option>
                                                        <option value="rejected" selected >Rejected</option>
                                                    </select>
                                                </td>
                                                <td>
                                                    <a href="deleteArticle?aid=${ara.id}" >Delete</a>
                                                </td>
                                            </tr>
                                        </c:forEach> 
                                    </tbody>
                                </table>
                                <!-- End Default Table Example -->
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <div class="save-change">
                <div class="col-md-12 text-center">
                    <button type="submit" onclick="categorizeRows()">Save Change</button>
                </div>
            </div>

        </main><!-- End #main -->

        <!-- ======= Footer ======= -->
        <footer id="footer" class="footer">
            <div class="copyright">
                &copy; Copyright <strong><span>NiceAdmin</span></strong>. All Rights Reserved
            </div>
            <div class="credits">
                <!-- All the links in the footer should remain intact. -->
                <!-- You can delete the links only if you purchased the pro version. -->
                <!-- Licensing information: https://bootstrapmade.com/license/ -->
                <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
                Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
            </div>
        </footer><!-- End Footer -->

        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

        <!-- Vendor JS Files -->
        <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/chart.js/chart.umd.js"></script>
        <script src="assets/vendor/echarts/echarts.min.js"></script>
        <script src="assets/vendor/quill/quill.min.js"></script>
        <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
        <script src="assets/vendor/tinymce/tinymce.min.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="assets/js/main_alt.js"></script>

    </body>

</html>
<script>
                        function updateBadgeClass(selectId) {
                            var selectElement = document.getElementById(selectId);
                            var selectedValue = selectElement.value;

                            if (selectedValue === "pending") {
                                selectElement.className = "badge bg-warning";
                            } else if (selectedValue === "approved") {
                                selectElement.className = "badge bg-success";
                            } else if (selectedValue === "rejected") {
                                selectElement.className = "badge bg-danger";
                            }
                        }

                        function categorizeRows() {
                            var pArr = [];
                            var aArr = [];
                            var rArr = [];

                            var rows = document.querySelectorAll('[id^="statusSelect_"]');

                            rows.forEach(function (row) {
                                var selectElement = row;
                                var selectedValue = selectElement.value;
                                var araId = selectElement.id.split('_')[1]; // Extract the ara.id from the id

                                if (selectedValue === "pending") {
                                    pArr.push(parseInt(araId));
                                } else if (selectedValue === "approved") {
                                    aArr.push(parseInt(araId));
                                } else if (selectedValue === "rejected") {
                                    rArr.push(parseInt(araId));
                                }
                            });

                            var servletUrl = "/Assigment/changeArticleStatus"; // Replace with the actual URL of your servlet

                            var form = document.createElement("form");
                            form.method = "post";
                            form.action = servletUrl;

                            var input1 = document.createElement("input");
                            input1.type = "hidden";
                            input1.name = "pArr";
                            input1.value = pArr.join(",");
                            form.appendChild(input1);

                            var input2 = document.createElement("input");
                            input2.type = "hidden";
                            input2.name = "aArr";
                            input2.value = aArr.join(",");
                            form.appendChild(input2);

                            var input3 = document.createElement("input");
                            input3.type = "hidden";
                            input3.name = "rArr";
                            input3.value = rArr.join(",");
                            form.appendChild(input3);

                            var inputManagePage = document.createElement("input"); // New input for managePage
                            inputManagePage.type = "hidden";
                            inputManagePage.name = "managePage";
                            inputManagePage.value = 'rejected';
                            form.appendChild(inputManagePage);

                            document.body.appendChild(form);
                            form.submit();
                        }

</script>
