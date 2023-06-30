<%-- 
    Document   : template.jsp
    Created on : Jan 10, 2023, 6:48:01 AM
    Author     : BCMedia
--%>
<%
String jdpage=request.getParameter("jdpg");  
String uc=request.getParameter("ucss");
String css="";
if(uc== null){
    css="";
}else{
    css="<link rel='stylesheet' href='css/"+uc+".css'>";
}
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%=jdpage%></title>
	<link href="css/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<link rel="stylesheet" href="css/bootstrap-icons.css">
	<%=css%>
    </head>
    <body>
	<div class="container">
	    <nav class="navbar sticky-top navbar-expand-lg navbar-light bg-light fixed-top">
		<div class="container-fluid">
		  <a class="navbar-brand" href="#">MHS</a>
		  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  <div class="collapse navbar-collapse" id="navbarNav">
		    <ul class="navbar-nav">
		      <li class="nav-item">
			<a class="nav-link active" aria-current="page" href="/">Home</a>
		      </li>
		      <li class="nav-item">
			<a class="nav-link" href="mhsview.jsp">DataMahasiswa</a>
		      </li>
		      <li class="nav-item">
			<a class="nav-link" href="matkulview.jsp">Matakuliah</a>
		      </li>
		    </ul>
		  </div>
		</div>
	      </nav>
	    