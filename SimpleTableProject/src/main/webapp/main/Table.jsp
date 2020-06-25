<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div style="background-color:silver ;">
	<h1 class="text-center">게시판</h1>
</div>
<table class="table">

	<tr class="text-center">
		<th class="text-center">번호</th>
		<th class="text-center" colspan="3">제목</th>
		<th class="text-center">글쓴이</th>
		<th class="text-center">날짜</th>
	</tr>
	<c:forEach var ="vo" items="${list }">
	<tr>
		<td class="text-center">${vo.no}</td>
		<td class="text-center" colspan="3">${vo.subject}</td>
		<td class="text-center">${vo.name}</td>
		<td class="text-center">
		<fmt:formatDate value="${vo.regdate}" pattern="yyyy-MM-dd"/>
		</td>
		<td class="text-center">
			<button>댓글</button>
		</td>
	</tr>
	</c:forEach>
	<tr class="text-center">
		<td>
		<ul class="text-center">
			<li class="primary">
				<a>PRE</a>
			</li>
				${start} / ${total}
			<li class="primary">
				<a>NEXT</a>
			</li>
		</ul>
		</td>
	</tr>
	
</table>
