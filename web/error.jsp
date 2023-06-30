<%-- 
    Document   : error
    Created on : Jan 20, 2023, 10:22:01 AM
    Author     : BCMedia
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String jdPage= "";
String aksi=request.getParameter("act");
    switch(aksi) {
	case "SM":
	    jdPage="Penambahan Data Mahasiswa Gagal";
            break;
	case "UM":
	    jdPage="Perubahan Data Mahasiswa Gagal";
            break;
        case "DM":
	    jdPage="Penghapusan Data Mahasiswa Gagal";
            break;
        default:
	    
    }
%>
<jsp:include page="head.jsp">
    <jsp:param name="jdpg" value="<%=jdPage%>" />
</jsp:include>
<h3><%=jdPage%> .... </h3>
<script>
setTimeout(
        function(){
            window.location = "mhsview.jsp" 
        },
    2000);
</script>
<jsp:include page="footer.jsp"></jsp:include>

