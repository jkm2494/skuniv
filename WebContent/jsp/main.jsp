<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="kr.ac.cu.vo.PersonVO" %>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/naverLogin_implicit-1.0.2.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Modern Business - Start Bootstrap Template</title>

    <!-- Bootstrap Core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    
	<link rel="stylesheet" href="resources/css/styles.css">
	
    <!-- Custom CSS -->
    <link href="resources/css/modern-business.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->


<script type="text/javascript">
function myFunction() {
	if(document.getElementById("myDropdown") != null){
    	document.getElementById("myDropdown").classList.toggle("show");
    	if(document.getElementById("myDropdown").classList[1] != null){
    		$("#myPageBtn").attr("src", "resources/images/mypage_up.png")
    	}else{
    		$("#myPageBtn").attr("src", "resources/images/mypage_down.png")
    	}
	}
}

// Close the dropdown menu if the user clicks outside of it
window.onclick = function(event) {

  if (event.target.classList[0] =='.dropbtn' ) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>
</head>

<body>
<%@page import="kr.ac.cu.vo.PersonVO" %>
	<%if(request.getAttribute("access_token") != null) 
		System.out.println(request.getAttribute("access_token").toString()); %>
	<%System.out.println("loginEmail"+session.getAttribute("loginEmail")); %>
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
                <a class="navbar-brand" href="index.jsp">Home</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            
            <%if(session.getAttribute("loginEmail") == null){%>
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
            
            <%}
            
            else{ %>
               <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a onclick="myFunction()" class="dropbtn"><%out.print(session.getAttribute("loginName")); %>님</a>
                        <div id="myDropdown" class="dropdown-content">
				<a class="dropMenu" href="favorite">Favorite</a>
				<hr class="dropLine"/>
				<a class="dropMenu"  href="perUpdateForm">정보수정</a>
				<hr class="dropLine"/>
				<a class="dropMenu"  onclick="click_logout();">로그아웃</a>
			</div>
                    </li>
                   <li>
                        <a href="services.jsp">지도</a>
                    </li>
                    <li>
                        <a href="shoplist">매장</a>
                    </li>
                    <li>
                        <a href="favorite">Favorite</a>
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
            
            <%} %>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Header Carousel -->
    <header id="myCarousel" class="carousel slide">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <div class="fill" style="background-image:url('http://placehold.it/1900x1080&text=Slide One');"></div>
                <div class="carousel-caption">
                    <h2>Caption 1</h2>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('http://placehold.it/1900x1080&text=Slide Two');"></div>
                <div class="carousel-caption">
                    <h2>Caption 2</h2>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('http://placehold.it/1900x1080&text=Slide Three');"></div>
                <div class="carousel-caption">
                    <h2>Caption 3</h2>
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>
    </header>

    <!-- Page Content -->
    <div class="container">

        <!-- Marketing Icons Section -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    Welcome to Modern Business
                </h1>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i> Bootstrap v3.2.0</h4>
                    </div>
                    <div class="panel-body">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod?</p>
                        <a href="#" class="btn btn-default">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-gift"></i> Free &amp; Open Source</h4>
                    </div>
                    <div class="panel-body">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod?</p>
                        <a href="#" class="btn btn-default">Learn More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-compass"></i> Easy to Use</h4>
                    </div>
                    <div class="panel-body">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod?</p>
                        <a href="#" class="btn btn-default">Learn More</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.row -->

        <!-- Portfolio Section -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">Portfolio Heading</h2>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.jsp">
                    <img class="img-responsive img-portfolio img-hover" src="http://placehold.it/700x450" alt="001.png">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.jsp">
                    <img class="img-responsive img-portfolio img-hover" src="http://placehold.it/700x450" alt="">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.jsp">
                    <img class="img-responsive img-portfolio img-hover" src="http://placehold.it/700x450" alt="">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.jsp">
                    <img class="img-responsive img-portfolio img-hover" src="http://placehold.it/700x450" alt="">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.jsp">
                    <img class="img-responsive img-portfolio img-hover" src="http://placehold.it/700x450" alt="">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.jsp">
                    <img class="img-responsive img-portfolio img-hover" src="http://placehold.it/700x450" alt="">
                </a>
            </div>
        </div>
        <!-- /.row -->

        <!-- Features Section -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">Modern Business Features</h2>
            </div>
            <div class="col-md-6">
                <p>The Modern Business template by Start Bootstrap includes:</p>
                <ul>
                    <li><strong>Bootstrap v3.2.0</strong>
                    </li>
                    <li>jQuery v1.11.0</li>
                    <li>Font Awesome v4.1.0</li>
                    <li>Working PHP contact form with validation</li>
                    <li>Unstyled page elements for easy customization</li>
                    <li>17 HTML pages</li>
                </ul>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis, omnis doloremque non cum id reprehenderit, quisquam totam aspernatur tempora minima unde aliquid ea culpa sunt. Reiciendis quia dolorum ducimus unde.</p>
            </div>
            <div class="col-md-6">
                <img class="img-responsive" src="http://placehold.it/700x450" alt="">
            </div>
        </div>
        <!-- /.row -->

        <hr>

        <!-- Call to Action Section -->
        <div class="well">
            <div class="row">
                <div class="col-md-8">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias, expedita, saepe, vero rerum deleniti beatae veniam harum neque nemo praesentium cum alias asperiores commodi.</p>
                </div>
                <div class="col-md-4">
                    <a class="btn btn-lg btn-default btn-block" href="#">Call to Action</a>
                </div>
            </div>
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
  
    	<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document" style="width: 400px; padding-top:70px;">
			<div class="modal-content">
				<div class="modal-header m-header">
					<div class="modal-header-logo" style="text-align: center;">
						<h3>로그인</h3>
						<hr style="margin-top: 10px; margin-bottom: 45px;; width: 120px; border: 1.5px solid gray;" />
					</div>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span> <span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel"></h4>
				</div>
				<div class="login-sel">
					<a class="loginMember">업체 회원 로그인</a>
				</div>
				<form id="loginForm1" action='loginCon' method='post'>
					<div class="modal-body">
						<input id="loginID" name="strEMAIL" type="text" placeholder="아이디" /><br /> <input
							id="loginPW" name="strPASS" type="password" placeholder="비밀번호" />
					</div>
					<div id="naver_id_login"></div>
							</form>
						<form id="loginForm" action="loginCheck" method="post" style="display:none;">
						<%System.out.println("logincheck 실행"+session.getAttribute("loginEmail")); %>
						<input id="pid" name="pid" value="" />
						<input id="pname" name="pname" value="" />
						<input id="ppassword" name="ppassword" value="****" />
						<input id="ptype" name="ptype" value="1" />
						<input id="accTok" name="accTok" value="<%= session.getAttribute("access_token") != null ? session.getAttribute("access_token").toString() : "" %>"/>
					</form>
					<form id="logout1" action="logout" method="post" style="display:none;">
					</form>
					
<!-- 					<div style="display : none;"> -->
						
<!-- 						<input type="hidden" id = "hidEMAIL" value=""/> -->
<!-- 						<input type="hidden" id = "hidNICKNAME"  value=""/> -->
<!-- 						<input type="hidden" id = "hidAGE" value="" /> -->
<!-- 					</div> -->
					
					
<!-- 					<div class="modal-footer"> -->
<!-- 						<input type="submit" class="btnlogin" -->
<!-- 							class="btn btn-primary-outline" data-dismiss="modal" onclick="$('#loginForm').submit();" value="로그인" /> -->
<!-- 					</div> -->
					
		
		
</div>
			</div>
		</div>
	</div>
	
	
	
 
    
    <!-- /.container -->

    <!-- jQuery -->
    <script src="resources/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/js/bootstrap.min.js"></script>

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 2000 //changes the speed
    })
    </script>


   <script type="text/javascript">
	var naver_id_login = new naver_id_login("yqzzax9I8h6vungLtVY3", "http://127.0.0.1:80/ClothesUp/main1");
	var state = naver_id_login.getUniqState();

	naver_id_login.setButton("white", 2,40);
	naver_id_login.setDomain(".service.com");
	naver_id_login.setState(state);
