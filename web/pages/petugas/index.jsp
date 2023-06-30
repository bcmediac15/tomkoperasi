<%-- 
    Document   : index.jsp
    Created on : Jun 26, 2023, 8:54:07 AM
    Author     : BCMedia
--%>
<%@page import="bcmkoperasi.petugas"%>
<%@page import="bcmkoperasi.*"%>
<%@page import="java.util.*"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
String p1=request.getParameter("p1");
String p2=request.getParameter("p2");
p1 = (p1 != null)?p1:"";
p2 = (p2 != null)?p2:"";

switch(p1){
    case "new":
%>
<jsp:include page="petugasnew.jsp"></jsp:include> 
<%
    break;
    case "edit":
%>
    <jsp:include page="petugasedit.jsp"></jsp:include> 
<%
    break;
    case "del":
%>
    <jsp:include page="petugasdelete.jsp"></jsp:include> 
<%
    break;
    default:
        //List Data Petugas
        petugas cn = new petugas();
        List<tbpetugas> list=cn.getAllRecords();  

        request.setAttribute("list",list); 
        int no = 0; 
        %>
        <h1>List Data Petugas</h1>
        <table class="table table-striped table-hover">  
        <tr><th >No</th><th>Nama Petugas</th><th>User Name</th>
        <th style="text-align: center"><a class="tx new" href="dashboard.jsp?act=petugas&p1=new"><i class="fa fa-user-plus"></i></th></tr>  
        <c:forEach items="${list}" var="u" varStatus="count">  
        <tr><td>${count.count}</td><td>${u.getNAMA()}</td><td>${u.getNAMAUSER()}</td>  
        <td style="text-align: center"><a class="tx edit" href="dashboard.jsp?act=petugas&p1=edit&p2=${u.getIDPETUGAS()}"><i class="fa fa-user-edit"></i></a> <a class="tx del" href="dashboard.jsp?act=petugas&p1=del&p2=${u.getIDPETUGAS()}"><i class="fa fa-user-minus" style="color: red"></i></a></td></tr>  
        </c:forEach>	
        </table>
        <%
    break;
}
%>