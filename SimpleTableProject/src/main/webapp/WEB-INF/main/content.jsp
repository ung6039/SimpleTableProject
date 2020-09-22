<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script type="text/javascript">
	function daily(a){
		var e = a;
		let since_date = $("#month").val().trim();
		
		
		var month = since_date.split('/')[1].trim();
		var year = since_date.split('/')[0].trim();
		console.log(year);
		console.log(month);
		if(e == 1){
			if(month >= 12){
				year++;
				month = 1;
				location.href = 'Main.do?date='+year+"/"+month ;
			}
			month++;
			console.log(month);
			location.href = 'Main.do?date='+year+"/"+month ;
		}
		if(e == 0){
			if(month == 1){
				year--;
				month = 12;
				location.href = 'Main.do?date='+year+"/"+month ;
			}
			month--;
			location.href = 'Main.do?date='+year+"/"+month ;
		}
		
	}
</script>

<div class="container-fluid bg-1 text-center">
  <c:if test="${sid == null}">
  	<h3 class="margin" style="background-image: uri(img/11.jpg)">Who Am I?</h3>
  </c:if>
  <div class="container">
  	<div class="row" style="width:500px;" class="text-center">
  			<div class="text-center" width="50%">
  				<button class="btn-sm" style="color: black;" onclick="daily(0)">PRE</button>
  				${since_date }
  				<button id="month" class="btn-sm" style="color: black;" onclick="daily(1)" value="${since_date }">NEXT</button>
  			</div>
  		</div>
  </div>
  <table class="table" style="width:60%;height:100%;text-align: center; margin:auto">
  		<tr>
  		<c:forEach  var="i" begin="1" end="${day_list.getDAYS()[month-1]}" step="1">
				<c:if test="${ i == day_list.getSINCE_DATE()}">
					<td class="table-hover" style="background-color: blue;" >
					${i }</td>
				</c:if>
				<c:if test="${i == day_list.getSINCE_DATE()-1 }">
					</tr>
				</c:if>
				<c:if test="${i != day_list.getSINCE_DATE() }">
					<td width="15%" class="table-hover" style="color:black;" >
						<div >
						${i }
						</div>
					</td>
				</c:if>
			</c:forEach>
		</tr>
  		<c:if test="${sid != null }">
  		<table class="table" style="margin: auto; width: 60%">
  		<tr>
  			<td width="30%" style="border-right: solid;">
  				 ${day_list.getSINCE_DATE() -1} 일
  				<h5 style="display: inline;color:red;" >(어제)</h5>
  			</td>
  			<td	width="30%" style="background-color: blue;">
  			  	 ${day_list.getSINCE_DATE() } 일
  			  	 <h5 style="display: inline;">(오늘)</h5>
  			</td>
  		</tr>
  		
  		<tr class="text-center" style="width: 500px;">
  			<td style="width: 100px;">
  			</td>
  			<td>
  				<img src ="${img }"class="img-responsive img-circle margin" style="text-align: center;display:inline;" width="500" height="500">
  			</td>
  		</tr>
  		</table>
  		</c:if>
  		
  	
  </table>
  
</div>
