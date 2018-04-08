/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Main;

import java.io.IOException;
import java.sql.Connection;
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
public class returnbook extends HttpServlet {

    String bookId;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        bookId = request.getParameter("bookId");

        try {
            Connection con = ConnectionProvider.getConnection();

            Statement stmt = con.createStatement();
            int count = stmt.executeUpdate("update issue set flag='R' where BOOKID='" + bookId + "' AND flag='I'");

            if (count == 1) {
                request.setAttribute("alert", "Successfully Returned Book");
            } else {
                request.setAttribute("alert", "Book doesnt Exisit or Book is already Returned");
            }

            RequestDispatcher rd = request.getRequestDispatcher("libraryDashboard.jsp");
            rd.forward(request, response);

        } catch (Exception e) {

        }

    }

}
