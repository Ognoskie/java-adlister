<%--
  Created by IntelliJ IDEA.
  User: bradenwittkop
  Date: 8/30/23
  Time: 1:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Ads</title>
    <jsp:include page="/partials/head.jsp" />
</head>
<body>
<jsp:include page="/partials/navbar.jsp" />
<h1>All Ads</h1>
<c:forEach var="ad" items="${ads}">
    <h2>${ad.title}</h2>
    <p>${ad.description}</p>
</c:forEach>
</body>
</html>
