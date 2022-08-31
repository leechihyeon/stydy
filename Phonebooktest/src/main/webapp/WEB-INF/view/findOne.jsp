<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div>
<label for="name">이름:</label>
<input type="text" id="name1" name="name1"  value="${phonebook.name}">
<br>
<label for="hp">전화번호:</label>
<input type="text" id="hp1" name="hp1"  value="${phonebook.hp}">
<br>
<label for="memo">메모:</label>
<input type="text" id="memo1" name="memo1"  value="${phonebook.memo}">
<br>
<!-- <input type="submit" value="전화번호입력"> -->
</div>
<input type="button" value="수정" id="ddt" onclick="update(${phonebook.idx})">
<input type="button" value="삭제" id="ddy" onclick="deletelist(${phonebook.idx})">

	