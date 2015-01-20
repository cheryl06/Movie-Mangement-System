<%-- 
    Document   : Contact
    Created on : Nov 23, 2013, 8:48:52 PM
    Author     : Regina
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
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
                            <li><a href="customer_page2.jsp"><span>Home Page</span></a></li>
                            <li class="active"><a href="BookTicket2.jsp"><span>Book Tickets</span></a></li>
                            <li><a href="Movies.jsp"><span>Movies</span></a></li>
                            <li><a href="Contact.jsp"><span>Contact</span></a></li>

                        </ul>
                    </div>
                    <div class="clr"></div>
                    <div class="logo">
                        <h1><a href="Home.jsp"><span>Pittsburgh's Own Cinemas</span></a></h1><div class="res1"><span><strong>Lets go to the movies</strong> !!!</span></span></div>
                    </div>
                    <div class="userentry">
                       
                    </div>
                    <div class="clr"></div>
                    <div class="clr"></div>
                    <div class="clr"></div>
                     <div id="coin-slider"> <a href="#"><img src="images/theaterpage1.jpg" width="960" height="360" alt="" /><span><big>Atithi Devo Bhava (Guests Are God)</big><br />
           Pittsburgh's Own Indian Movies is a chain of theatres in Pittsburgh which has spread its indianess in this industry over the past one year</span></a> <a href="#"><img src="images/seatspage3.jpg" width="960" height="360" alt="" /><span><big>Great Ambience!</big><br />
          Come have a good time with your families! </span></a> 
            <a href="#"><img src="images/theaterspage2.jpg" width="960" height="360" alt="" />
              <span><big> Enjoy!</big><br />
          Take a break from a busy schedule and refresh your mind with a good dose of hindi movies!!</span></a> </div>
                    <div class="clr"></div>

                </div>
            </div>
             <form id="formsearch" name="formsearch" method="post" action="GenerateTicket">

                        
            <div class="content">
                <div class="content_resize">
                    <div class="mainbar">
                        <div class="article">
                            <h1><p>Pittsburgh's own movies</p></h1>
                            <br>
                            <div class="clr"></div>
                            
                            <br>
                            <table>
                                
                            <tr>
                                <td><h3><label name="moviename"> Movie name* :</label></h3></td> 
                    <td><select name="movie">
            <option selected="select">--Select--</option>

                <%
    Connection conn=null;
    Statement st;
    ResultSet rs=null;
    DriverManager driverManager=null;
     try{
         Class.forName("org.apache.derby.jdbc.ClientDriver");
         String connectionURL = "jdbc:derby://localhost:1527/WEB_MOVIE_MANAGEMENT";
         conn = DriverManager.getConnection(connectionURL, "root", "root");
          st = conn.createStatement();
          rs = st.executeQuery("select distinct(m_name) from movie_details");
          while (rs.next()) {
          %>
            <option>
                <%=rs.getString("m_name") %>
            </option>
            <%
         }
         rs.close();
         st.close();
     }
     catch( ClassNotFoundException cnfe){
            cnfe.printStackTrace();
        }
        catch (SQLException se){
            se.printStackTrace();
        }
        %>
        </select></td>
                </tr>
                <tr>
                <td><h3><label name="quantity"> Number of tickets* :</label></h3></td> 
                <td>
                <select name="Qty">
                <option selected="select">1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
                <option>6</option>
                <option>7</option>
                <option>8</option>
                <option>9</option>
                <option>10</option>
                </select>
                </td>
                </tr>
                
                <tr>
                    <td><h3><label name="locate"> Location* :</label></h3></td> 
                    <td><select name="location">
            <option selected="select">--Select--</option>

                <%
    Connection conn1=null;
    Statement st1;
    ResultSet rs1=null;
    DriverManager driverManager1=null;
     try{
         Class.forName("org.apache.derby.jdbc.ClientDriver");
         String connectionURL = "jdbc:derby://localhost:1527/WEB_MOVIE_MANAGEMENT";
         conn1 = DriverManager.getConnection(connectionURL, "root", "root");
          st1 = conn1.createStatement();
          rs1 = st1.executeQuery("select distinct(location) from movie_details");
          while (rs1.next()) {
          %>
            <option>
                <%=rs1.getString("location") %>
            </option>
            <%
         }
         rs1.close();
         st1.close();
     }
     catch( ClassNotFoundException cnfe){
            cnfe.printStackTrace();
        }
        catch (SQLException se){
            se.printStackTrace();
        }
        %>
        </select></td>
                </tr>
                          <tr>
                 <td><h3><label name="locate"> Price* :</label></h3></td> 
                    <td><select name="price">
            <option selected="select">--Select--</option>

                <%
    Connection conn2=null;
    Statement st2;
    ResultSet rs2=null;
    DriverManager driverManager2=null;
     try{
         Class.forName("org.apache.derby.jdbc.ClientDriver");
         String connectionURL = "jdbc:derby://localhost:1527/WEB_MOVIE_MANAGEMENT";
         conn2 = DriverManager.getConnection(connectionURL, "root", "root");
          st2 = conn2.createStatement();
          rs2 = st2.executeQuery("select distinct(price) from movie_details");
          while (rs2.next()) {
          %>
            <option>
                <%=rs2.getString("price") %>
            </option>
            <%
         }
         rs2.close();
         st2.close();
     }
     catch( ClassNotFoundException cnfe){
            cnfe.printStackTrace();
        }
        catch (SQLException se){
            se.printStackTrace();
        }
        %>
        </select></td>
                </tr>
                
                <tr>
                 <td><h3><label name="locate"> Time* :</label></h3></td> 
                    <td><select name="time">
            <option selected="select">--Select--</option>

                <%
    Connection conn3=null;
    Statement st3;
    ResultSet rs3=null;
    DriverManager driverManager3=null;
     try{
         Class.forName("org.apache.derby.jdbc.ClientDriver");
         String connectionURL = "jdbc:derby://localhost:1527/WEB_MOVIE_MANAGEMENT";
         conn3 = DriverManager.getConnection(connectionURL, "root", "root");
          st3 = conn3.createStatement();
          rs3 = st3.executeQuery("select distinct(m_time) from movie_details");
          while (rs3.next()) {
          %>
            <option>
                <%=rs3.getString("m_time") %>
            </option>
            <%
         }
         rs3.close();
         st3.close();
     }
     catch( ClassNotFoundException cnfe){
            cnfe.printStackTrace();
        }
        catch (SQLException se){
            se.printStackTrace();
        }
        %>
        </select></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                <input type="submit" id="submit5" name="submit5" value="Submit"/>
                    </td>
                </tr>
               
                            </table>
                            
                            
                        </div>

                    </div>
                </div>
            </div>
             </form>
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
