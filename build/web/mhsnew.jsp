<%-- 
    Document   : mhsnew.jsp
    Created on : Jan 9, 2023, 10:12:04 PM
    Author     : BCMedia
--%>
<jsp:include page="head.jsp?jdpg=Tambah Data Mahasiswa&ucss=mhsview"></jsp:include> 

<h1>Data Mahasiswa Baru</h1>  
<form action="mhscreate.jsp" method="post">  

<label class="form-label">NIM</label>
    <input type="text" name="NIM" class="form-control"/>
<label class="form-label">Nama</label>
    <input type="text" name="NAMA" class="form-control">
<label class="form-label">Jurusan</label>
    <select name="JURUSAN" class="form-select">
	<option value="SK">Sistem Komputer</option>
	<option value="MTI">Managemen Teknik Informatika</option>
	<option value="KAB">Komputer Aplikasi</option>
    </select>
<label class="form-label">Jenis Kelamin</label>
    <select name="JK" class="form-select">
	<option value="L">Laki-Laki</option>
	<option value="P">Perempuan</option>
    </select>
<label class="form-label">TGL Lahir</label>
    <input type="date" name="TGLAHIR" class="form-control">

<div class="jarak">
<button type="submit" class="btn btn-primary"> Buat Data </buttn>
</div>
</form>
<jsp:include page="footer.jsp"></jsp:include> 