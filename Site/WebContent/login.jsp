<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.mongodb.BasicDBObject"%>
	<%@page import="com.mongodb.DB"%>
	<%@page import="com.mongodb.DBCollection"%>
	<%@page import="com.mongodb.DBCursor"%>
	<%@page import="com.mongodb.MongoClient"%>

	<%@page import="java.net.ConnectException"%>
	<%@page import="java.net.UnknownHostException"%>

<!doctype html>

<html>
<head>
<script src="js/jquery.js" type="text/javascript"></script>
<title>Build 'R' Buy - Login</title>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,400italic,300italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/slider.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
<script type="text/javascript" src="js/imagegallery.js"></script>
<link href="css/slider.css" rel="stylesheet" type="text/css" media="screen">
<link href="css/menustyle.css" rel="stylesheet" type="text/css" media="screen">
<link href="css/imagegallery.css" rel="stylesheet" type="text/css" media="screen">
<link href="css/styles.css" rel="stylesheet" type="text/css">
</head>

<body>
<div id="wrapper">
  <div id="top">
    <div id="logo"> <a href='index.html'><img src="images/logo.jpg"></a> </div>
    <div id="social-media">
      <p>For Additional Information<br>
        Please Call 123456789</p>
      <ul>
        <li><a href="http://www.facebook.com"><img src="images/icons/facebook.png"></a></li>
        <li><a href="http://www.twitter.com"><img src="images/icons/twitter.png"></a></li>
        <li><a href="http://www.instagram.com"><img src="images/icons/Instagram-Icon.png"></a></li>
        <li><a href="http://www.youtube.com"><img src="images/icons/youtube.png"></a></li>
      </ul>
    </div>
  </div>
  <div id="topnav">
    <ul>
      <li class="active"><a href='index.jsp'><span>Home</span></a></li>
          <li class="has-sub"><a href='#'><span>View Properties</span></a>
            <ul>
              <li><a href='forsale.jsp'>For Sale</a></li>
              <li><a href='forrent.jsp'>For Rent</a></li>
              <li><a href='holidayhomes.jsp'>Holiday Homes</a></li>
            </ul>
          </li> 
      <li class="has-sub"><a href='advertise.jsp'><span>Advertise</span></a></li>
      <li class="active"><a href='contact.jsp'><span>Contact</span></a></li>
      <li class="has-sub"><a href='about.jsp'><span>About</span></a></li>
      <li class="has-sub"><a href='login.jsp'><span>Login</span></a></li>
    </ul>
  </div>
  <div id="content-wrapper">
    <div id="advertise-content">
      <h1>Login</h1>
      <p>Please enter your E-mail and password below</p>
      <div id="contact-form">
 		<form method="POST" action="" name="form3" id="login">
 		<ol>
            <li>
              <label for="Email">E-Mail</label>
              <input type="text" name="Email">
            </li>
            <li>
              <label for="password">Password</label>
              <input type="password" name="password">
            </li>
            <li>
              <input class="submit" type="submit" value="Login">
            </li>
            <li>
            <%
               	MongoClient m1 = new MongoClient("localhost");
            	DB db = m1.getDB("test");
            	DBCollection coll = db.getCollection("sign_up_class");
            	DBCollection coll1 = db.getCollection("administrators");
            	DBCursor valid;
            	DBCursor valid1;
            	BasicDBObject dbo = new BasicDBObject();
            	BasicDBObject dbo1 = new BasicDBObject();

            	dbo1.append("Email",request.getParameter("Email"));
                valid1 = coll1.find(dbo1);
                dbo1.append("password",request.getParameter("password"));
                valid1 = coll1.find(dbo1);
                if(request.getParameter("Email")!= null && request.getParameter("password")!=null&&valid1.hasNext())
                {
                try{
            		if(valid1.hasNext()){
            			response.sendRedirect("admin.jsp");
            		}
            		else
            			System.out.println("");
            		}
                
            	
            	catch(Exception exe){
            		System.out.println("Error: " + exe.getStackTrace());
            	}
            	finally{
            			valid1.close();
            	}

                }
                else if(!valid1.hasNext())
                	
            	
                dbo.append("Email",request.getParameter("Email"));
                valid = coll.find(dbo);
                dbo.append("password",request.getParameter("password"));
                valid = coll.find(dbo);
                if(request.getParameter("Email")!= null && request.getParameter("password")!=null&&valid.hasNext())
                {
                try{
            		if(valid.hasNext()){
            			response.sendRedirect("userpage.jsp");
            		}
            		else
            			System.out.println("");
            		}       	
            	catch(Exception exe){
            		System.out.println("Error: " + exe.getStackTrace());
            	}
            	finally{
            			m1.close();
            			valid.close();
            	}

                }
                else if(!valid.hasNext())
                	//response.sendRedirect("login.jsp");
            %>
            </li>
          </ol>
      <p>Don't have an account? Sign up <a href='signup.jsp'>here</a>.</p>
          
      </div>
    </div>
  </div>
  <div id="footer">
    <p>&copy;Copyright 2017 &bull; All Rights Reserved &bull; BSC Comp Design Company &bull; 1234 Main Street Donegal </p>
  </div>
</div>
</body>
</html>
