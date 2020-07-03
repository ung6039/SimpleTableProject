<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <h1 class="text-center">Insert</h1>
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
			<a href="../main/Insert_ok.do" class="btn btn-primary">확인</a>
			<a href="../main/Table.do" class="btn btn-danger">목록</a>
		</td>
	</tr>

</table>