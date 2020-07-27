<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>

<script type="text/javascript">
	var sel_file;
	$(document).ready(function(){
		$("#input-img").on("change",handleImgFileSelect);
	});
	
	function handleFileSelect(e){
		var files = e.target.files;
		var fileArr = Array.prototype.slice.call(files);
		
		filesArry.forEach(function(f){
			if(!f.type.match("image.*")){
				alert("이미지 파일만 가능합니다.");
				return;
			}
			
			sel_file = f;
			
			var render = enw FileReader();
			reader.onload = function(e){
				$("#img").attr("src",e.target.result);
			}
			render.readAsDataURL(f);
		})
	}
	
	Shadowbox.init({
		players:['iframe']
	});
	var i =0;
	var p = 0;
	$(function(){
		$('#postBtn').click(function(){
			Shadowbox.open({
				content:'../member/postfind.do',
				title : '우편번호 검색',
				player: 'iframe',
				width:530,
				height:400
			})
			p=1;
		});
		$('#idcheckBtn').click(function(){
			Shadowbox.open({
				content:'idCheck.do',
				title :'아이디 중복 체크',
				player :'iframe',
				width:390,
				height:200
			})
			i=1;
		})
		$('#sendBtn').click(function(){
			if(i==0){
				alert('아이디 중복체크를 하세요');
			}
			else{
				if($('#pwd').val()!=$('#pwd1').val()){
					alert("비밀번호가 틀립니다");
				}
			}
		})
	})
</script>
</head>
<body>
	<div class="container">
		<h1 class="text-center">회원 가입 </h1>
		<div class="row">
			<form name="frm" action="join_ok.do" method="post"
			id="frm">
				<table class="table table-hover">
					<tr>
						<th width="20%" class="danger text-right">프로필</th>
						<td>
							<div class="filebox preview-image">
								<input type="file" name="photo" id="photo"
								class="upload-hidden">
							</div>
						</td>
					</tr>
					
					<tr>
						<th width="20%" class="danger text-right">ID</th>
						<td width="80%">
							<input type="text" name="id" size="15" class="input-sm" id="memberid">
							<input type="button" value="중복체크" class="btn btn-sm btn-danger" id="idcheckBtn">
						</td>
					</tr>
					
					<tr>
						<th width="20%" class="danger text-right">비밀번호</th>
						<td width="80%">
							<input type="password" name="pwd" size="15" class="input-sm"
								id="pwd" required>&nbsp;
								재입력 : <input type="password" name=pwd1 size=15 class="input-sm" id="pwd1" requried>
						</td>
					</tr>
					
					<tr>
						<th width="20%" class="danger text-right">이름</th>
						<td width="80%">
							<input type="text" name="name" size="15" class="input-sm">
						</td>
					</tr>
					
					<tr>
						<th width="20%" class="danger text-right">우편번호</th>
						<td width="80%">
							<input type="text" name=post1 size=5 class="input-sm" readonly required>
							<input type="text" name=post2 size=5 class="input-sm" readonly required>
							<input type="button" class="btn btn-sm btn-primary" value="우편번호 검색" id="postBtn">
						</td>
					</tr>
					
					<tr>
						<th width="20%" class="danger text-right">전화</th>
						<td width="80%">
							<select class="input-sm" name="tel1">
								<option>010</option>
								<option>011</option>
								<option>017</option>
							</select>
							<input type="text" name="tel2" size="5" class="input-sm">
							<input type="text" name="tel3" size="5" class="input-sm">
						</td>
					</tr>
					
					<tr>
						<td colspan="2" class="text-right">
							<input type="submit" value="회원가입" class="btn btn-sm btn-info" id="sendBtn">	
							<input type="button" value="취소" class="btn btn-sm btn-success"
							onclick="javascript:history.back()">
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>