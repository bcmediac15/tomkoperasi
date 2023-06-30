<%-- 
    Document   : logout
    Created on : Feb 18, 2023, 2:56:49 PM
    Author     : BCMedia
--%>

<%
session.setAttribute("username", null);
session.setAttribute("userid", null);
session.setAttribute("level", null);
session.invalidate();
response.sendRedirect("dashboard.jsp");
%>