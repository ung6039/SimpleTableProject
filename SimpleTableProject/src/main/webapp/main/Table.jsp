<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div style="background-color:silver ;">
	<h1 class="text-center">게시판</h1>
</div>
<table class="table">

	<tr class="text-center" style="width:100px;">
		<th class="text-center" width="20%">번호</th>
		<th class="text-center" width="20%">제목</th>
		<th class="text-center" width="20%">글쓴이</th>
		<th class="text-center" width="30%">날짜</th>
	</tr>
	<c:forEach var ="vo" items="${list }">
	<tr>
		<td class="text-center">${vo.no}</td>
		<td class="text-center" colspan="3">${vo.subject}</td>
		<td class="text-center" width="50%;">ungs</td>
		<td class="text-center">
		<fmt:formatDate value="${vo.regdate}" pattern="yyyy-MM-dd"/>
		</td>
		<td class="text-center">
			<button>댓글</button>
		</td>
	</tr>
	</c:forEach>
	<tr class="text-center">
		<td class="text-center" colspan="6">
		<ul class="text-center" style="text-decoration: none">
			<li>
			<a class="btn btn-primary"style="color:white;">PRE</a>
			${start} / ${total}
			<a class="btn btn-danger" style="color:white;">NEXT</a>
			</li>
		</ul>
		</td>
	</tr>
	<tr class="text-center" align="center">
		<td class="text-center" colspan="6">
			<a href="../main/Insert.do"class="btn btn-danger">글쓰기</a>
			<a href="../main/Main.do"class="btn btn-danger">Home</a>
		</td>
	</tr>
	
</table>
