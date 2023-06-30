<%-- 
    Document   : RekeningInduknew
    Created on : Jun 27, 2023, 5:55:37 PM
    Author     : BCMedia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int idPetugas= (Integer) session.getAttribute("idpetugas");
%>
<!DOCTYPE html>
<h1>Menambahkan Data Rekening Induk</h1>  
<form action="store.jsp" method="post">  
<input type="hidden" name="act" value="rekeninginduk">
<input type="hidden" name="IDPETUGAS" value="<%=idPetugas%>">
<div class="form-group">
    <label class="form-label">Kode Rekening Induk</label>
    <input type="text" name="KODE" class="form-control"/>
</div>
<div class="form-group">
    <label class="form-label">Deskripsi</label>
    <input type="text" name="DESKRIPSI" class="form-control">
</div>

<div class="jarak">
<div class="row">
    <div class="col-2">
	<button type="submit" class="btn btn-primary"> Simpan Data </buttn> 
    </div>
    <div class="col-1">
	<a href="dashboard.jsp?act=rekeninginduk" class="btn btn-secondary"> Batal </a>
    </div>
</div>
</div>
</form>