<%--
  Created by IntelliJ IDEA.
  User: bradenwittkop
  Date: 8/28/23
  Time: 11:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%!
    boolean methodIsPost = false;
%>
<%

    if(request.getMethod().equalsIgnoreCase("POST")) {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if("admin".equals(username) && "password".equals(password)) {
      }
            response.sendRedirect("profile.jsp");
    }
%>


<html>
<head>
    <title>Login please ${param.username}</title>
</head>
<body>
    <h1>Hello Please Login Unidentified User.</h1>

    <form method="POST" action="login.jsp">
        <input type="text" name="username" placeholder="Enter your username">
        <input type="password" id="pwd" name="pwd" placeholder="Enter your password">
        <button type="submit">Submit</button>
    </form>



<%--            <c:choose>--%>
<%--                <c:when test="${param.username == 'admin' && param.password == 'password'} ">--%>
<%--                    <c:if test="${param.username == 'admin' && param.password == 'password'} ">--%>
<%--                        <c:redirect url=""--%>
<%--                    </c:if>--%>
<%--                </c:when>--%>
<%--                <c:otherwise>--%>
<%--                    <c:if test="${param.username != null}">--%>
<%--                        <p>Your Username is: ${param.username}</p>--%>
<%--                    </c:if>--%>
<%--                    <c:if test="${param.password != null}">--%>
<%--                        <p>Your password is: ${param.password} </p>--%>
<%--                    </c:if>--%>
<%--                </c:otherwise>--%>
<%--            </c:choose>--%>

</body>
</html>
