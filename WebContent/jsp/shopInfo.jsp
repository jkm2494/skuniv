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

function openUpdateBoardForm(boardnum) {
 window.open("updateBoardForm?boardnum="+boardnum, 'AddBoard', 'width=500, height=550, menubar="no", toolbar="no"');
}

function openAddBoardForm(snum) {
	 window.open("addBoardForm?snum="+snum, 'AddBoardForm', 'width=500, height=550, menubar="no", toolbar="no"');
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
                        <a href="about.jsp">About</a>
                    </li>
                    <li>
                        <a href="services.jsp">Services</a>
                    </li>
                    <li>
                        <a href="contact.jsp">Contact</a>
                    </li>
                    
                    
                    
                    <!-- shoplist 코드 -->
                    <li>
                        <a href="shoplist">shoplist</a>
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
                <h1 class="page-header">${shopInfo.sname}
                    <small>카테고리 : ${shopInfo.scategory}</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="index.jsp">Home</a>
                    </li>
                    <li class="active">Shop Info</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->
		<form id="Addgoods" action="loginCheck" method="post" style="display:none;">
						
						<input id="pid" name="pid" value="" />
						<input id="pname" name="pname" value="" />
						<input id="ppassword" name="ppassword" value="****" />
						<input id="ptype" name="ptype" value="1" />
						<input id="accTok" name="accTok" value="<%= session.getAttribute("access_token") != null ? session.getAttribute("access_token").toString() : "" %>"/>
					</form>





        <!-- Portfolio Item Row -->
        <div class="row">

            <div class="col-md-8">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active">
                        <p>
                            <img src=${shopInfo.simage} width="700" height="500" align="top">
                        </div>
                        
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <h3>${shopInfo.sname}</h3>
                <p>${shopInfo.intro}</p>
                <br>
                <h4>전화번호 : ${shopInfo.phone}</h4>
                <h4>카테고리 : ${shopInfo.scategory}</h4>
                <a class="btn btn-primary" href="favoriteJoin?fid=${1}&favoritenum=${1}&shop_num=${1}">
               	좋아요! <i class="fa fa-thumbs-up"></i></a>
                </p>
                
                 <a href="addgoods">지도</a>
            </div>

        </div>
        <!-- /.row -->
        
        
        
        
        
        
        
        

        <!-- Related Projects Row -->
        <div class="row">

            <div class="col-lg-12">
                <h3 class="page-header">Related Projects</h3>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="#">
                    <img class="img-responsive img-hover img-related" src="http://placehold.it/500x300" alt="">
                </a>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="#">
                    <img class="img-responsive img-hover img-related" src="http://placehold.it/500x300" alt="">
                </a>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="#">
                    <img class="img-responsive img-hover img-related" src="http://placehold.it/500x300" alt="">
                </a>
            </div>

            <div class="col-sm-3 col-xs-6">
                <a href="#">
                    <img class="img-responsive img-hover img-related" src="http://placehold.it/500x300" alt="">
                </a>
            </div>
              <div class="col-sm-3 col-xs-6">
                <a href="#">
                    <img class="img-responsive img-hover img-related" src="http://placehold.it/500x300" alt="">
                </a>
            </div>
            

        </div>
        <!-- /.row -->




<br><br>




<div class="row">
    	    <div class="col-lg-12">
                <h2 class="page-header">Board</h2>
            </div>
            <div align="right">
         <hr>
         
         <hr>
        <input type="button" class="btn btn-default" onClick="openAddBoardForm(${shopInfo.snum})" value="board 작성">
        </div>
        <hr>
        
	<c:forEach items="${boardList}" var="board">
		
            <div class="col-board-5">
            <div>
            <div>
			<font size="3" color="green">${board.btitle}</font>
			</div>
			<div align="right">
			아이디 : ${board.pid} &nbsp;&nbsp;&nbsp;
			${board.reg_date}
			</div>
			</div>
			
			<div>
			${board.bcontent} <br>
			</div>
			
			
			<div>
			별점 : 
			
			<c:choose>
				<c:when test="${board.score=='0'}">
				<font size=3, color="orange"><b>☆☆☆☆☆</b></font>
				</c:when>			
			
				<c:when test="${board.score=='1'}">
				<font size=3, color="orange"><b>★☆☆☆☆</b></font>
				</c:when>
				
				<c:when test="${board.score=='2'}">
				<font size=3, color="orange"><b>★★☆☆☆</b></font>
				</c:when>
				
				<c:when test="${board.score=='3'}">
				<font size=3, color="orange"><b>★★★☆☆</b></font>
				</c:when>
				
				<c:when test="${board.score=='4'}">
				<font size=3, color="orange"><b>★★★★☆</b></font>
				</c:when>
				
				<c:when test="${board.score=='5'}">
				<font size=3, color="orange"><b>★★★★★</b></font>
				</c:when>
				
				<c:otherwise>
				<font size=3, color="orange"><b>☆☆☆☆☆</b></font>
				</c:otherwise>
				
			</c:choose>
			<br>
			</div>
			
			
			
			
			
			
			
			
			
			
			
			
			
			<a href="javascript:openUpdateBoardForm(${board.boardnum})">수정</a>
            <a href="deleteBoard?boardnum=${board.boardnum}&snum=<%= request.getParameter("snum") %>" >삭제</a><br>
                
			</div>
		
		<hr>
	</c:forEach>
</div>




















        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Your Website 2014</p>
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

</jsp>
