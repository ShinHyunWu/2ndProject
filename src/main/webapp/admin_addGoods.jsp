<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
*{
margin: 0;
padding: 0;
box-sizing: border-box;
}

.title{
	width: 100%;
	height: 150px;
	background-color: #525d76;
	color: #ffffff;
	text-align: center;
	line-height: 145px;
}
a{
	text-decoration-line: none;
}
#input_name,
#input_price,
#input_quantity,
#input_content,
#input_caId{
border-width: 0 0 1px;
}
.container{
	display:flex;
	justify-content: center;
}
.content{
	display:flex;
	width:100%;
	
}
.laname{
	width:150px;
	font-size: 20px;
	margin:30px;
}
.inputcss{
	width:400px;
	font-size: 20px;
}
.modibtn{
	display:flex;
	margin-top: 30px;
	margin-left: 220px;
}
#addBtn{
	width:200px;
	height:50px;
	background: inherit;
	border:1px solid black;
	box-shadow:none;
	overflow:visible;
	cursor:pointer;
}
</style>
</head>
<body>
	<h2 class="title"><a href="admin_goodsList.jsp" style="color:white;">제품 추가</a></h2>
	<div class="container">
	<form id="addgoodsForm" action="admin_addGoods_proc.jsp" method="post">
		<input type="hidden" name="id" value="">
		<div class="content">
		<label class="laname">이름</label><input class="inputcss" type="text" id="input_name" name="name"
			value="">
		</div>
		<div class="content">
		<label class="laname">가격</label><input class="inputcss" type="text" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" id="input_price" name="price"
			value="">
		</div>
		<div class="content">
		<label class="laname">수량</label><input class="inputcss" type="text" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" id="input_quantity" name="quantity"
			value="">
		</div>
		<div class="content">
		<label class="laname">설명</label><input class="inputcss" type="text" id="input_content" name="content"
			value="">
		</div>
		<div class="content">
		<label class="laname">카테고리ID</label><input class="inputcss" type="text" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" id="input_caId" name="ca_id"
			value="">
		</div>
		<div class="modibtn">
		<button id="addBtn" type="button">추가하기</button>
		</div>
		
	</form>
	</div>
	
	<script>
	let form = document.getElementById('addgoodsForm');
	let addbtn = document.getElementById('addBtn');

	addbtn.addEventListener('click', () => {
		if(document.getElementById('input_name').value == ""){
			alert('이름을 비워둘 수 없습니다');
		}else if(document.getElementById('input_price').value == ""){
			alert('가격을 비워둘 수 없습니다');
		}else if(document.getElementById('input_quantity').value == ""){
			alert('수량을 비워둘 수 없습니다');
		}else if(document.getElementById('input_content').value == ""){
			alert('내용을 비워둘 수 없습니다');
		}else if(document.getElementById('input_caId').value == ""){
			alert('카테고리ID를 비워둘 수 없습니다');
		}else{
			form.action = 'admin_addGoods_proc.jsp';
		  	form.submit();
		}
		
	});
	
	</script>
</body>
</html>