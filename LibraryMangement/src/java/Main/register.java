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
public class register extends HttpServlet {

    String firstName, lastName, age, dob, gender, address, phoneNumber, email, password;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        firstName = request.getParameter("firstName");
        lastName = request.getParameter("lastName");
        age = request.getParameter("age");
        dob = request.getParameter("dob");
        gender = request.getParameter("gender");
        address = request.getParameter("address");
        phoneNumber = request.getParameter("phoneNumber");
        email = request.getParameter("email");
        password = request.getParameter("password");

        if (request.getParameter("employee") != null && request.getParameter("employee").equals("true")) {

            try {
                Connection con = ConnectionProvider.getConnection();
                String id = UUID.randomUUID().toString().replace("-", "").substring(0, 7);
                PreparedStatement stmt = con.prepareStatement("insert into register values(?,?,?,?,?,?,?,?,?,?)");
                stmt.setString(1, id);
                stmt.setString(2, firstName);
                stmt.setString(3, lastName);
                stmt.setString(4, age);
                stmt.setString(5, dob);
                stmt.setString(6, gender);
                stmt.setString(7, address);
                stmt.setString(8, phoneNumber);
                stmt.setString(9, email);
                stmt.setString(10, password);

                PreparedStatement stmt2 = con.prepareStatement("insert into login values(?,?,?,?)");
                stmt2.setString(1, id);
                stmt2.setString(2, email);
                stmt2.setString(3, password);
                stmt2.setString(4, "E");

                if (stmt.executeUpdate() > 0 && stmt2.executeUpdate() > 0) {

                    request.setAttribute("alert", "succesfully registered");

                    RequestDispatcher rd = request.getRequestDispatcher("adminWelcome.jsp");
                    rd.forward(request, response);

                } else {
                    RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
                    rd.forward(request, response);
                }

            } catch (Exception e) {
                System.out.println(e);
            }

        } else {

            try {
                Connection con = ConnectionProvider.getConnection();
                String id = UUID.randomUUID().toString().replace("-", "").substring(0, 7);
                PreparedStatement stmt = con.prepareStatement("insert into register values(?,?,?,?,?,?,?,?,?,?)");
                stmt.setString(1, id);
                stmt.setString(2, firstName);
                stmt.setString(3, lastName);
                stmt.setString(4, age);
                stmt.setString(5, dob);
                stmt.setString(6, gender);
                stmt.setString(7, address);
                stmt.setString(8, phoneNumber);
                stmt.setString(9, email);
                stmt.setString(10, password);

                PreparedStatement stmt2 = con.prepareStatement("insert into login values(?,?,?,?)");
                stmt2.setString(1, id);
                stmt2.setString(2, email);
                stmt2.setString(3, password);
                stmt2.setString(4, "C");

                if (stmt.executeUpdate() > 0 && stmt2.executeUpdate() > 0) {

                    request.setAttribute("alert", "succesfully registered");

                    RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
                    rd.forward(request, response);

                } else {
                    RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
                    rd.forward(request, response);
                }

            } catch (Exception e) {
                System.out.println(e);
            }
        }
    }

}
