<%-- 
    Document   : RekeningInduk
    Created on : Feb 19, 2023, 10:36:37 AM
    Author     : BCMedia
--%>
<%@page import="bcmkoperasi.rekinduk"%>
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
    <jsp:include page="rekeninginduknew.jsp"></jsp:include> 
    <%
        break;
    case "edit":
    %>
    <jsp:include page="rekeningindukedit.jsp"></jsp:include> 
    <%
        break;
    case "del":
    %>
    <jsp:include page="rekeningindukdelete.jsp"></jsp:include> 
    <%
        break;
    default:
        rekinduk cn = new rekinduk();
        List<tbrekinduk> list=cn.getRekIndukAllRecords();
        request.setAttribute("list",list); 
        %>
        <h1>Rekening Induk</h1>
        <table id="dtVS" class="table table-striped table-hover table-bordered table-fixed" cellspacing="0" width="100%">  
            <thead>
                <tr>
                    <th class="th-sm">Kode</th>
                    <th class="th-sm">Deskripsi</th>
                    <th class="th-sm" style="text-align: center">
                        <a class="tx new" href="dashboard.jsp?act=rekeninginduk&p1=new"><i class="fa fa-user-plus"></i>
                    </th>
                </tr>
            </thead>
            <tbody>  
        <c:forEach items="${list}" var="u" varStatus="count">  
            <tr>
                <td>${u.getKODE()}</td>
                <td><a href="dashboard.jsp?act=rekening&p1=list&p2=${u.getIDREKINDUK()}">${u.getDESKRIPSI()}</a></td>  
                <td style="text-align: center">
                    <a class="tx edit" href="dashboard.jsp?act=rekeninginduk&p1=edit&p2=${u.getIDREKINDUK()}"><i class="fa fa-user-edit"></i></a> 
                    <a class="tx del" href="dashboard.jsp?act=rekeninginduk&p1=del&p2=${u.getIDREKINDUK()}"><i class="fa fa-user-minus" style="color: red"></i></a>
                </td>
            </tr>  
        </c:forEach>
    </tbody>	
        </table>
        <%
        break;
}
%>