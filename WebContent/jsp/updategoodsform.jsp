<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>상품 정보 수정</h1>
	<form action="updategoods" method="post">
	상품번호 : <input type="text" name=gnum value=<%=request.getParameter("gnum")%> ><br>
	상품이름 : <input type="text" name=gname  ><br>
	상품이미지 : <input type="text" name=gimage ><br>
	상품가격 : <input type="text" name=gprice ><br>
	상품분류 : <input type="text" name=gcnum ><br>
	매장번호 : <input type="text" name=snum ><br>
	사이즈 : <input type="text" name=gsize ><br>
	수량 : <input type="text" name=quantity ><br>
 	<input type="submit" value="정보수정">
	<input type="reset" value="취소"/>
	</form>
</body>
</html>