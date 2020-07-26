<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<nav class="navbar navbar-default">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="Main.do">Me</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
      <c:if test="${sid == null }">
      	<li><a href="Login.do">로그인</a></li>
      </c:if>
      <c:if test ="${sid != null }">
      	<li><a href="Logout.do">로그아웃</a></li>
        <li><a href="Table.do">Table</a></li>
        <li><a href="Image.do">image</a></li>
       </c:if>
       <c:if test ="${sid == null }">
        <li><a href="Member.do">회원가입</a></li>
       </c:if>
      </ul>
    </div>
  </div>
</nav>

</body>
</html>