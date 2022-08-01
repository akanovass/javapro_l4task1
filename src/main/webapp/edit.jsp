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
                Student student = (Student)request.getAttribute("student");
            %>
            <form action="/edit" method="post">
                <input type="hidden" name="id" value="<%=student.getId()%>">
                <div class="form-group">
                    <label>NAME:</label>
                    <input type="text" name="name" class="form-control" value="<%=student.getName()%>">
                </div><br>
                <div class="form-group">
                    <label>SURNAME:</label>
                    <input type="text" name="surname" class="form-control" value="<%=student.getSurname()%>">
                </div><br>
                <div class="form-group">
                    <label>BIRTHDATE:</label>
                    <input type="date" name="birthDate" class="form-control" min="1900-01-01" max="2010-12-31"  value="<%=student.getBirthDate()%>">
                </div><br>
                <div class="form-group">
                    <label>CITY:</label>
                    <select name="city" class="form-control"  value="<%=student.getCity()%>">
                        <option>Almaty</option>
                        <option>Nursultan</option>
                        <option>Aktau</option>
                        <option>Shymkent</option>
                    </select>
                </div><br>
                <div class="form-group">
                    <button class="btn btn-success">SAVE STUDENT</button>
                    <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">DELETE STUDENT</button>
                </div>
            </form>
            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="/delete" method="post">
                            <input type="hidden" name="id" value="<%=student.getId()%>">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Confirm Delete</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                Are You Sure?
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">NO</button>
                                <button class="btn btn-danger">YES</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
