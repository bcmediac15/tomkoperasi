<%-- 
    Document   : konten
    Created on : Feb 19, 2023, 10:29:06 AM
    Author     : BCMedia
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String pg = (String)session.getAttribute("pg");
String pgT =(String)session.getAttribute("pgT");
String p1= request.getParameter("p1");
String p2= request.getParameter("p2");
%>
<!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0"><%=pgT%></h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="dashboard.jsp">dashboard</a></li>
<%
if(!pgT.equals("")){
%>
      <li class="breadcrumb-item active"><%=pgT%></li>
<% 
}
%>              
            </ol>
          </div>
        </div>
      </div>
    </div>
    <section class="content">
      <div class="container-fluid">
<%
switch(pg){
  case "anggota":
  %>
<jsp:include page="pages/anggota/index.jsp"></jsp:include> 
<%
	    break;
  case "petugas":
  %>
<jsp:include page="pages/petugas/index.jsp"></jsp:include> 
<%
	    break;
  case "rekeninginduk":
%>
<jsp:include page="pages/rekeninginduk/index.jsp"></jsp:include> 
<%
    break;
  case "dashboard":
  default:
%>
  <jsp:include page="pages/dashboard.jsp"></jsp:include> 
<%
    break;
}
%>    
    </div></section>
