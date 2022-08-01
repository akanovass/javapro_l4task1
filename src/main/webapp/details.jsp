<%@ page import="bd.Student" %><%--
  Created by IntelliJ IDEA.
  User: Professional
  Date: 18.07.2022
  Time: 13:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="vector/bootstrap.jsp"%>
</head>
<body>
<%@include file="vector/navbar.jsp"%>
<div class="container">
    <div class="row mt-3">
        <div class="col-8 mx-auto">
                <%
                    Student student =(Student)request.getAttribute("student");
                %>
            <form action="/edit" method="get">
               <input type="hidden" name="id" value="<%=student.getId()%>">
                <div class="form-group">
                    <label>NAME:</label>
                    <label><%=student.getName()%></label>
                </div><br>
                <div class="form-group">
                    <label>SURNAME:</label>
                    <label><%=student.getSurname()%></label>
                </div><br>
                <div class="form-group">
                    <label>BIRTHDATE:</label>
                    <label><%=student.getBirthDate()%></label>
                </div><br>
                <div class="form-group">
                    <label>CITY:</label>
                    <label><%=student.getCity()%></label>
                </div><br>
                <div class="form-group">
                    <button href="/edit" class="btn btn-success">EDIT STUDENT</button>
                </div><br>
            </form>
        </div>
    </div>
</div>
</body>
</html>
