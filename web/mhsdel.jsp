<%-- 
    Document   : mhsdel
    Created on : Jan 10, 2023, 10:06:54 AM
    Author     : BCMedia
--%>
<%@page import="bcmlatihan01.mhs"%>
<%@page import="bcmlatihan01.*"%>
<%@page import="java.util.*"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="head.jsp?jdpg=Hapus Data Mahasiswa&ucss=mhsview"></jsp:include> 
<%
String id=request.getParameter("id");
mhs cn = new mhs();
tbMHS m = cn.getRecordById(Integer.parseInt(id));
String jr = m.getJURUSAN();
String jk = m.getJK();
String sk="",mti="",kab="",jL="",jP="";

switch(jr) {
    case "SK":
	sk=" selected";
	break;
    case "MTI":
	mti=" selected";
	break;
    case "KAB":
	kab=" selected";
	break;	
}
switch(jk){
    case "L":
	jL=" selected";
	break;
    case "P":
	jP=" selected";
	break;
}
%>
<h1>Hapus Data Mahasiswa</h1>  
<form action="mhsdestroy.jsp" method="post">  
<input type="hidden" name="id" value="<%=id%>">
<input type="hidden" name="NIM" value="<%=m.getNIM()%>">
<label class="form-label">NIM</label>
    <input type="text" value="<%=m.getNIM()%>" name="nim" class="form-control" disabled/>
<label class="form-label">Nama</label>
    <input type="text" value="<%=m.getNAMA()%>" name="NAMA" class="form-control" disabled>
<label class="form-label">Jurusan</label>
    <select name="JURUSAN" class="form-select" disabled>
	<option value="SK"<%=sk%>>Sistem Komputer</option>
	<option value="MTI"<%=mti%>>Managemen Teknik Informatika</option>
	<option value="KAB"<%=kab%>>Komputer Aplikasi</option>
    </select>
<label class="form-label">Jenis Kelamin</label>
    <select name="JK" class="form-select" disabled>
	<option value="L"<%=jL%>>Laki-Laki</option>
	<option value="P"<%=jP%>>Perempuan</option>
    </select>
<label class="form-label">TGL Lahir</label>
    <input type="date" value="<%=m.getTGLAHIR()%>" name="TGLAHIR" class="form-control" disabled>

<div class="jarak">
<button type="submit" class="btn btn-danger"> Delete Data </buttn>
</div>
</form>
<jsp:include page="footer.jsp"></jsp:include> 
