<%-- 
    Document   : petugasdelete
    Created on : Jun 26, 2023, 2:43:06 PM
    Author     : BCMedia
--%>
<%@page import="bcmkoperasi.petugas"%>
<%@page import="bcmkoperasi.*"%>
<%@page import="java.util.*"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String idpetugas=request.getParameter("p2");
petugas cn = new petugas();
tbpetugas m = cn.getRecordById(Integer.parseInt(idpetugas));
String HAKMG="", HAKOP="", sttY="", sttT="";
if(m.getHAKAKSES().equals("Operator")){
    HAKOP = " selected";
}else{
    HAKMG = " selected";
}
if(m.getSTT().equals("Y")){
    sttY = " selected";
}else{
    sttT = " selected";
}
%>
<h1>Edit Data Petugas</h1>
<form action="destroy.jsp" method="post">  
        <input type="hidden" name="act" value="petugas">
        <input type="hidden" name="IDPETUGAS" value="<%=idpetugas%>">
        <div class="form-group">
            <label class="form-label">Nama Petugas</label>
            <input type="text" name="NAMA" value="<%=m.getNAMA()%>" class="form-control" disabled/>
        </div>
        <div class="form-group">
            <label class="form-label">User Name</label>
            <input type="text" name="NAMAUSER" value="<%=m.getNAMAUSER()%>" class="form-control" disabled>
        </div>        
        <div class="form-group">
            <input type="checkbox" name="cmdyakin" id="yakin">
            <label class="form-label">konfirmasi penghapusan data dimana data yang dihapus tidak bisa di kembalikan lagi</label>
            
        </div>  
        <div class="jarak">
        <div class="row">
            <div class="col-2">
            <button type="submit" id="cmdhapus" class="btn btn-danger"> Delete Data </buttn> 
            </div>
            <div class="col-1">
            <a href="dashboard.jsp?act=petugas" class="btn btn-secondary"> Batal </a>
            </div>
        </div>
    </div>
</form>