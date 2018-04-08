/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Main;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.UUID;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mohnish
 */
public class requestQuery extends HttpServlet {

    String firstName, lastName, email, query;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        firstName = request.getParameter("firstName");
        lastName = request.getParameter("lastName");
        email = request.getParameter("email");
        query = request.getParameter("query");

        try {
            Connection con = ConnectionProvider.getConnection();

            PreparedStatement ps = con.prepareStatement("insert into contactrequest values (?,?,?,?,?)");

            ps.setString(1, UUID.randomUUID().toString().replace("-", "").substring(0, 7));
            ps.setString(2, firstName);
            ps.setString(3, lastName);
            ps.setString(4, email);
            ps.setString(5, query);

            if (ps.executeUpdate() > 0) {
                request.setAttribute("alert", "Will Contact You Soon ....");
            } else {
                request.setAttribute("alert", "Something Went Wrong Please Try Again Later");
            }

            RequestDispatcher rd = request.getRequestDispatcher("contactus.jsp");
            rd.forward(request, response);

        } catch (Exception e) {
        }

    }

}
