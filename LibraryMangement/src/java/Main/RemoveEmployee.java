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
public class RemoveEmployee extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String empId = request.getParameter("employeeId").trim();

        try {
            Connection con = ConnectionProvider.getConnection();
            Statement stmt = con.createStatement();
            Statement stmt2 = con.createStatement();
            stmt.execute("DELETE FROM register WHERE id = '" + empId + "'");
            stmt2.execute("DELETE FROM login WHERE id = '" + empId + "'");

            request.setAttribute("alert", "Employee Removed");
            RequestDispatcher rd = request.getRequestDispatcher("adminWelcome.jsp");
            rd.forward(request, response);
        } catch (Exception e) {
            System.out.println(e);
        }

    }

}
