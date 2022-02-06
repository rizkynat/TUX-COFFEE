<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="controllers.*"%>
<%@ page import="java.sql.*"%>

<%
       int id_produk = Integer.parseInt(request.getParameter("id_produk"));
      
    
           try {
               Connection con=controllers.ConnectionProvider.getCon();
               PreparedStatement ps=con.prepareStatement("delete from produk where id_produk=?");
               ps.setInt(1, id_produk);
                int status = ps.executeUpdate();
                if (status > 0) {
                    response.sendRedirect("http://localhost:8080/tux_coffee/pages/adminProduk.jsp");
                } else {
                    response.sendRedirect("http://localhost:8080/tux_coffee/pages/adminProduk.jsp");
                }
            } catch (Exception e) {
                out.println(e);
            }
        
   
%>      
