<%@page import="java.io.IOException"%>
<%@page import="kr.ac.cu.vo.PersonVO"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Modern Business - Start Bootstrap Template</title>

<!-- Bootstrap Core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="resources/css/modern-business.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="resources/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">


<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.jsp">Start Bootstrap</a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="login.jsp">로그인</a></li>
				<li><a href="perJoinForm">회원가입</a></li>
				<li><a href="contact.jsp">Contact</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Portfolio <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="portfolio-1-col.html">1 Column Portfolio</a></li>
						<li><a href="portfolio-2-col.html">2 Column Portfolio</a></li>
						<li><a href="portfolio-3-col.html">3 Column Portfolio</a></li>
						<li><a href="portfolio-4-col.html">4 Column Portfolio</a></li>
						<li><a href="portfolio-item.html">Single Portfolio Item</a></li>
					</ul></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Blog <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="blog-home-1.jsp">Blog Home 1</a></li>
						<li><a href="blog-home-2.jsp">Blog Home 2</a></li>
						<li><a href="blog-post.jsp">Blog Post</a></li>
					</ul></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Other Pages <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="full-width.jsp">Full Width Page</a></li>
						<li><a href="sidebar.jsp">Sidebar Page</a></li>
						<li><a href="faq.jsp">FAQ</a></li>
						<li><a href="404.jsp">404</a></li>
						<li><a href="pricing.jsp">Pricing Table</a></li>
					</ul></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container --> </nav>
	<article class="container">
	<div class="page-header">
		<h1>
			Favorite<small>Clothes Up</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="index.jsp">Home</a></li>
			<li class="active">Favorite</li>
		</ol>
	</div>
	<%-- 		<c:forEach items="${favoriteList}" var="favorite"> --%> <!-- 			<tr> -->
	<%-- 				<td>${favorite.favoritenum}</td> --%> <%-- 				<td>${favorite.fid}</td> --%>
	<%-- 				<td><a class="btn btn-link" href="shopInfo?snum=${favorite.shop_num}">${favorite.shop_num}</a></td> --%>
	<%-- 				<td><a href="favoriteUpdateForm?fid=${favorite.fid}">수정</a></td> --%>
	<%-- 				<td><a href="favoriteDelete?favoritenum=${favorite.favoritenum}">삭제</a></td> --%>
	<!-- 			</tr> --> <%-- 		</c:forEach> --%> 
	<c:forEach items="${favoriteList}" var="favorite">
		<div class="row">
			<div class="col-md-7">
				<a href="shopInfo?snum=${favorite.shop_num}"> <img
					src="${shop.simage}" width="500" height="300">
				</a>
			</div>
			<div class="col-md-5">
				<h3>
					<font color="blue">
						<%
							out.print(session.getAttribute("loginName"));
						%>
					</font>님의 <font color="blue">${favorite.favoritenum}</font>번째 Favorite <font
						color="blue">${favorite.shop_num}</font>번 매장!
				</h3>


				<h4>
					<%--                 <a href="favoriteUpdateForm?fid=${favorite.fid}">수정</a> --%>
				</h4>
				<br>
				<br>
				<br> <a class="btn btn-info"
					href="shopInfo?snum=${favorite.shop_num}">View Shop</a> <a
					class="btn btn-warning"
					href="favoriteDelete?favoritenum=${favorite.favoritenum}">삭제</a>
			</div>
		</div>
		<hr>
	</c:forEach>
	<li><a class="btn btn-default" href="favoriteJoinForm">Favorite
			추가</a></li>
</body>
</html>