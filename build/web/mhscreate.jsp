<%-- 
    Document   : mhscreate.jsp
    Created on : Jan 9, 2023, 10:31:55 PM
    Author     : BCMedia
--%>
<%@page import="bcmlatihan01.mhs"%> 
<jsp:useBean id="u" class="bcmlatihan01.tbMHS"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>

<%  

if(mhs.storedata(u)){  
    //response.sendRedirect("success.jsp?act=SM");
    response.sendRedirect("dashboard.jsp?act=mhs&p1=SMS");
}else{  
    //response.sendRedirect("error.jsp?act=SM");  
    response.sendRedirect("dashboard.jsp?act=mhs&p1=SME");
}  
%>