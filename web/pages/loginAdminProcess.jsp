<%@page import="java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%! String emaildbName;

            String passdbPsw;

        %>
        <%

        PreparedStatement ps = null;

        ResultSet rs = null;
        String sql ="select * from admin where email_adm=? and password_adm=?"; 
        
        String email = request.getParameter("email_adm");
        String password = request.getParameter("password_adm");
        
        if( (!(email.equals(null) || (email.equals(""))&& !(password.equals(null) || 
        password.equals("")))) ){
        
            try{
        ps = controllers.ConnectionProvider.getCon().prepareStatement(sql);
        
        ps.setString(1, email);
        ps.setString(2, password);
        rs = ps.executeQuery();

        if(rs.next()){ 

        emaildbName = rs.getString("email_adm");
        passdbPsw = rs.getString("password_adm");
        if(emaildbName.equals(emaildbName) && password.equals(passdbPsw)){

        session.setAttribute("email_adm",emaildbName);

        response.sendRedirect("http://localhost:8080/tux_coffee/pages/kelolaAkunAdmin.jsp"); 

        } 
      }else{
           response.sendRedirect("http://localhost:8080/tux_coffee/pages/errorAdmin.jsp"); 
        }
            }catch(SQLException sqe){
                out.println(sqe);
            }
    }
        %>
