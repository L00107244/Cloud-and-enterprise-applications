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
<title>Build 'R' Buy - Update Property</title>
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
                <li><a href='updateprop.jsp'>Update Property</a></li>
                <li><a href='removeprop.jsp'>Remove Property</a></li>
                <li><a href='removeuser.jsp'>Remove User</a></li>
            	<li><a href='adminInbox.jsp'>Inbox</a></li>
            	<li><a href='signoutadmin.jsp'>Sign Out</a></li>
            </ul>
   	</li>
    </ul>
  </div>  
  <div id="content-wrapper">
	      <div id="contact-form">
	      <h1>Update Property</h1>
        <form method="post" action="" name="form1" id="my_contact_form">
          <ol>
          <li>
              <label for="prop_postcode">Copy the property postcode you wish to update</label>
              <input type="text" name="propID">
          </li>
          <li>
              <label for="askprice">Enter New asking Price</label>
              <input type="text" name="askp">
          </li>
          <li>
              <label for="prop type">Enter New asking Property type</label>
              <input type="text" name="proptype">
          </li>
            <li>
              <input class="submit" type="submit" name="Submit" value="submit">
            </li>
          </ol>
        </form>
      </div>
  </div>
  
    <%  	
	try{
    	MongoClient m1 = new MongoClient("localhost");

    	DB db = m1.getDB("test");
     	DBCollection coll = db.getCollection("property_class");
     	DBCursor cursor;
     	
	  BasicDBObject updateQuery2 = new BasicDBObject();
	  updateQuery2.append("$set", new BasicDBObject().append("Asking_Price", request.getParameter("askp")));
	  BasicDBObject updateQuery1 = new BasicDBObject();
	  updateQuery1.append("$set", new BasicDBObject().append("property_type", request.getParameter("proptype")));

	  BasicDBObject searchQuery3 = new BasicDBObject();
	  searchQuery3.append("postcode", request.getParameter("propID"));

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
	}finally{}
	
    
    MongoClient m1 = new MongoClient("localhost");
    DB db = m1.getDB("test");
    DBCollection coll = db.getCollection("property_class");
    DBCursor cursor1 = coll.find();  
 	int b = 1;
 	try{
     	while (cursor1.hasNext()) {
        	out.println("<br/>Property: "+b); 
        	out.println("<br/>" +cursor1.next());
     	}     	
 }catch(Exception e){
    System.err.println( e.getClass().getName() + ": " + e.getMessage() );
 }finally{
	 m1.close();
}
	%>
	
	
  <div id="footer">
    <p>&copy;Copyright 2017 &bull; All Rights Reserved &bull; BSC Comp Design Company &bull; 1234 Main Street Donegal </p>
  </div>

</body>
</html>
