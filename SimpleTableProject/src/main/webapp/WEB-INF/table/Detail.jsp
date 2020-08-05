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
	<div style="text-align: center;color: white;background-color: green">
		
	</div>
	<table>
		<tr class="text-center" style="color:white;background-color: green">
			<td>
				<h1>상세 게시판</h1>
			</td>
		</tr>
		<tr>
			<th class="text-center" width="10%">번호</th>
			<td class="text-center">${vo.no }</td>
		</tr>
		<tr>
			<th class="text-center" width="20%">제목</th>
			<td class="text-center">${vo.subject}</td>
		</tr>
		<tr>
			<th class="text-center" width="10%">글쓴이</th>
			<td class="text-center">${vo.name }</td>
		</tr>
		<tr>
			<th class="text-center" width="10%">날짜</th>
			<td class="text-center">
				<fmt:formatDate pattern="MM-dd" value="${vo.regdate }"></fmt:formatDate>
			</td>
		</tr>
		<tr>
			<th class="text-center" width="40%">내용</th>
			<td width="100%">
				${vo.content }
			</td>
		</tr>
	</table>
</body>
</html>