<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>
<body>
<form action="/home" method="post">
<lable for="name">이름:</lable>
<input type="text" id="name" name="name">
<br>
<lable for="hp">전화번호:</lable>
<input type="text" id="hp" name="hp">
<br>
<lable for="memo">메모:</lable>
<input type="text" id="memo" name="memo">
<br>
<input type="button" value="전송" onclick="tran()">
</form>

<script>
function tran(){
	var data={
			name:$('#name').val(),
			hp:$('#hp').val(),
			memo:$('#memo').val(),
			}
	
	$.ajax({
		url : "/formProc",
		type:"POST",
		data: JSON.stringify(data),
		contentType:"application/json; charset=utf-8",
		dataType:"json",
		success:function (data){
			//const obj = JSON.parse(data);
			//alert(obj.name); 
			alert(data.name+":"+data.hp+":"+data.memo);//json으로 전달받은 데이터는 parse 필요 없이 바로 사용가능
			}
		});
}
</script>

</body>
</html>