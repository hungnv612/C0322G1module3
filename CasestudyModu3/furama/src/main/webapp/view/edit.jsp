<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 05/07/2022
  Time: 8:32 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css.css">

</head>
<body>
<div>
    <div class="row container-fluid" style="height: 20px; background-color:#4cd7c845"></div>
    <div class="header container">
        <div class="row">
            <div class="col-lg-3">
                <a href="">
                    <img src="https://furamavietnam.com/wp-content/uploads/2018/08/logo.png">
                </a>
            </div>
            <div class="col-lg-3">
                <div class="row">
                    <div class="col-lg-2">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                             class="bi bi-geo-alt" viewBox="0 0 16 16">
                            <path d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z"/>
                            <path d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                        </svg>
                    </div>
                    <div class="col-md-10">
                        <p class="txt-lg">
                            103 - 105 Vo Nguyen Giap Street, Ngu Hanh Son District, Danang City, Vietnam
                        </p>
                        <p>
                            <span>7,0 km</span>
                            from Danang Airport
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="row">
                    <div class="col-lg-2">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                             class="bi bi-telephone" viewBox="0 0 16 16">
                            <path d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.568 17.568 0 0 0 4.168 6.608 17.569 17.569 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.678.678 0 0 0-.58-.122l-2.19.547a1.745 1.745 0 0 1-1.657-.459L5.482 8.062a1.745 1.745 0 0 1-.46-1.657l.548-2.19a.678.678 0 0 0-.122-.58L3.654 1.328zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"/>
                        </svg>
                    </div>
                    <div class="col-md-10">
                        <p>
                            84-236-3847 333/888
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-2">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                             class="bi bi-envelope" viewBox="0 0 16 16">
                            <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4Zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2Zm13 2.383-4.708 2.825L15 11.105V5.383Zm-.034 6.876-5.64-3.471L8 9.583l-1.326-.795-5.64 3.47A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.741ZM1 11.105l4.708-2.897L1 5.383v5.722Z"/>
                        </svg>
                    </div>
                    <div class="col-md-10">
                        <p>
                            reservation@furamavietnam.com
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="row">
                    <div class="col-lg-2">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                             class="bi bi-person-circle" viewBox="0 0 16 16">
                            <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                            <path fill-rule="evenodd"
                                  d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                        </svg>
                    </div>
                    <div class="col-md-10">
                        <p>
                            Nguyễn Việt Hùng
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-2">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                             class="bi bi-telephone" viewBox="0 0 16 16">
                            <path d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.568 17.568 0 0 0 4.168 6.608 17.569 17.569 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.678.678 0 0 0-.58-.122l-2.19.547a1.745 1.745 0 0 1-1.657-.459L5.482 8.062a1.745 1.745 0 0 1-.46-1.657l.548-2.19a.678.678 0 0 0-.122-.58L3.654 1.328zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"/>
                        </svg>
                    </div>
                    <div class="col-md-10">
                        <p>
                            0762638288
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-2">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                             class="bi bi-envelope" viewBox="0 0 16 16">
                            <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4Zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2Zm13 2.383-4.708 2.825L15 11.105V5.383Zm-.034 6.876-5.64-3.471L8 9.583l-1.326-.795-5.64 3.47A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.741ZM1 11.105l4.708-2.897L1 5.383v5.722Z"/>
                        </svg>
                    </div>
                    <div class="col-md-10">
                        <p>
                            hungdaubasg@gmail.com
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <nav class="navbar navbar-expand-lg navbar-dark "
         style="background-color: #046056;position: sticky;top: 0;z-index: 1;">
        <div class="container-fluid">
            <a class="navbar-brand" href="/view/home.jsp">Home</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Employee</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="#">Customer</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="#">Service</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="#">Contract</a>
                    </li>

                </ul>
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
    <div class="vc_empty_space" style="height: 32px"><span class="vc_empty_space_inner"></span></div>
    <div class="vc_empty_space" style="height: 32px"><span class="vc_empty_space_inner"></span></div>
    <div style="text-align: center;">
        <h1>User Management</h1>
    </div>
    <div align="center" class="row">
        <caption>
            <h2>Edit New Customer</h2>
        </caption>
        <form method="post">
            <table  class="table table-success table-striped container" >
