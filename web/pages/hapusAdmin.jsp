<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="controllers.*"%>
<%@ page import="java.sql.*"%>

<%
       int id_admin = Integer.parseInt(request.getParameter("id_admin"));
      
    
           try {
               Connection con=controllers.ConnectionProvider.getCon();
               PreparedStatement ps=con.prepareStatement("delete from admin where id_admin=?");
               ps.setInt(1, id_admin);
                int status = ps.executeUpdate();
                if (status > 0) {
                    response.sendRedirect("http://localhost:8080/tux_coffee/pages/kelolaAkunAdmin.jsp");
                } else {
                    response.sendRedirect("http://localhost:8080/tux_coffee/pages/kelolaAkunAdmin.jsp");
                }
            } catch (Exception e) {
                out.println(e);
            }
        
   
%>      
