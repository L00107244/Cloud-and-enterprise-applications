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
<title>Build 'R' Buy - Arrange Viewing</title>
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
  <div id="topnav" class="wrap">
    <ul id="nav">
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
      <li class="has-sub"><a href="#"><span>Options</span></a>
			<ul>
            <li><a href='addprop.jsp'>Add Property</a></li>
            <li><a href='editprofile.jsp'>Edit Profile</a></li>
            <li><a href='userinbox.jsp'>Inbox</a></li>
            <li><a href='arrangeviewing.jsp'>Arrange Viewing</a></li>
            <li><a href='signout.jsp'>Sign Out</a></li>
            </ul>
   	</li>
    </ul>
 </div>
  <div id="content-wrapper">
    <div id="content">
      <h1>Arrange Viewing</h1>
      <div id="contact-form">
        <form method="post" action="" name="form1" id="my_contact_form">
          <ol>
            <li>
              <label for="post">Enter the postcode you wish to view</label>
              <input type="text" name="post">
            </li>
            <li>
              <label for="email">E-mail</label>
              <input type="text" name="email">
            </li>
            <li>
              <label for="phone">Phone</label>
              <input type="text" name="phone">
            </li>
            <li>
               <label for="message" size=25%>Messsage</label>
              <input type="text" name="mess" >  
            </li>
            <li>
              <input class="submit" type="submit" name="Submit" value="submit">
            </li>
          </ol>
        </form>
      </div>
           <%  MongoClient m1 = new MongoClient("localhost");
	DB db = m1.getDB("test");
	DBCollection coll = db.getCollection("contact");
	DBCursor valid;
	DBCursor valid1;
	BasicDBObject dbo = new BasicDBObject();

    dbo.append("post", request.getParameter("post"));


    dbo.append("email", request.getParameter("email"));

    dbo.append("phone", request.getParameter("phone"));

    dbo.append("message",request.getParameter("mess"));

    if(dbo!=null)
    {
    coll.insert(dbo);
    }
    System.out.println("Document inserted successfully"); 
    DBCollection collec = db.getCollection("property_class");
	DBCursor validto;
	BasicDBObject dboc = new BasicDBObject();
	DBCursor cursor2 = collec.find();
	int i = 1;
	try{
	
    while (cursor2.hasNext()) { 
       out.println("<br/>Property: "+i); 
       out.println("<br/>"+cursor2.next()); 
    }
	
   }
   finally{
	   m1.close();
   }

	%>
    </div>
  <div id="footer">
    <p>&copy;Copyright 2017 &bull; All Rights Reserved &bull; BSC Comp Design Company &bull; 1234 Main Street Donegal </p>
  </div>
</div>
</body>
</html>
