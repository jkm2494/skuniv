<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script language="javascript"> 

function closeUpdateBoardForm() {
	window.close(); 
}
</script> 

</head>

<body>
<div align="center">
<h1>Board 수정</h1>
<hr>
</div>

<form action="updateBoard?boardnum=${boardInfo.boardnum}" method="post">
<h3>사용자 아이디 : <input type="text" name="pid" readonly value=${boardInfo.pid} /></h3>
<h3>패스워드 : <input type="text" name="password" readonly value=${boardInfo.password} /></h3>
<h3>상점 번호 : <input type="text" name="snum" readonly value=${boardInfo.snum} /></h3>
<h3>제목 : <input type="text" name="btitle" value=${boardInfo.btitle} /></h3>
<h3>내용 : <br>
<TextArea name="bcontent" rows=10 cols=50 value=${boardInfo.bcontent}></TextArea></h3>
<h3>점수 : <input type="text" name="score" value=${boardInfo.score} /></h3>
<div align="center">
<input type="submit" value="수정" onClick="closeUpdateBoardForm()"/>&nbsp;&nbsp;&nbsp;
<input type="button" value="닫기" onClick="closeUpdateBoardForm()"/>
</div>
</form>
</body>
</html>