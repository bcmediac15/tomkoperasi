<%-- 
    Document   : index
    Created on : Jan 10, 2023, 8:16:12 AM
    Author     : BCMedia
--%>

<%
String urlTarget = "loginpage.jsp";

    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
	response.sendRedirect("loginpage.jsp");
	//urlTarget = "loginpage.jsp";
    }else{  
	response.sendRedirect("dashboard.jsp");
	//urlTarget = "dashboard.jsp";
    }
%>