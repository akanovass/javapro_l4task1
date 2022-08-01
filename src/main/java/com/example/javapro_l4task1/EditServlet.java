package com.example.javapro_l4task1;

import bd.DBManager;
import bd.Student;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(value = "/edit")
public class EditServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        Student student = DBManager.getStudent(id);

        request.setAttribute("student", student);
        request.getRequestDispatcher("/edit.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String birthDate = request.getParameter("birthDate");
        String city = request.getParameter("city");

        Student editedStudent = new Student(id,name,surname,birthDate,city);

        DBManager.edit(editedStudent);
        response.sendRedirect("/");
    }
}
