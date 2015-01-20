<%-- 
    Document   : Signup
    Created on : Nov 23, 2013, 10:50:33 PM
    Author     : Regina
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <title>Home</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-chunkfive.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
    </head>
    <body background="images/shum.gif" repeat-x left top>
        <div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li><a href="Home.jsp"><span>Home Page</span></a></li>
          <li ><a href="About.jsp"><span>About Us</span></a></li>
          <li class="active"><a href="Movies.jsp"><span>Movies</span></a></li>
          <li><a href="Contact.jsp"><span>Contact</span></a></li>
                            
          
        </ul>
      </div>
        <div class="clr"></div>
      <div class="logo">
          <h1><a href="Home.jsp"><span>Pittsburgh's Own Movies</span></a></h1><div class="res1"><span><strong>Lets go to the movies</strong> !!!</span></div>
      </div>
        <div class="userentry">
        <form id="formsearch" name="formsearch" method="post" action="#">
            
                        </br>

                       
        </form>
      </div>
    <div class="clr"></div>
    <div class="clr"></div>
    <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/theaterpage1.jpg" width="960" height="360" alt="" /><span><big>Atithi Devo Bhava (Guests Are God)</big><br />
           Pittsburgh's Own Indian Movies is a chain of theatres in Pittsburgh which has spread its indianess in this industry over the past one year</span></a> <a href="#"><img src="images/seatspage3.jpg" width="960" height="360" alt="" /><span><big>Great Ambience!</big><br />
          Come have a good time with your families! </span></a> 
            <a href="#"><img src="images/theaterspage2.jpg" width="960" height="360" alt="" />
              <span><big> Enjoy!</big><br />
          Take a break from a busy schedule and refresh your mind with a good dose of hindi movies!!</span></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    
    </div>
       <div class="content">
       <div class="content_resize">
       <div class="mainbar">
       <div class="article">  
               <form method="post" action="">
            <table>
                 <tr><td><h2><p>Reviews for the following movies were posted :</p></h2></td></tr>
                <%
                                Connection conn = null;
                                Statement st;
                                ResultSet rs = null;
                                DriverManager driverManager = null;
                                try {
                                    Class.forName("org.apache.derby.jdbc.ClientDriver");
                                    String connectionURL = "jdbc:derby://localhost:1527/WEB_MOVIE_MANAGEMENT";
                                    conn = DriverManager.getConnection(connectionURL, "root", "root");
                                    st = conn.createStatement();
                                    rs = st.executeQuery("select * from give_review");
                                    while (rs.next()) {
                            %>   
                            
                                     <tr><td></td></tr>
                                     <tr><td></td></tr>
                                     <tr><td><div class="res2"><strong>Movie name: </strong></div></td>
                                         <td><h3><p><%=rs.getString("m_name")%></p></h3></td>
                                     <tr><td><div class="res2"><strong>Stars: </strong></div></td>
                                         <td><h3><p><%=rs.getString("stars")%></p></h3></td>
                                     </tr>
                                     <tr><td><div class="res2"><strong>Review: </strong></div></td>
                                         <td><h3><p><%=rs.getString("review")%></p></h3></td>
                                     </tr>
                                     
                                    
                             <%
                                    }
                                    rs.close();
                                    st.close();
                                } catch (ClassNotFoundException cnfe) {
                                    cnfe.printStackTrace();
                                } catch (SQLException se) {
                                    se.printStackTrace();
                                }
                            %>
                          
            </table>
        </form>
           </div>
           </div>
  </div>
    <div class="clr"></div> 
    
    <div class="footer">
    <div class="footer_resize">
      <p class="lf">Copyright &copy; <a href="#">Pittsburgh's own movies</a>. All Rights Reserved</p>
      <div style="clear:both;"></div>
    </div>
  </div>  
        </div>  
        </body>
</html>
