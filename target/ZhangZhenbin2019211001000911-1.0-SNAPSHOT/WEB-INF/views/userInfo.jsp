<%@ page import="com.ZhangZhenbin.model.User" %><%--
  Created by IntelliJ IDEA.
  User: new
  Date: 2021/4/11
  Time: 10:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<%
    User u=(User) session.getAttribute("user");
%>

<h1>User Info</h1>
<%
    Cookie [] allCookies=request.getCookies();
    for (Cookie c:allCookies){
        out.println("<br/>"+c.getName()+"---"+c.getValue());
   }



%>
<%
   //User user=(User)request.getAttribute("user");
%>
<table>
    <tr>
        <td>Username:</td><td><%=u.getUsername()%></td>
    </tr>
    <tr>
        <td>Password:</td><td><%=u.getPassword()%></td>
    </tr>
    <tr>
        <td>Email:</td><td><%=u.getEmail()%></td>
    </tr>
    <tr>
        <td>Gender:</td><td><%=u.getGender()%></td>
    </tr>
    <tr>
        <td>Birthdate:</td><td><%=u.getBirthdate()%></td>
    </tr>
</table>
<a href="UpdateUser">Update</a>
<%@include file="footer.jsp"%>