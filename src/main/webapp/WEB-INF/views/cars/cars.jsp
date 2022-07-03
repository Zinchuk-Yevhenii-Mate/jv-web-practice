<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all cars</title>
</head>
<body>
<h1>List of cars</h1>
<table>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER_ID</td>
        <td>MANUFACTURER_NAME</td>
        <td>MANUFACTURER_COUNTRY</td>
        <td>DRIVER_NAME</td>
        <td>DRIVER_LICENSE_NUMBER</td>
        <td>DELETE</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer.id}" /></td>
            <td><c:out value="${car.manufacturer.name}" /></td>
            <td><c:out value="${car.manufacturer.country}" /></td>
            <td>
                <c:forEach items="${car.drivers}" var="driver">
                    <c:out value="${driver.id}"/> <br>
                </c:forEach>
            </td>
            <td>
                <c:forEach items="${car.drivers}" var="driver">
                    <c:out value="${driver.name}" /><br>
                </c:forEach>
            </td>
            <td>
                <c:forEach items="${car.drivers}" var="driver">
                    <c:out value="${driver.licenseNumber}" /><br>
                </c:forEach>
            </td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete this car></a></td>
        </tr>
    </c:forEach>
</table>
<p><a href="${pageContext.request.contextPath}/cars/add">Create car</a></p>
<p><a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a></p>
<p><a href="${pageContext.request.contextPath}/index">Main page</a></p>
</body>
</html>