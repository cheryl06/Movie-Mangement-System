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
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
public class CustomerLogin extends HttpServlet {

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
        String c_uname = request.getParameter("c_username");
        String c_password =  request.getParameter("c_password");
        
        Connection conn;
        Statement st;
        ResultSet rs =null;
        
        
         HttpSession session = request.getSession();
        try {
           
            
            Class.forName("org.apache.derby.jdbc.ClientDriver");
             
            String connectionURL = "jdbc:derby://localhost:1527/WEB_MOVIE_MANAGEMENT";
            
            conn = DriverManager.getConnection(connectionURL,"root","root");
            st = conn.createStatement();
            
            rs = st.executeQuery("select * from login_customer");
            
           
           while(rs.next())
            {
                String username = rs.getString("userid");
                String password = rs.getString("password");
                String ph_number = rs.getString("phone_number");
                
                if((username.equalsIgnoreCase(c_uname) || ph_number.equals(c_uname)) && password.equals(c_password))
                {
                    
                    RequestDispatcher dispatcher = request.getRequestDispatcher("Customer_logged.jsp");
                    dispatcher.forward(request, response);
                    
                    
                }
                if(c_uname.isEmpty() || c_password.isEmpty())
                {
                    out.println("<h1>Dont leave the fields blank</h1>");
                }
                else
                {
                    out.println("<h1>Login Failed</h1>");
                }
                
            }
             conn.close();
             rs.close();
            
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
            
         finally {
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
