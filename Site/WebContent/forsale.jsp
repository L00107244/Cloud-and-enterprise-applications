<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.mongodb.BasicDBObject"%>
	<%@page import="com.mongodb.DB"%>
	<%@page import="com.mongodb.DBCollection"%>
	<%@page import="com.mongodb.DBCursor"%>
	<%@page import="com.mongodb.MongoClient"%>

	<%@page import="java.net.ConnectException"%>
	<%@page import="java.net.UnknownHostException"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script src="js/jquery.js" type="text/javascript"></script>
<title>Build 'R' Buy - For Sale</title>
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
          </li><li class="has-sub"><a href='advertise.jsp'><span>Advertise</span></a></li>
          <li class="active"><a href='contact.jsp'><span>Contact</span></a></li>
          <li class="has-sub"><a href='about.jsp'><span>About</span></a></li>
                <li class="has-sub"><a href='login.jsp'><span>Login</span></a></li>

    </ul>
  </div>
  <div id="content-wrapper">
    <div id="content">
      <h1>Properties For Sale</h1>
  <% MongoClient m1 = new MongoClient("localhost");
	DB db = m1.getDB("test");
	DBCollection coll = db.getCollection("property_class");
	DBCursor valid;
	BasicDBObject dbo = new BasicDBObject();
	BasicDBObject dba = new BasicDBObject();
	//BasicDBObject db = new BasicDBObject();
	dbo.put("property_type", "for sale");
	dba.get("Address1");
    //db.put("Address1", "drumowna");
    DBCursor cursor = coll.find(dbo);	
    
	int i = 1;
	try{
	
    while (cursor.hasNext()) {
       out.println("<h2>Property: "+i++ +"</h2>"); 
       out.println("<a href='login.jsp'>Login</a> to arrange a viewing.</br>"); 
       out.println("<br/>"+cursor.next());
       out.println("<br/>");

    }
	
   }
   finally{
	   m1.close();
   }
       
	%>
</br>

</div>
  <div id="footer">
    <p>&copy;Copyright 2017 &bull; All Rights Reserved &bull; BSC Comp Design Company &bull; 1234 Main Street Donegal </p>
  </div>
</div>
</body>
</html>
