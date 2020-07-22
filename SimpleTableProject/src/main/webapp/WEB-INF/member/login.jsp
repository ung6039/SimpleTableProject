<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<c:if test="${msg == NO }">
	<script type="text/javascript">
		alert("비밀번호와 아이디가 틀립니다!");
	</script>
</c:if>
<body>
<div class="container">
	<div class="row">
		<form action="login_ok.do" method="post">
		<table class="table table-hover text-center">
			<tr>
				<td><h1>로그인</h1>
				</td>
			</tr>
			<tr>
				<td>
					ID:<input type="text" name="id" value=" ">
				</td>
			</tr>
			<tr>
				<td>
					PWD:&nbsp;<input type="password" name="pwd" value=" ">
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit" class="btn-sm btn-primary" value="로그인">
					<input type="button" class="btn-sm btn-danger" value="취소"
						onclick="javascript:history.back()"
					>
				</td>
			</tr>
		</table>
		</form>
	</div>
</div>

</body>
</html>