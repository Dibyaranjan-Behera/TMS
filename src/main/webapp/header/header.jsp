<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <link rel="shortcut icon" href="./assets/images/fevicon.png" type="">

  <title> Header </title>


  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="./assets/css/bootstrap.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700;900&display=swap" rel="stylesheet">

  <!--owl slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

  <!-- font awesome style -->
  <link href="./assets/css/font-awesome.min.css" rel="stylesheet" />

  <!-- Custom styles for this template -->
  <link href="./assets/css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="./assets/css/responsive.css" rel="stylesheet" />

    <%
    String currentUrl = request.getRequestURL().toString();
    if (currentUrl.contains("login.jsp") ||currentUrl.contains("RegSuccess.jsp")  ) {
%>
    <link href="./assets/css/login.css" rel="stylesheet" />
<%
    }
%>


   <link href="./assets/css/slide.css" rel="stylesheet" />
