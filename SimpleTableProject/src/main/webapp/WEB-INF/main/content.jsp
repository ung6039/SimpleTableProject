<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="container-fluid bg-1 text-center">
  <c:if test="${sid == null}">
  	<h3 class="margin">Who Am I?</h3>
  </c:if>
  <table style="width:60%;height:100%;text-align: center; margin:auto">
  		<c:if test ="${sid == null }">
  			<tr>
  				<td>
  					<img src="img/11.jpg" class="img-responsive img-circle margin" style="display:inline; " alt="Bird" width="500" height="350">
  				</td>
  			</tr>
  		</c:if>
  		<c:if test="${sid	!= null }">
  		<tr>
  			<td	width="20%">
  				${sid }의 할일
  			</td>
  		</tr>
  		<tr>
  			<td>
  				<h1>
  					<fmt:formatDate var="newFormattedDateString" value="${date }" pattern="yyyy-MM-DD"></fmt:formatDate>
  				</h1>
  			</td>
  		</tr>
  		<tr class="text-center" style="width: 500px;">
  			<td>
  				<img src ="${img }"class="img-responsive img-circle margin" style="text-align: center;display:inline;" width="500" height="500">
  			</td>
  		</tr>
  		</c:if>
  	
  </table>
  
</div>
