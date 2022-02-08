<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="controllers.*"%>
<%@ page import="java.sql.*"%>

<%
       int id_pelanggan = Integer.parseInt(request.getParameter("id_pelanggan"));
      
    
           try {
               Connection con=controllers.ConnectionProvider.getCon();
               PreparedStatement ps=con.prepareStatement("delete from pelanggan where id_pelanggan=?");
               ps.setInt(1, id_pelanggan);
                int status = ps.executeUpdate();
                if (status > 0) {
                    response.sendRedirect("http://localhost:8080/tux_coffee/pages/kelolaAkunUser.jsp");
                } else {
                    response.sendRedirect("http://localhost:8080/tux_coffee/pages/kelolaAkunUser.jsp");
                }
            } catch (Exception e) {
                out.println(e);
            }
        
   
%>      
