<%-- 
    Document   : Signup
    Created on : Nov 23, 2013, 10:50:33 PM
    Author     : Regina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <title>Signup</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-chunkfive.js"></script>
<!--<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
-->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="js/jquery.validate.min.js" type="text/javascript"></script>
<script src="js/additional-methods.js" type="text/javascript"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>


<script type='text/javascript'>
    $(document).ready(function(){
    $("#firstForm").validate({
		rules: {
			c_name: {
				required: true,
				minlength: 2
			},
			userid: {
				required: true,
				minlength: 6
			},
                        address:{
                            required: true,
				minlength: 8
                        },
                        password:{
                            required: true,
				minlength: 6
                        },
                        email:{
                            required: true
                        },
                        
                        c_dob:{
                            required: true
                        },
                        zipcode:{
                            required: true,
                            minlength:5
                        },
                        phone_number:{
                            required:true,
                            minlength:10,
                            maxlength:10
                           
                        }
                        

		},
		messages: {
			c_name: {
				required: "Please enter a first name",
				minlength: "Your first name must consist of at least 2 characters"
			},
			userid: {
				required: "Please provide a userid",
				minlength: "Your Username must be at least 6 characters long"
			},
                        address:{
                            required: "Please provide a address please",
				minlength: "Your Address must be at least 8 characters long"
                        },
                        password:{
                                required: "Password is required",
				minlength: "Your Password must be at least 6 characters long"
                
                        },
                        email:{
                            required: "Please enter valid E-mail"
                        },
                        c_dob:{
                            required:"Please enter the Date according to format" 
                        },
                        zipcode:{
                            required:"enter valid Zip code",
                            minlength:"Not a valid zip code"
                        },
                        phone_number:{
                            required:"enter phone number",
                            minlength:"Not a valid number",
                            maxlength:"Not a valid number"
                        }
		}
	});
});
    </script>
    </head>

    <body background="images/shum.gif" repeat-x left top>
        <div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li ><a href="Home.jsp"><span>Home Page</span></a></li>
          <li class="active"><a href="About.jsp"><span>About Us</span></a></li>
          <li><a href="Movies.jsp"><span>Movies</span></a></li>
          <li><a href="Contact.jsp"><span>Contact</span></a></li>
        </ul>
      </div>
        <div class="clr"></div>
      <div class="logo">
          <h1><a href="Home.jsp"><span>Pittsburgh's Own Movies</span></a></h1><div class="res1"><span><strong>Lets go to the movies</strong> !!!</span></div>
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
                            <form id="firstForm" method="post" action="UserSignup">
            <table>
                   <tr><td><div class="res2"><strong>Enter your name:*</strong></div></td>
                    <td><input name="c_name" id="c_name" maxlength="80" value="" type="text" /></td></tr>
                <tr><td><div class="res2"><strong>Date of birth(YYYY/MM/DD):*</strong></div> </td>
                    <td><input name="c_dob" id="c_dob" maxlength="80" value="" placeholder="YYYY/MM/DD" type="text" /></td></tr>
               
                <tr><td><div class="res2"><strong>Sex:*</strong></div> </td>
                    <td><select name="sex"><option selected="select">--select--</option>
                                <option>M</option> 
                                <option>F</option> </select></td>
                </tr>
                <tr>
                    <td><div class="res2"><strong>E-mail:*</strong></div> </td>
                    <td><input name="email" id="email" maxlength="80" value="" placeholder="sample@domain.com" type="email" /></td>
                </tr>
               <tr>
                    <td><div class="res2"><strong>Phone number:*</strong></div> </td>
                    <td><input name="phone_number" id="phone_number" maxlength="80" value="" placeholder="XXXXXXXXXX" type="text" /></td>
                </tr>
                <tr>
                    <td><div class="res2"><strong>Address:*</strong></div> </td>
                    <td><input name="address" id="address" maxlength="150" value="" placeholder="Apt No. and Street No." type="text" /></td>
                </tr>
                <tr>
                    <td><div class="res2"><strong>City:*</strong></div></td> 
                   <td><select name="city"><option selected="select">--select--</option>
                                <option>LA</option> 
                                <option>Pittsburgh</option> 
                                <option>New York</option> 
                                <option>Las Vegas</option> 
                                <option>Chicago</option> 
                        </select></td>
                </tr>
                <tr>
                    <td><div class="res2"><strong>Zip code:*</strong></div> </td>
                    <td><input name="zipcode" id="zipcode" maxlength="80" value="" type="text" /></td>
                </tr>
                <tr>
                    <td><h2><strong>Login Credentials</strong></h2></td>
                </tr>
                <tr>
                    <td><div class="res2"><strong>Userid:*</strong></div> </td>
                    <td><input name="userid" id="userid" maxlength="80" value="" type="text" /></td>
                </tr>
                <tr>
                    <td><div class="res2"><strong>Password:*</strong></div> </td>
                    <td><input name="password" id="password" maxlength="80" value="" type="password" /></td>
                </tr>
                
                <tr>
                    <td></td>
                    <td><input type="submit" name="submit" value="Signup" /></td>
                </tr>
                
            </table>
        </form>

                        </div>

                    </div>
                </div>
            </div>
           </div>
  </div>
    <div class="clr"></div> 
    <div class="clr"></div> 
    <div class="clr"></div> 
    </div>
    
    <div class="footer">
    <div class="footer_resize">
      <p class="lf">Copyright &copy; <a href="#">Pittsburgh's Own Movies</a>. All Rights Reserved</p>
      <div style="clear:both;"></div>
    </div>
  </div>  
        </div>  
        </body>
</html>
