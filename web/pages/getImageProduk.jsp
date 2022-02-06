<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*;"%>
<%
String id_produk =request.getParameter("id_produk");
try{
   Connection con=controllers.ConnectionProvider.getCon();
    PreparedStatement ps = con.prepareStatement("select * from produk where id_produk=?");
    ps.setString(1, id_produk);
    ResultSet rs = ps.executeQuery();
    if(rs.next()){
        Blob blob = rs.getBlob("foto_produk");
        byte byteArray[] = blob.getBytes(1, (int) blob.length());
        response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
       OutputStream os = response.getOutputStream();
        os.write(byteArray);
        os.flush();
        os.close();
         
    }else{
        System.out.println("No image found with this id.");
    }
}
catch(Exception e){
   out.println(e);
}  
%>