<%-- 
    Document   : petugasedit
    Created on : Jun 26, 2023, 2:42:49 PM
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
<form action="update.jsp" method="post">  
        <input type="hidden" name="act" value="petugas">
        <input type="hidden" name="IDPETUGAS" value="<%=idpetugas%>">
        <div class="form-group">
            <label class="form-label">Nama Petugas</label>
            <input type="text" name="NAMA" value="<%=m.getNAMA()%>" class="form-control"/>
        </div>
        <div class="form-group">
            <label class="form-label">User Name</label>
            <input type="text" name="NAMAUSER" value="<%=m.getNAMAUSER()%>" class="form-control">
        </div>
        <div class="form-group">
            <label class="form-label">Create Password</label>
            <input type="password" name="KEYACC" class="form-control">
        </div>
        <div class="form-group">
            <label class="form-label">Verifikasi Password</label>
            <input type="password" name="KEYACC2" class="form-control">
        </div>
        <div class="form-group">
            <label class="form-label">Hak Akses</label>
            <select name="HAKAKSES" class="form-control">
            <option value="Operator"<%=HAKOP%>>Operator</option>
            <option value="Manager"<%=HAKMG%>>Manager</option>
            </select>
        </div>
        <div class="form-group">
            <label class="form-label">Status Petugas</label>
            <select name="STT" class="form-control">
            <option value="Y"<%=sttY%>>Aktif</option>
            <option value="N"<%=sttT%>>Tidak Aktif</option>
            </select>
        </div>
        
        <div class="jarak">
        <div class="row">
            <div class="col-2">
            <button type="submit" class="btn btn-primary"> Update Data </buttn> 
            </div>
            <div class="col-1">
            <a href="dashboard.jsp?act=petugas" class="btn btn-secondary"> Batal </a>
            </div>
        </div>
    </div>
</form>
