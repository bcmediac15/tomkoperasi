<%-- 
    Document   : petugasnew
    Created on : Jun 26, 2023, 10:38:53 AM
    Author     : BCMedia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<h1>Menambahkan Data Petugas</h1>  
<form action="store.jsp" method="post">  
<input type="hidden" name="act" value="petugas">
<div class="form-group">
    <label class="form-label">Nama Petugas</label>
    <input type="text" name="NAMA" class="form-control"/>
</div>
<div class="form-group">
    <label class="form-label">User Name</label>
    <input type="text" name="NAMAUSER" class="form-control">
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
	<option value="Operator" selected>Operator</option>
	<option value="Manager">Manager</option>
    </select>
</div>
<div class="form-group">
    <label class="form-label">Status Petugas</label>
    <select name="STT" class="form-control">
	<option value="Y" selected>Aktif</option>
	<option value="N">Tidak Aktif</option>
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
