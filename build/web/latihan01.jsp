<%-- 
    Document   : latihan01
    Created on : Jan 1, 2023, 1:35:58 PM
    Author     : BCMedia
--%>

<%@page import="bcmlatihan01.coba01"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
	<%=coba01.salam()%>
	<% out.println("<br><i>Test Print Out</i>"); %>
	<%="Test Print Text"%>
	
	
    </body>
</html>
