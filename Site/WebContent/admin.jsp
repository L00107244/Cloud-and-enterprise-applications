    <%@page import="com.mongodb.BasicDBObject"%>
	<%@page import="com.mongodb.DB"%>
	<%@page import="com.mongodb.DBCollection"%>
	<%@page import="com.mongodb.DBCursor"%>
	<%@page import="com.mongodb.MongoClient"%>

<!doctype html>

<html>
<head>
<script src="js/jquery.js" type="text/javascript"></script>
<title>Build 'R' Buy - Admin</title>
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
      <li class="has-sub"><a href='#'><span>For Sale</span></a></li>
      <li class="has-sub"><a href='#'><span>For Rent</span></a></li>
      <li class="has-sub"><a href='advertise.jsp'><span>Advertise</span></a></li>
      <li class="active"><a href='contact.jsp'><span>Contact</span></a></li>
      <li class="has-sub"><a href='about.jsp'><span>About</span></a></li>
      <li class="has-sub"><a href="#"><span>Options</span></a>
			<ul>
                <li><a href='updateprop.jsp'>Update Property</a></li>
                <li><a href='removeprop.jsp'>Remove Property</a></li>
                <li><a href='removeuser.jsp'>Remove User</a></li>
            	<li><a href='adminInbox.jsp'>Inbox</a></li>
            	<li><a href='admin_sign_up.jsp'>Add Administrator</a></li>
            	<li><a href='signoutadmin.jsp'>Sign Out</a></li>
            </ul>
   	</li>
    </ul>
  </div>
  <div id="content-wrapper">
    <div id="content">
      <h1>Welcome</h1>
      <br/>
      
      </div>
  </div>
  <div id="footer">
    <p>&copy;Copyright 2017 &bull; All Rights Reserved &bull; BSC Comp Design Company &bull; 1234 Main Street Donegal </p>
  </div>
</div>
</body>
</html>