<%--                <c:if test="${customer != null}">--%>
<%--                    <input type="hidden" name="id" value="${customer.id}"/>--%>
<%--                </c:if>--%>
                <tr>
                    <th>ID:</th>
                    <td>
                        <input disabled type="text" name="idType" id="id" size="45"  value="${customer.id}">
                    </td>
                </tr>
                <tr>
                    <th>Customer Loại khách:</th>
                    <td>
                        <input type="text" name="idType" id="idType" size="45"  value="${customer.idType}"  />
                    </td>
                </tr>
                <tr>
                    <th>Customer name:</th>
                    <td>
                        <input type="text" name="name" id="name" size="45" value="${customer.name}"/>
                    </td>
                </tr>
                <tr>
                    <th>Customer birthday:</th>
                    <td>
                        <input type="date" name="date" id="date" size="45" value="${customer.date}"/>
                    </td>
                </tr>
                <tr>
                    <th>Customer Gender:</th>
                    <td>
                        <input type="text" name="gender" id="gender" size="45" value="${customer.gender}"/>
                    </td>
                </tr>
                <tr>
                    <th>Customer idCard:</th>
                    <td>
                        <input type="text" name="idCard" id="idCard" size="45" value="${customer.idCard}"  />
                    </td>
                </tr>
                <tr>
                    <th>Customer Phone:</th>
                    <td>
                        <input type="text" name="phone" id="phone" size="45" value="${customer.phone}"  />
                    </td>
                </tr>
                <tr>
                    <th>Customer Email:</th>
                    <td>
                        <input type="text" name="email" id="email" size="45" value="${customer.email}"  />
                    </td>
                </tr>
                <tr>
                    <th>Customer Address:</th>
                    <td>
                        <input type="text" name="address" id="address" size="45" value="${customer.address}"  />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input class="button-bar" type="submit" value="Save"/>
                    </td>
                </tr>
            </table>
            <h5><a href="customer?action=customer">List All Customer</a></h5>
        </form>
    </div>
    <div class="vc_empty_space" style="height: 32px"><span class="vc_empty_space_inner"></span></div>
    <div class="vc_empty_space" style="height: 32px"><span class="vc_empty_space_inner"></span></div>
    <div class="footer container-fluid">
        <!-- Footer -->
        <footer class="text-center text-lg-start text-break " style="background-color:#1cad85b0">
            <!-- Section: Social media -->
            <section
                    class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom"
            >
                <!-- Left -->
                <div class="me-5 d-none d-lg-block">
                    <span>Get connected with us on social networks:</span>
                </div>
                <!-- Left -->

                <!-- Right -->
                <div>
                    <a href="" class="me-4 text-reset">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="" class="me-4 text-reset">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a href="" class="me-4 text-reset">
                        <i class="fab fa-google"></i>
                    </a>
                    <a href="" class="me-4 text-reset">
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a href="" class="me-4 text-reset">
                        <i class="fab fa-linkedin"></i>
                    </a>
                    <a href="" class="me-4 text-reset">
                        <i class="fab fa-github"></i>
                    </a>
                </div>
                <!-- Right -->
            </section>
            <!-- Section: Social media -->

            <!-- Section: Links  -->
            <section class="">
                <div class="container text-center text-md-start mt-5">
                    <!-- Grid row -->
                    <div class="row mt-3">
                        <!-- Grid column -->
                        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                            <!-- Content -->
                            <h6 class="text-uppercase fw-bold mb-4">
                                <i class="fas fa-gem me-3"></i>Company name
                            </h6>
                            <p>
                                Here you can use rows and columns to organize your footer content. Lorem ipsum
                                dolor sit amet, consectetur adipisicing elit.
                            </p>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                            <!-- Links -->
                            <h6 class="text-uppercase fw-bold mb-4">
                                Products
                            </h6>
                            <p>
                                <a href="#!" class="text-reset">Angular</a>
                            </p>
                            <p>
                                <a href="#!" class="text-reset">React</a>
                            </p>
                            <p>
                                <a href="#!" class="text-reset">Vue</a>
                            </p>
                            <p>
                                <a href="#!" class="text-reset">Laravel</a>
                            </p>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                            <!-- Links -->
                            <h6 class="text-uppercase fw-bold mb-4">
                                Useful links
                            </h6>
                            <p>
                                <a href="#!" class="text-reset">Pricing</a>
                            </p>
                            <p>
                                <a href="#!" class="text-reset">Settings</a>
                            </p>
                            <p>
                                <a href="#!" class="text-reset">Orders</a>
                            </p>
                            <p>
                                <a href="#!" class="text-reset">Help</a>
                            </p>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                            <!-- Links -->
                            <h6 class="text-uppercase fw-bold mb-4">
                                Contact
                            </h6>
                            <p><i class="fas fa-home me-3"></i> New York, NY 10012, US</p>
                            <p>
                                <i class="fas fa-envelope me-3"></i>
                                info@example.com
                            </p>
                            <p><i class="fas fa-phone me-3"></i> + 01 234 567 88</p>
                            <p><i class="fas fa-print me-3"></i> + 01 234 567 89</p>
                        </div>
                        <!-- Grid column -->
                    </div>
                    <!-- Grid row -->
                </div>
            </section>
            <!-- Section: Links  -->

            <!-- Copyright -->
            <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
                © 2021 Copyright:
                <a class="text-reset fw-bold" href="https://mdbootstrap.com/">MDBootstrap.com</a>
            </div>
            <!-- Copyright -->
        </footer>
        <!-- Footer -->
    </div>

</div>
<script src="js/bootstrap.js"></script>
</body>
</html>
