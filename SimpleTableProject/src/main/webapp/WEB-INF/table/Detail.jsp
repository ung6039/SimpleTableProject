<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
	<tr class="text-center" style="width:100px;">
		<th class="text-center" width="10%">번호</th>
		<th class="text-center" width="20%">제목</th>
		<th class="text-center" width="10%">글쓴이<th>
		<th class="text-center" width="40%">내용</th>
		<th class="text-center" width="10%">날짜</th>
	</tr>
	<tr>
		<td class="text-center">${vo.no }</td>
		<td class="text-center">${vo.subject}</td>
		<td class="text-center">${vo.name }</td>
		<td width="100%">
			${vo.content }
		</td>
		<td class="text-right">
			<fmt:formatDate pattern="MM-dd" value="${vo.regdate }"></fmt:formatDate>
		</td>
	</tr>
	</table>
</body>
</html>