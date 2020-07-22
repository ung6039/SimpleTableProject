<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container-fluid bg-1 text-center">
  <c:if test="${id == null}">
  <h3 class="margin">Who Am I?</h3>
  </c:if>
  <h3> ID : ${id } </h3>
  <c:if test ="${id == null }">
  	<img src="img/11.jpg" class="img-responsive img-circle margin" style="display:inline" alt="Bird" width="350" height="350">
  </c:if>
  <img src ="${img }"class="img-responsive img-circle margin" style="display:inline" alt="Bird" width="350" height="350">
</div>
