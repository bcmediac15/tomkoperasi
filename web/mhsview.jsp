<%-- 
    Document   : vmhs
    Created on : Jan 8, 2023, 11:04:21 AM
    Author     : BCMedia
--%>
<%@page import="bcmlatihan01.mhs"%>
<%@page import="bcmlatihan01.*"%>
<%@page import="java.util.*"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="head.jsp?jdpg=List Data Mahasiswa&ucss=mhsview"></jsp:include> 
        <h1>List Data Mahasiswa</h1>
<%  
mhs cn = new mhs();
List<tbMHS> list=cn.getAllRecords();  

request.setAttribute("list",list); 
int no = 0; 
%>

<table class="table table-striped table-hover">  
<tr><th >No</th><th>NIM</th><th>Nama Mahasiswa</th><th>Jurusan</th>  
<th>Jenis Kelamin</th><th>TGL Lahir</th><th style="text-align: center"><a class="tx new" href="mhsnew.jsp"><i class="bi bi-person-plus"></i></th></tr>  
<c:forEach items="${list}" var="u" varStatus="count">  
<tr><td>${count.count}</td><td>${u.getNIM()}</td><td>${u.getNAMA()}</td>  
<td>${u.getJURUSAN()}</td><td>
${u.getJK()=='L' ? 'Laki-Laki' : 'Perempuan'}
</td><td>${u.getTGLAHIR()}</td>  
<td style="text-align: center"><a class="tx edit" href="mhsedit.jsp?id=${u.getId()}"><i class="bi bi-pencil-square"></i></a> <a class="tx del" href="mhsdel.jsp?id=${u.getId()}"><i class="bi bi-person-dash"></i></a></td></tr>  
</c:forEach>	
</table>
<jsp:include page="footer.jsp"></jsp:include> 