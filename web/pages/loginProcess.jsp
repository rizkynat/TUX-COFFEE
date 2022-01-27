<%@page import="java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%! String emaildbName;

            String passdbPsw;

        %>
        <%
        Connection con= null;

        PreparedStatement ps = null;

        ResultSet rs = null;
        String sql ="select * from pelanggan where email_pel=? and password=?"; 
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        if( (!(email.equals(null) || (email.equals(""))&& !(password.equals(null) || 
        password.equals("")))) ){
        
            try{
        ps = controllers.ConnectionProvider.getCon().prepareStatement(sql);
        
        ps.setString(1, email);
        ps.setString(2, password);
        rs = ps.executeQuery();

        if(rs.next()){ 

        emaildbName = rs.getString("email_pel");
        passdbPsw = rs.getString("password");
        if(emaildbName.equals(emaildbName) && password.equals(passdbPsw)){

        session.setAttribute("email",emaildbName);

        response.sendRedirect("Home.jsp"); 

        } 
      }else{
            response.sendRedirect("error.jsp");

            rs.close();

            ps.close(); 
        }
            }catch(SQLException sqe){
                out.println(sqe);
            }
    }
        %>
    </body>
</html>
