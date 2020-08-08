<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="container-fluid bg-1 text-center">
  <c:if test="${sid == null}">
  	<h3 class="margin" style="background-image: uri(img/11.jpg)">Who Am I?</h3>
  </c:if>
  <table style="width:60%;height:100%;text-align: center; margin:auto">
  		<tr style="width:500px;" class="text-center">
  			<td class="text-center" width="30%">
  				${day_list.getSINCE_YEAR() } / ${day_list.getSINCE_MONTH()} / ${day_list.getSINCE_DATE()}  
  			</td>
  		</tr>
  		<tr>
			<c:forEach  var="i" items="${day_list.getDAY() }">
				<c:if test="${ i == day_list.getSINCE_DATE()}">
					<td style="background-color: blue">${i }</td>
				</c:if>
				<c:if test="${i != day_list.getSINCE_DATE() }">
					<td width="15%">${i }</td>
				</c:if>
				<c:if test="${day_list.getDAY()[i] % 7 == 1 }">
					</tr>
				</c:if>
			</c:forEach>
		</tr>
  		<c:if test="${sid != null }">
  		<tr>
  			<td	width="20%">
  				${sid }의 할일
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
