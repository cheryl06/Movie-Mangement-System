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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Regina
 */
public class GenerateTicket extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

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
            Connection conn;
            Statement st;
            ResultSet rs =null;
            ResultSet rs3 = null;
             SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            
            Date date1 = new java.util.Date();
            String date2 = formatter.format(date1);
            out.println(date2);
            java.sql.Date mySqlDate = new java.sql.Date(date1.getTime());
            HttpSession session = request.getSession();
            String phone = (String)session.getAttribute("phone");
            String movie = request.getParameter("movie");
            String location = request.getParameter("location");
            String time = request.getParameter("time");
            float price = Float.parseFloat(request.getParameter("price"));
            int quantity = Integer.parseInt(request.getParameter("Qty"));
            float amount = price*quantity ;
            String total = Float.toString(amount);
            out.println("regina");
            
            
            try {
                
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                String connectionURL = "jdbc:derby://localhost:1527/WEB_MOVIE_MANAGEMENT";
                conn = DriverManager.getConnection(connectionURL,"root","root");
                st = conn.createStatement();
                
                out.println(price);
                String str = "insert into booking_details(phone_number,m_name,location,m_time,b_date,price) values(?,?,?,?,?,?)";
                
                PreparedStatement stmt = conn.prepareStatement(str);
                stmt.setString(1,phone);
                stmt.setString(2, movie);
                stmt.setString(3, location);
                stmt.setString(4, time);
                stmt.setDate(5, mySqlDate);
                stmt.setString(6,total);
               
               
                stmt.executeUpdate();
                
               /* request.setAttribute("city", city);
                request.setAttribute("datetodeliver", mySqlDate);
                request.setAttribute("order", order);
                request.setAttribute("amount", amount);
                request.setAttribute("address", address);*/
                
                RequestDispatcher dispatcher = request.getRequestDispatcher("Order_Confirmation.jsp");
                dispatcher.forward(request, response);
                
            } catch (ClassNotFoundException ex) {
                ex.printStackTrace();
            } catch (SQLException ex) {
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
