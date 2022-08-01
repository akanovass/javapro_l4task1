package com.example.javapro_l4task1;

import bd.DBManager;
import bd.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/details")
public class DetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Long id=Long.parseLong(request.getParameter("id"));
        Student student = DBManager.getStudent(id);
        request.setAttribute("student", student);
        request.getRequestDispatcher("/details.jsp").forward(request,response);
    }
}
