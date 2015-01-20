/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Regina
 */
public class UserSignup extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String name = request.getParameter("c_name");
        String dob = request.getParameter("c_dob");
        String sex = request.getParameter("sex");
        String email = request.getParameter("email");
        String phone_number = request.getParameter("phone_number");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String zipcode = request.getParameter("zipcode");
        String userid = request.getParameter("userid");
        String password = request.getParameter("password");
        
        
         DriverManager driverManager;
        Connection conn;
        Connection conn1;
        Statement st;
        Statement st1;
        
        
        try {
            /* TODO output your page here. You may use following sample code. */
            
            
            Class.forName("org.apache.derby.jdbc.ClientDriver");
           String connectionURL = "jdbc:derby://localhost:1527/WEB_MOVIE_MANAGEMENT";
            conn = DriverManager.getConnection(connectionURL,"root","root");
            st = conn.createStatement();
            String str = "insert into customer(c_name,dob,sex,email,phone_number,address,city,zipcode) values (?,?,?,?,?,?,?,?)";
            PreparedStatement stmt = conn.prepareStatement(str);
            stmt.setString(1, name);
            stmt.setString(2, dob);
            stmt.setString(3, sex);
            stmt.setString(4, email);
            stmt.setString(5, phone_number);
            stmt.setString(6, address);
            stmt.setString(7, city);
            stmt.setString(8, zipcode);
            stmt.executeUpdate();
            
            
            Class.forName("org.apache.derby.jdbc.ClientDriver");
           String connectionURL1 = "jdbc:derby://localhost:1527/WEB_MOVIE_MANAGEMENT";
            conn1 = DriverManager.getConnection(connectionURL1,"root","root");
            st1 = conn1.createStatement();
            String str1 = "insert into login_customer(userid,password,phone_number) values (?,?,?)";
            PreparedStatement stmt1 = conn1.prepareStatement(str1);
            stmt1.setString(1, userid);
            stmt1.setString(2, password);
            stmt1.setString(3, phone_number);  
            stmt1.executeUpdate();
            
            
            out.println("<font size=6>Successfully added</font>");
             ((java.io.PrintWriter)out).println("<font size=6><a href=\"Home.jsp\">Back to Home</a></font>"); 
            
        } catch (ClassNotFoundException ex) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("Error_page.jsp");
            dispatcher.forward(request, response);
            ex.printStackTrace();
        } catch (SQLException ex) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("Error_page.jsp");
            dispatcher.forward(request, response);
            ex.printStackTrace();
        } finally {
            out.close();
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
