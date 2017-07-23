<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.mongodb.BasicDBObject"%>
	<%@page import="com.mongodb.DB"%>
	<%@page import="com.mongodb.DBCollection"%>
	<%@page import="com.mongodb.DBCursor"%>
	<%@page import="com.mongodb.MongoClient"%>
	<%@page import="com.mongodb.DBObject"%>
	<%@page import="com.mongodb.Mongo"%>

	<%@page import="java.net.ConnectException"%>
	<%@page import="java.net.UnknownHostException"%>
<!doctype html>

<html>
<head>
<script src="js/jquery.js" type="text/javascript"></script>
<title>Build 'R' Buy - Edit Profile</title>
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
          </li>      <li class="has-sub"><a href='advertise.jsp'><span>Advertise</span></a></li>
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
	      <div id="contact-form">
	      <h1>Edit Profile</h1>
        <form method="post" action="" name="form1" id="my_contact_form">
          <ol>
          <li>
              <label for="pass"> Enter password</label>
              <input type="password" name="pass">
          </li>
          <li>
              <label for="askprice">Enter New ephoneNumber</label>
              <input type="text" name="phone">
          </li>
          <li>
              <label for="prop type">Enter New email</label>
              <input type="text" name="em">
          </li>
            <li>
              <input class="submit" type="submit" name="Submit" value="submit">
            </li>
          </ol>
        </form>
      </div>
  </div>
  </div>
<%  
 
MongoClient m1 = new MongoClient("localhost"); 
DB db = m1.getDB("test");
DBCollection coll = db.getCollection("sign_up_class");
DBCursor valid;
BasicDBObject dbo = new BasicDBObject();
DBCursor cursor = coll.find();


  BasicDBObject updateQuery2 = new BasicDBObject();
  updateQuery2.append("$set", new BasicDBObject().append("phoneNumber", request.getParameter("phone")));
  BasicDBObject updateQuery1 = new BasicDBObject();
  updateQuery1.append("$set", new BasicDBObject().append("Email", request.getParameter("em")));

  BasicDBObject searchQuery3 = new BasicDBObject();
  searchQuery3.append("password", request.getParameter("pass"));

  coll.updateMulti(searchQuery3, updateQuery2);
  coll.updateMulti(searchQuery3, updateQuery1);
  //coll.remove(new BasicDBObject());

cursor = coll.find();
	
int i = 1;
	
while (cursor.hasNext()) { 
   System.out.println("Updated Document: "+i); 
   System.out.println(cursor.next()); 
   i++;
}
	
}catch(Exception e){
System.err.println( e.getClass().getName() + ": " + e.getMessage() );
%>   
		
    

 %>
  <div id="footer">
    <p>&copy;Copyright 2017 &bull; All Rights Reserved &bull; BSC Comp Design Company &bull; 1234 Main Street Donegal </p>
  </div>
</div>
</body>
</html>
