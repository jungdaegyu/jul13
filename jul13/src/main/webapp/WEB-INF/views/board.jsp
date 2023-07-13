<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보드</title>

<link href="./css/board.css" rel="stylesheet">


</head>
<body>
	<h1>보드 : ${name }</h1>
	데이터는 잠시 뒤에 <br>
	<hr>
<table>
	<thead>
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>글쓴이</th>
		<th>날짜</th>
		<th>조회수</th>
	</tr>
	</thead>
	<tbody>
	
	<c:forEach items="${list }" var="row"> 	<!-- board controller에서 만들어준 list를 row라는 이름으로 다 열어줌 foreach랑 똑같음 -->
	<tr>
		<td id = "td1">${row.bno }</td>
		<td class="title">${row.btitle }</td>
		<td id = "td1">${row.bwrite }</td>
		<td id = "td2">${row.bdate }</td>
		<td id = "td1">${row.blike }</td>
	</tr>
	</c:forEach>
	
	
	</tbody>	
</table>

<hr>

<table>
	<thead>
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>글쓴이</th>
		<th>날짜</th>
		<th>조회수</th>
	</tr>
	</thead>
	<tbody>
	
	<c:forEach items="${list2 }" var="row"> 	<!-- board controller에서 만들어준 list를 row라는 이름으로 다 열어줌 foreach랑 똑같음 -->
	<tr>
		<td id = "td1">${row.bno }</td>
		<td class="title">${row.btitle }</td>
		<td id = "td1">${row.bwrite }</td>
		<td id = "td2">${row.bdate }</td>
		<td id = "td1">${row.blike }</td>
	</tr>
	</c:forEach>
	
	
	</tbody>	
</table>

</body>
</html>