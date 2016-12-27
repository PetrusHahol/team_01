<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<script src="<c:url value="/assets/js/jquery-3.1.1.min.js"/>"></script>
		
	</head>
	<body>
	
	<c:forEach var = "room" items ="${roomList}" varStatus= "loopIndex">
		Seats: ${room.seats}<br>
		Coast: ${room.coast}<br>
		Address: Пока нету<br>
		Type: ${room.type.typeEn}<br>
		Status: ${room.status.statusEn}<br>
		<form action="claim">
			<input type="hidden" name="roomId" value="${room.id}">
			<input type="submit" value="Add claim">
		</form>
		-------------------------<br>
		
	</c:forEach>
	
	<span>${message}</span>
	
	</body>
</html>