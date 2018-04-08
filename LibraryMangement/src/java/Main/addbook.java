/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Main;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mohnish
 */
public class addbook extends HttpServlet {

    String id, name, language, author;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        id = request.getParameter("id");
        name = request.getParameter("name");
        language = request.getParameter("language");
        author = request.getParameter("author");

        try {

            Connection con = ConnectionProvider.getConnection();
            PreparedStatement ps = con.prepareStatement("insert into book values (?,?,?,?,?)");
            ps.setString(1, id);
            ps.setString(2, name);
            ps.setString(3, language);
            ps.setString(4, author);
            ps.setString(5, "F");

            if (ps.executeUpdate() > 0) {
                request.setAttribute("alert", "Succesfully Added Book");

            } else {
                request.setAttribute("alert", "Unable to Add Book");

            }

            RequestDispatcher rd = request.getRequestDispatcher("libraryDashboard.jsp");
            rd.forward(request, response);

        } catch (Exception e) {
            System.out.println(e);

        }

    }

}
