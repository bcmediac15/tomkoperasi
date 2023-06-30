<%-- 
    Document   : mainpage.jsp
    Created on : Feb 18, 2023, 3:01:30 PM
    Author     : BCMedia
--%>
<%
String pg = "dashboard";
String pgT = "";
String nav = "";
if(request.getParameter("pg") != null && request.getParameter("pg") != ""){ 
    pg=(String)session.getAttribute("pg");
    pgT=(String)session.getAttribute("pgT");;
}
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="navbar.jsp"></jsp:include>
<jsp:include page="slidebar.jsp"></jsp:include>
<jsp:include page="konten.jsp"></jsp:include> 