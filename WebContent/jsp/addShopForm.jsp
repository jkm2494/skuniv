<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script language="javascript"> 

function closeAddShopForm() {
	window.close(); 
}
</script> 
 
</head>
<body>
<div align="center">
<h1>SHOP 등록</h1>
</div>

<form action="addShop" method="get">
<h3>상점 이름 : <input type="text" name="sname" /></h3>
<h3>전화번호 : <input type="text" name="phone" /></h3>
<h3>이미지 업로드 : <input type="file" name="simage" /></h3>
<h3>카테고리 : <input type="text" name="scategory" /></h3>
<h3>소개글 : <br>
<TextArea name="intro" rows=10 cols=50 > </TextArea> </h3>

<!-- 위도 : <input type="text" name="latitude"/><br>
경도 : <input type="text" name="longitude"/><br> -->

<input type="submit" value="등록" onClick="closeAddShopForm()"/>&nbsp;&nbsp;&nbsp;
<input type="button" value="닫기" onClick="closeAddShopForm()"/>
</form>
</body>
</html>