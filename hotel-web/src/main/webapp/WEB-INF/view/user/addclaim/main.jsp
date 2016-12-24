<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

<h4>main</h4>

<sf:form action="/claim/addClaim" method="POST" modelAttribute="claimModel">
    <table align="center">
        <tr>
            <td>Check in date</td>
            <td><sf:input path="checkInDate"/></td>
        </tr>
        <tr>
            <td>Check out date</td>
            <td><sf:input path="checkOutDate"/></td>
        </tr>

        <c:forEach var = "types" items ="${typeList}" varStatus= "loopIndex">
            <tr><c:out value="${types.getTypeEn()}"/></tr>
            <sf:radiobutton  name="type" value="${types.getId()}" path="type"/>
        </c:forEach>


        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="Add Claim">
            </td>
        </tr>
    </table>
</sf:form>



</body>
</html>