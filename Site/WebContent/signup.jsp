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
<title>Build 'R' Buy - Sign-Up</title>
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
  <div id="logo"> <a href='index.jsp'><img src="images/logo.jpg"></a> </div>
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
      <h1>Sign Up</h1>
      <p>In order to sign up, we will need just a few details from you.<br>
        Please enter these details below</p>
      <div id="contact-form">
        <form method="post" action="" name="form2" id="my_sign-up_form">
          <ol>
            <li>
              <label for="first-name">First Name</label>
              <input type="text" name="firstName">
            </li>
            <li>
              <label for="Sur-name">Surname</label>
              <input type="text" name="surname">
            </li>
             <li>
              <label for="address">Address</label>
              <input type="text" name="address">
            </li>
            <li>
              <label for="phone">Phone</label>
              <input type="text" name="phoneNumber">
            </li>
            <li>
              <label for="email">E-mail</label>
              <input type="text" name="Email">
            </li>
            <li>
              <label for="password">Password</label>
              <input type="password" name="password">
            </li>
            <li>
              <input class="submit" type="submit" name="Submit" value="submit">
            </li>
          </ol>
          <p>Already have an account? Login <a href='login.jsp'>here</a>.</p>          
        </form>
      </div>
    </div>
  </div>
 <%  MongoClient m1 = new MongoClient("localhost");
	DB db = m1.getDB("test");
	DBCollection coll = db.getCollection("sign_up_class");
	DBCursor valid;
	DBCursor valid1;
	BasicDBObject dbo = new BasicDBObject();
	
    dbo.append("FirstName", request.getParameter("firstName"));
    dbo.append("surname", request.getParameter("surname"));
    dbo.append("Address", request.getParameter("address"));
    dbo.append("phoneNumber",request.getParameter("phoneNumber"));
    dbo.append("Email",request.getParameter("Email"));
    dbo.append("password",request.getParameter("password"));
    coll.insert(dbo);
    System.out.println("Document inserted successfully");
	%>
  <div id="footer">
    <p>&copy;Copyright 2017 &bull; All Rights Reserved &bull; BSC Comp Design Company &bull; 1234 Main Street Donegal </p>
  </div>
</div>
</body>
</html>
