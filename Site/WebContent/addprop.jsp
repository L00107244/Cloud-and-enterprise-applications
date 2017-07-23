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
<title>Build 'R' Buy - Add Property</title>
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
    <li class="has-sub"><a href="#"><span>Options</span></a>
			<ul>
            <li><a href='addprop.jsp'>Add Property</a></li>
            <li><a href='editprofile.jsp'>Edit Profile</a></li>
            <li><a href='userinbox.jsp'>Inbox</a></li>
            <li><a href='arrangeviewing.jsp'>Arrange Viewing</a></li>
            <li><a href='signout.jsp'>Sign Out</a></li>
            </ul>
   	</li>  </ul>
</div>
<div id="content-wrapper">
  <div id="content">
      <h1>Add a Property</h1>
      <p>Please fill in the details about your property below</p>
      <div id="contact-form">
        <form method="post" action="" name="form2" id="my_sign-up_form">
          <ol>
            <li>
              <label for="address">Address Line 1</label>
              <input type="text" name="add1">
            </li>
            <li>
              <label for="address2">Address Line 2</label>
              <input type="text" name="add2">
            </li>
            <li>
              <label for="address3">Town</label>
              <input type="text" name="add3">
            </li>
            <li>
              <label for="address3">County</label>
              <input type="text" name="add4">
            </li>
            <li>
              <label for="postcode">Postcode</label>
              <input type="text" name="postc">
            </li>
            <li>
              <label for="prop-type">Property Type (for sale, for rent, holiday home)</label>
              <input type="text" name="prop-type">
            </li>
            <li>
              <label for="description">Description</label>
              <input type="text" name="descrip">
            </li>
            <li>
              <label for="features">Features</label>
              <input type="text" name="feat">
            </li>
             <li>
              <label for="BER">BER Rating</label>
              <input type="text" name="ber">
            </li>
             <li>
              <label for="asking-price">Asking Price</label>
              <input type="text" name="askp">
            </li>
            <li>
              <input class="submit" type="submit" name="Submit" value="submit">
            </li>
          </ol>
        </form>
      </div>
    </div>
  <%  
 
    MongoClient m1 = new MongoClient("localhost");
	DB db = m1.getDB("test");
	DBCollection coll = db.getCollection("property_class");
	DBCursor valid;
	BasicDBObject dbo = new BasicDBObject();

	dbo.append("Address1", request.getParameter("add1"));
	dbo.append("Address2", request.getParameter("add2"));
	dbo.append("Town", request.getParameter("add3"));
	dbo.append("County", request.getParameter("add4"));
	dbo.append("postcode", request.getParameter("postc"));
	dbo.append("property_type", request.getParameter("prop-type"));
	dbo.append("Description", request.getParameter("descrip"));
	dbo.append("Features", request.getParameter("feat"));
	dbo.append("BER_Rating", request.getParameter("ber"));
	dbo.append("Asking_Price", request.getParameter("askp"));
	   if(dbo!=null)
	   {
	     coll.insert(dbo);
	   }
   
	%>
	
	<div id="rightside">
        <img src="images/sell-property.jpg">
        <h2>Why add your property?</h2>
		<ul>
			<li>A Property Upgrade</li>
				<p>One of the primary reasons for selling a property is because you are</p>
				<p>on the hunt for something bigger and better. If you have a growing</p> 
				<p>family, for example, your current two bedroom bungalow may be too</p> 
				<p>small. This could lead to the need to find something with more space.</p> 
				<p>In addition to a growing family, an increase in income due to a </p>
				<p>promotion or a change in career could also allow you to make an </p>
				<p>upgrade into a new price bracket of property.</p>
			<li>A Property Downgrade</li>
				<p>On the other hand, some people will wish to sell their property to</p>
				<p>move into something smaller. This is common amongst empty-nesters,</p>
				<p>or older couples whose children have moved out of the home. They </p> 
				<p>no longer need all of the space and can sell their larger home</p>
				<p>for something smaller, cosier, and more affordable.</p>
			<li>A Change In Job</li>
				<p>Changes in career can be a major reason to move. If you are offered</p>
				<p>a job in a different location and don't want to face a long commute,</p>
				<p> the best option may be to sell your house. You can find something</p>
				<p> more local to your new job and save the money on petrol.</p>			
		</ul>        
        
		
        </div>
	</div>
  <div id="footer">
    <p>&copy;Copyright 2017 &bull; All Rights Reserved &bull; BSC Comp Design Company &bull; 1234 Main Street Donegal </p>
  </div>
</div>
</body>
</html>