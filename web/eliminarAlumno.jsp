<%-- 
    Document   : eliminarAlumno
    Created on : 24/10/2025, 09:41:59 AM
    Author     : dell
--%>

<%@include file="conexion.jsp"%>
<%
int numeroCodigo=Integer.parseInt(request.getParameter("id_usuarios"));
        PreparedStatement ps;
        ps=conexion.prepareCall("DELETE from tusuarios WHERE id_usuarios = '"+numeroCodigo+"'");
        ps.executeUpdate();
        response.sendRedirect("index.jsp");
%>