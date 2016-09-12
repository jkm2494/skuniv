<%@page import="kr.ac.cu.vo.FaqVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head></head>
<body>
<ul class="pageUL">
    <c:if test="${pageMaker.prev }">
        <li><a href='list?page=${pageMaker.start -1}'>이전</a></li>
    </c:if>

    <c:forEach begin="${pageMaker.start }" end="${pageMaker.end}" var="idx">
        <li
            class='<c:out value="${idx == pageMaker.page?'current':''}"/>'>
            <a href='list?page=${idx}'>${idx}</a>
        </li>

    </c:forEach>

    <c:if test="${pageMaker.next }">

        <li><a href='list?page=${pageMaker.end +1}'>다음</a></li>
    </c:if>
</ul>
</body>
</html>