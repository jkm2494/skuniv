<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://localhost/ClothesUp/resources/js/jquery.raty.js"></script>

<script language="javascript"> 

function closeAddBoardForm() {
	window.close(); 
}


$(function() {
	$('div#star').raty({
		score: 3
		,path : "http://localhost/ClothesUp/resources/img"
		,width : 200
		,click: function(score, evt) {
			$("#score").val(score);
		}
	});
});
</script> 

</head>

<body>
<div align="center">
<h1>Board 추가</h1>
<hr>
</div>

<form action="addBoard?snum=${shopnum}" name="form" method="post">
<h3>사용자 아이디 : <input type="text" name="pid" /></h3>
<h3>패스워드 : <input type="text" name="password" /></h3>
<h3>제목 : <input type="text" name="btitle" /></h3>
<h3>내용 : <br>
<TextArea name="bcontent" rows=10 cols=50 ></TextArea></h3>


 <label for="score">별점 : </label> <div id="star"></div>





<div align="center">
<input type="submit" value="추가" onClick="closeAddBoardForm()"/>&nbsp;&nbsp;&nbsp;
<input type="button" value="닫기" onClick="closeAddBoardForm()"/>
</div>
</form>
</body>
</html>