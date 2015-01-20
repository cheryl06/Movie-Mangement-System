<%-- 
    Document   : Customer_login
    Created on : Nov 23, 2013, 10:24:01 PM
    Author     : Regina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <title>Customer Login</title>
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
           <li ><a href="Home.jsp"><span>Home Page</span></a></li>
           <li><a href="About.jsp"><span>About Us</span></a></li>
           <li class="active"><a href="Movies.jsp"><span>Movies</span></a></li>
           <li><a href="Contact.jsp"><span>Contact</span></a></li>
          
        </ul>
      </div>
        <div class="clr"></div>
      <div class="logo">
          <h1><a href="Login.jsp"><span>Login to book tickets</span></a></h1>
      </div>
        <div class="userentry">
        <form id="formsearch" name="formsearch" method="post" action="CustomerLogin">
            <table>
                <tr><td><div class="res2"><strong>UserID/Phone number</strong></div></td>
                    <td><input name="c_username" id="c_username" maxlength="80" value="" type="text" /></td></tr>
         
                <tr><td><div class="res2"><strong>Password</strong></div></td>
                    <td><input name="c_password" id="c_password" maxlength="80" value="" type="password" /></td></tr>
                <tr>
                    <td></td>
                    <td><input type="submit" name="c_login" value="Login" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><a href="Signup.jsp"><span>New User? Sign up here</a></td>
                </tr>
            </table>
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
                    </div>
      <div class="clr"></div>
    
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
