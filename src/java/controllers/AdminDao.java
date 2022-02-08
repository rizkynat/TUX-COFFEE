package controllers;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class AdminDao {
        public static int insert(AdminBean ab){
        int status=0;
        try{
            Connection con = controllers.ConnectionProvider.getCon();
            PreparedStatement ps = con.prepareStatement("insert into admin (username_adm,email_adm,nama_lengkap_adm,password_adm,role)values(?,?,?,?,?)");
            ps.setString(1, ab.getUsername_adm());
            ps.setString(2, ab.getEmail_adm());
            ps.setString(3, ab.getNama_lengkap_adm());
            ps.setString(4, ab.getPassword_adm());
            ps.setString(5, ab.getRole());
            
            status=ps.executeUpdate();
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return status;
    }
}
