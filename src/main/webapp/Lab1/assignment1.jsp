<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.Lab1.Person" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="com.Lab1.Dog" %><%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 5/15/2021
  Time: 9:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Assignemnt1</title>
</head>
<body>

<h1> c:forEach loog to print 1 to 10</h1>

    <ul>
        <c:forEach var="i" begin="1" end="10">
            <li>${i}</li>
        </c:forEach>
    </ul>
    <hr/>
    <%-- todo 1 : run assignement1.jsp  --%>

    <%-- todo 2 : use c:forEach to print list 1,3,5,7,9   --%>
    <ul>
        <c:forEach var="i" begin="1" end="10" step="2">
            <li>${i}</li>
        </c:forEach>
    </ul>
    <hr/>

   <%-- todo 3 : use c:forEach to print 2,4,6,8,10   --%>
    <ul>
        <c:forEach var="i" begin="2" end="10" step="2">
            <li>${i}</li>
        </c:forEach>
    </ul>
    <hr/>


<% String[] words ={"one","two","three","four","five","six","seven","eight","nine","ten"};
   pageContext.setAttribute("words", words);
%>
<%-- todo 5 : use c:forEach to print "one","three","five","seven","nine"  of array --%>
<ul>
<li>
    <c:forEach  var="w" items="${words}"  step="2">
        ${w}
    </c:forEach>
</li>
</ul>
<%-- todo 4 : use c:forEach to print all elements of array --%>
<ul>
<li>
<c:forEach var="words" items="${words}">
    ${words}
</c:forEach>
</li>
</ul>


<hr/>
<%
List<Person> personList=new ArrayList<Person>();
personList.add(new Person("Tom",new Dog("Tommy")));
personList.add(new Person("Sam",new Dog("Sammy")));
// todo 6 : add a new person into PersonList - person name and dog name
personList.add(new Person("Jack",new Dog("jacky")));
request.setAttribute("AllPerson",personList);
%>
<%--//todo 7: use c:forEach to print person name :   and persons' dog name : --%>
<ul>
    <c:forEach var="p" items="${AllPerson}">
        <li>person name : "${p.name} &nbsp; and person's dog name : "${p.dog.name}"</li>
    </c:forEach>
</ul>
<hr/>
<%
    String str="one:two:three-four-five";
%>
<%--todo 8 : use c:forToken to print all words --%>
<ul>
    <c:forTokens items="one:two:three-four-five" delims=":,-" var="str">
        <li>${str}</li>
    </c:forTokens>
</ul>
<hr/>
</body>
</html>
