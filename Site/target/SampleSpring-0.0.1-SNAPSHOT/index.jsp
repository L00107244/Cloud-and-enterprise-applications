<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sample Application</title>
</head>
<body>
<body>
<h2>Spring Page Redirection</h2>
<p>Click below button to redirect the result to new page</p>

<form:form method = "GET" action = "/HelloWeb/redirect">
    <table>
        <tr>
            <td>
                <input type = "submit" value = "Redirect Page"/>
            </td>
        </tr>
    </table>
</form:form>
</body>
</body>
</html>