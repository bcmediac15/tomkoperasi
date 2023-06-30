<%-- 
    Document   : success.jsp
    Created on : Jan 20, 2023, 10:11:11 AM
    Author     : BCMedia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String jdPage= "";
String aksi=request.getParameter("act");
    switch(aksi) {
	case "SM":
	    jdPage="Penambahan Data Mahasiswa Sukses";
            break;
	case "UM":
	    jdPage="Perubahan Data Mahasiswa Sukses";
            break;
        case "DM":
	    jdPage="Penghapusan Data Mahasiswa Sukses";
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
