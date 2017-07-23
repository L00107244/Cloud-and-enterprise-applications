<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.mongodb.BasicDBObject"%>
	<%@page import="com.mongodb.DB"%>
	<%@page import="com.mongodb.DBCollection"%>
	<%@page import="com.mongodb.DBCursor"%>
	<%@page import="com.mongodb.MongoClient"%>

	<%@page import="java.net.ConnectException"%>
	<%@page import="java.net.UnknownHostException"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LoginCredentials</title>
</head>
<body>
<%  MongoClient m1 = new MongoClient("localhost");
	DB db = m1.getDB("test");
	DBCollection coll = db.getCollection("sign_up_class");
	DBCursor valid;
	DBCursor valid1;
	BasicDBObject dbo = new BasicDBObject();
	
	String mail = request.getParameter("Email");

	dbo.put("Email", mail);
	valid = coll.find(dbo);
	
	//dbo.put("Password", request.getParameter("password"));
	//valid = coll.find(dbo);
	
	if(valid.hasNext()){
		System.out.println("Login Successful");
	}
	else
		System.out.println("Login Failed");
	//dbo.put("password", request.getParameter("password"));
	//valid1 = coll.find(dbo);
	
	/*try{
		if(valid.hasNext()){
			System.out.println("Login Successful");
		}
		else
			System.out.println("Login Failed");
		}
	catch(Exception exe){
		System.out.println("Error: " + exe.getStackTrace());
	}
	finally{
			m1.close();
			valid.close();
		}*/
 %>
</body>
</html>