<%-- 
    Document   : RekeningIndukedit
    Created on : Jun 27, 2023, 5:55:53 PM
    Author     : BCMedia
--%>

<%@page import="bcmkoperasi.rekinduk"%>
<%@page import="bcmkoperasi.*"%>
<%@page import="java.util.*"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String idrekinduk=request.getParameter("p2");
rekinduk cn = new rekinduk();
tbrekinduk m = cn.getRekIndukRecordById(Integer.parseInt(idrekinduk));
%>
<h1>Edit Data Petugas</h1>
<form action="update.jsp" method="post">  
        <input type="hidden" name="act" value="rekeninginduk">
        <input type="hidden" name="IDREKINDUK" value="<%=idrekinduk%>">
        <div class="form-group">
            <label class="form-label">Kode</label>
            <input type="text" name="KODE" value="<%=m.getKODE()%>" class="form-control"/>
        </div>
        <div class="form-group">
            <label class="form-label">Deskripsi</label>
            <input type="text" name="DESKRIPSI" value="<%=m.getDESKRIPSI()%>" class="form-control">
        </div>        
        <div class="jarak">
        <div class="row">
            <div class="col-2">
            <button type="submit" class="btn btn-primary"> Update Data </buttn> 
            </div>
            <div class="col-1">
            <a href="dashboard.jsp?act=rekeninginduk" class="btn btn-secondary"> Batal </a>
            </div>
        </div>
    </div>
</form>
