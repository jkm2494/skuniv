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
			회원 목록<small>Clothes Up</small>
		</h1>
	</div>
	<div class="col-md-6  col-md-offset-1">
		<table width="800">
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>비밀번호</th>
				<th>종류</th>
				<th>번호</th>
				<th>위도</th>
				<th>경도</th>
				<th>수정</th>
				<th>탈퇴</th>
			</tr>
			<c:forEach items="${personList}" var="person">
				<tr>
					<td>${person.pid}</td>
					<td>${person.pname}</td>
					<td>${person.ppassword}</td>
					<td>${person.ptype}</td>
					<td>${person.shopnum}</td>
					<td>${person.latitude}</td>
					<td>${person.longitude}</td>
					<td><a href="perUpdateForm?pid=${person.pid}">수정</a></td>
					<td><a href="perDelete?pid=${person.pid}">탈퇴</a></td>
				</tr>
			</c:forEach>

		</table>

		<%
			System.out.println(session.getAttribute("loginEmail"));
			if (session.getAttribute("loginEmail") == null) {
		%>
		login<%
			} else {
		%>
		<%=(String) session.getAttribute("loginEmail")%>
		<%
			}
		%>
		<button onclick="location.href='logout'">logout</button>
	</div>
	</article>
</body>
</html>