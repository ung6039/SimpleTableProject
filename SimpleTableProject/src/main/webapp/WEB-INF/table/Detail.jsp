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

	<div class="container-fluid text-center">
		<div class="row" style="background-color: green;color:white">
			<h1>상세 게시판</h1>
		</div>
	<table>
		<tr>
			<th class="text-center" width="20%">번호</th>
			<td class="text-left">${vo.no }</td>
		</tr>
		<tr>
			<th class="text-center" width="20%">제목</th>
			<td class="text-left">${vo.subject}</td>
		</tr>
		<tr>
			<th class="text-center" width="20%">글쓴이</th>
			<td class="text-left">${vo.name }</td>
		</tr>
		<tr>
			<th class="text-center" width="20%">날짜</th>
			<td class="text-left">
				<fmt:formatDate pattern="MM-dd" value="${vo.regdate }"></fmt:formatDate>
			</td>
		</tr>
		<tr>
			<th class="text-center" width="20%">내용</th>
			<td rowspan="4" width="80%" class="text-center">
				<pre>${vo.content }</pre>
			</td>
		</tr>
	</table>
	</div>
</body>
</html>