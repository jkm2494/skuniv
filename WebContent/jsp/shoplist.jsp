<!DOCTYPE jsp>
<jsp lang="en">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>

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
    <link href="resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- jsp5 Shim and Respond.js IE8 support of jsp5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/jsp5shiv/3.7.0/jsp5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->




<script language="javascript"> 

function openUpdateShopForm(snum) {
	window.open("updateShopForm?snum="+snum, 'UpdateShop', 'width=500, height=550, menubar="no", toolbar="no"');
}

function openAddShopForm() {
	
	window.open("addShopForm", 'AddShop', 'width=500, height=550, menubar="no", toolbar="no"');
	}
</script> 






</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.jsp">Start Bootstrap</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a onclick="myFunction()" class="dropbtn" 
				 data-target="#myModal" data-toggle="modal">로그인</a>
                    </li>
                    <li>
                        <a href="perJoinForm">회원가입</a>
                    </li>
                    <li>
                        <a href="services.jsp">지도</a>
                    </li>
                    <li>
                        <a href="shoplist?pg=1">매장</a>
                    </li>
                    <li>
                        <a href="favorite">좋아요</a>
                    </li>
                    <li>
                        <a href="contact.jsp">Contact</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Portfolio <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="portfolio-1-col.html">1 Column Portfolio</a>
                            </li>
                            <li>
                                <a href="portfolio-2-col.html">2 Column Portfolio</a>
                            </li>
                            <li>
                                <a href="portfolio-3-col.html">3 Column Portfolio</a>
                            </li>
                            <li>
                                <a href="portfolio-4-col.html">4 Column Portfolio</a>
                            </li>
                            <li>
                                <a href="portfolio-item.html">Single Portfolio Item</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Blog <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="blog-home-1.jsp">Blog Home 1</a>
                            </li>
                            <li>
                                <a href="blog-home-2.jsp">Blog Home 2</a>
                            </li>
                            <li>
                                <a href="blog-post.jsp">Blog Post</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Other Pages <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="full-width.jsp">Full Width Page</a>
                            </li>
                            <li>
                                <a href="sidebar.jsp">Sidebar Page</a>
                            </li>
                            <li>
                                <a href="faq.jsp">FAQ</a>
                            </li>
                            <li>
                                <a href="404.jsp">404</a>
                            </li>
                            <li>
                                <a href="pricing.jsp">Pricing Table</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Shop List
                    <small>강남역 지하상가</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="index.jsp">Home</a>
                    </li>
                    <li class="active">Shop List</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->
        
        <div align="right">
        <input type="button" onClick="openAddShopForm()" value="업체 등록">
        </div>
        <hr>
        
        
        
        
        <c:if test="${count>0}">
        <c:set var="pageCount" value="${count/pageSize + (count%pageSize==0?0:1)}" />
        <c:set var="startPage" value="${pageGroupSize * (numPageGroup-1)+1}" />
        <c:set var="endPage" value="${startPage + pageGroupSize-1}"/>
        
        
        <c:if test="${endPage>pageCount}" >
        <c:set var="endPage" value="${pageCount}" />
        </c:if>
        
        
        <!-- Shop list -->
        <c:forEach items="${shopList}" var="shop">
        <div class="row">
            <div class="col-md-7">
                <a href="shopInfo?snum=${shop.snum}">
                   
                    <img src=${shop.simage} width="500" height="300">
                </a>
            </div>
            <div class="col-md-5">
                <font size="3" color="green">${shop.sname}</font>
                <br>
                <h4>category) ${shop.scategory}</h4>
                <h4>
                <i class="fa fa-phone"></i> 
                <abbr title="Phone">P</abbr> : ${shop.phone}</h3>
                <br>
                <h4>snum) ${shop.snum}</h4>
             	<h4>Intro)</h4>
                <h4>${shop.intro}</h4>
                <br>
                <a href="javascript:openUpdateShopForm(${shop.snum})">수정</a>
                <a href="deleteShop?snum=${shop.snum}">삭제</a><br>
                
                <a class="btn btn-primary" href="shopInfo?snum=${shop.snum}">View Shop</i></a>
            </div>
        </div>
        <!-- /.row -->
        <hr>
		</c:forEach>

		





        <hr>

 	<table width="100%" cellpadding="0" cellspacing="0" border="0">
	<tr><td colspan="4" height="5"></td></tr>
 	<tr>
		<td align="center">
       <c:if test="${numPageGroup>1}">
        <a href="shoplist?pg=${(numPageGroup-2)*pageGroupSize+1}">[이전]</a>
       </c:if>        
      
      
      <c:forEach var="i" begin="${startPage}" end="${endPage}">
        <a href="shoplist?pg=${i}">[
         <font color="#000000" />
           <c:if test="${currentPage == i}">
           <font color="#bbbbbb" />
         </c:if>
         ${i}
        </font>]
        </a>
   		</c:forEach>
      
       <c:if test="${numPageGroup<pageGroupCount}">
        <a href="shoplist?pg=${numPageGroup*pageGroupSize+1}">[다음]</a>
       </c:if>
       </td>
       </tr>
       </table>
   </c:if>    
       
       
       
       
       
       
       
       
       
       
		
        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Your Website 2016</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="resources/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/js/bootstrap.min.js"></script>

</body>

</html>
