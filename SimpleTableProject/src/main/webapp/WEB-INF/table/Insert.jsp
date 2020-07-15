<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <h1 class="text-center">Insert</h1>
<form action="Insert_ok.do">
<table class="table">
	
	<tr>	
		<th>제목</th>
		<td>
			<input type="text" value="" name="subject"/>
		</td>
	</tr>
	<tr>
		<th>내용</th>
		<td><textarea name="content"></textarea></td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td><input type="password" value=" " name="password"/></td>
	</tr>
	<tr>
		<td>
			<input type="submit" value="글쓰기">
		
			<a href="../Table.do" class="btn btn-danger">목록</a>
		</td>
	</tr>
	
</table>
</form>