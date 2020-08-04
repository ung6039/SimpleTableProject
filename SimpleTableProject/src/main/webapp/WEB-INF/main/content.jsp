<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="container-fluid bg-1 text-center">
  <c:if test="${sid == null}">
  	<h3 class="margin">Who Am I?</h3>
  </c:if>
  <table>
  		<c:if test ="${sid == null }">
  			<tr style="width:1000px;">
  				<td class="text-center">
  					<img src="img/11.jpg" class="img-responsive img-circle margin" style="display:inline; " alt="Bird" width="100%" height="350">
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
  		<tr class="text-center">
  			<td width="100%">
  				<img src ="${img }"class="img-responsive img-circle margin" style="text-center" width="350" height="350">
  			</td>
  		</tr>
  		</c:if>
  	
  </table>
  
</div>
