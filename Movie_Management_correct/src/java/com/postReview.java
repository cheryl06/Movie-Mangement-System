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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Regina
 */
public class postReview extends HttpServlet {

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
        String movie = request.getParameter("selectmovie");
        int rate = Integer.parseInt(request.getParameter("rating"));
        String review = request.getParameter("review");
        
        
        DriverManager driverManager;
        Connection conn;
        Statement st;
        
               try {
            /* TODO output your page here. You may use following sample code. */
            
            
            Class.forName("org.apache.derby.jdbc.ClientDriver");
           String connectionURL = "jdbc:derby://localhost:1527/WEB_MOVIE_MANAGEMENT";
            conn = DriverManager.getConnection(connectionURL,"root","root");
            st = conn.createStatement();
            String str = "insert into give_review(m_name,stars,review) values (?,?,?)";
            PreparedStatement stmt = conn.prepareStatement(str);
            stmt.setString(1, movie);
            stmt.setInt(2, rate);
            stmt.setString(3, review);
            
            stmt.executeUpdate();
            
            
            
            out.println("<font size=6>Successfully added review</font>");
             ((java.io.PrintWriter)out).println("<font size=6><a href=\"Movies.jsp\">Back to Movies</a></font>"); 
            
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
