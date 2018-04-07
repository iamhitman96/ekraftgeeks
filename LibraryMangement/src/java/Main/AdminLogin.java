/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Main;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author mohnish
 */
public class AdminLogin extends HttpServlet {
    
    String email, password;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        email = request.getParameter("email");
        password = request.getParameter("password");
        
        try {
            Connection con = ConnectionProvider.getConnection();
            
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select count(*) as counter from admin where email='" + email + "' AND password='" + password + "'");
            while (rs.next()) {
                if (rs.getInt("counter") > 0) {
                    HttpSession session = request.getSession();
                    session.setAttribute("adminToken", email);
                    RequestDispatcher rd = request.getRequestDispatcher("adminWelcome.jsp");
                    rd.forward(request, response);
                }
            }
            request.setAttribute("alert", "Wrong email and password");
            RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
            rd.forward(request, response);
            
        } catch (Exception e) {
            System.out.println(e);
        }
        
    }
    
}
