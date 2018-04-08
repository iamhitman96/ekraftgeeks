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
public class issuebook extends HttpServlet {

    String bookId, memberId, issueDate, returnDate;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        bookId = request.getParameter("bookId");
        memberId = request.getParameter("memberId");
        issueDate = request.getParameter("issueDate");
        returnDate = request.getParameter("returnDate");

        try {

            Connection con = ConnectionProvider.getConnection();

            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select count(*) as counter from login where id='" + memberId + "' AND FLAG='C'");
            while (rs.next()) {
                if (rs.getInt("counter") == 0) {
                    request.setAttribute("alert", "Customer Doesnt Exisit");

                    RequestDispatcher rd = request.getRequestDispatcher("libraryDashboard.jsp");
                    rd.forward(request, response);

                } else {
                    PreparedStatement ps = con.prepareStatement("insert into issue values (?,?,?,?,?,?)");

                    ps.setString(1, UUID.randomUUID().toString().replace("-", "").substring(0, 7));
                    ps.setString(2, bookId);
                    ps.setString(3, memberId);
                    ps.setString(4, issueDate);
                    ps.setString(5, returnDate);
                    ps.setString(6, "I");

                    if (ps.executeUpdate() > 0) {
                        request.setAttribute("alert", "Succesfully Issued Book");

                    } else {
                        request.setAttribute("alert", "Unable to Add Book");

                    }

                    RequestDispatcher rd = request.getRequestDispatcher("libraryDashboard.jsp");
                    rd.forward(request, response);
                }
            }

        } catch (Exception e) {
            System.out.println(e);

        }

    }

}