// 	naver_id_login.setPopup();
	naver_id_login.init_naver_id_login();
	
</script>
<script type="text/javascript">
	// 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
	function naverSignInCallback() {
		// naver_id_login.getProfileData('프로필항목명');
		// 프로필 항목은 개발가이드를 참고하시기 바랍니다.
// 		alert(naver_id_login.getProfileData('email'));
// 		alert(naver_id_login.getProfileData('nickname'));
// alert(naver_id_login.getProfileData('name'));
// 		alert(naver_id_login.getProfileData('age'));
			//$('#naver_id_login a').click(function(){
			
			//});
// 		    email   = naver_id_login.getProfileData('nickname');
// 		    snsName = naver_id_login.getProfileData('age');
		//$('.test').html(naver_id_login.getProfileData('email'));
		//alert();
		$('#pid').val(naver_id_login.getProfileData('email'));
		$('#pname').val(naver_id_login.getProfileData('nickname'));
		$('#hidAGE').val(naver_id_login.getProfileData('age'));
		$('#accTok').val(naver_id_login.oauthParams.access_token);
		if($('#pid').val() != null){
			$('#naver_id_login').hide();
		}else{
			$('#naver_id_login').show();
		}
		
		$('#loginForm').submit();
	}
	naver_id_login.get_naver_userprofile("naverSignInCallback()");
	
	function click_logout() {
		  $.ajax({
			    type: "POST",
			    dataType: 'text',
			    url: "http://nid.naver.com/nidlogin.logout",
			    crossDomain : true,
			    xhrFields: {
			        withCredentials: true
			    }
			})
			    .done(function( data ) {
			    	$('#logout1').submit();
			    })
			    .fail( function(xhr, textStatus, errorThrown) {
			    	$('#logout1').submit();
			    });
		}
</script>


</body>

</html>
