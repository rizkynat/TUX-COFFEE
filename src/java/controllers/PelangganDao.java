package controllers;

import java.util.*;
import java.sql.*;

public class PelangganDao {
    
    public static int insert(PelangganBean pb){
        int status=0;
        try{
            Connection con = controllers.ConnectionProvider.getCon();
            PreparedStatement ps = con.prepareStatement("insert into pelanggan(nama_lengkap_pel,email_pel,no_hp,password)values(?,?,?,?)");
            ps.setString(1, pb.getNamaLengkap());
            ps.setString(2, pb.getEmail());
            ps.setString(3, pb.getNohp());
            ps.setString(4, pb.getPassword());
            
            status=ps.executeUpdate();
            con.close();
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return status;
    }
    
    public static PelangganBean getPelangganById(int id){
        PelangganBean pb = new PelangganBean();
        try{
            Connection con=controllers.ConnectionProvider.getCon();
            PreparedStatement ps = con.prepareStatement("select * from pelanggan where id_pelanggan=?");
            ps.setInt(1,id);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                pb.setId(rs.getInt(1));
                pb.setFoto(rs.getString(2));
                pb.setUsername(rs.getString(3));
                pb.setEmail(rs.getString(4));
                pb.setGender(rs.getString(5));
                pb.setNamaLengkap(rs.getString(6));
                pb.setNohp(rs.getString(7));
                pb.setPassword(rs.getString(8));
            }
            con.close();
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return pb;
    }
    
   public static List<PelangganBean> getAllEmployees(){
    List<PelangganBean> list=new ArrayList<PelangganBean>();
    try{
    Connection con=controllers.ConnectionProvider.getCon();
    PreparedStatement ps=con.prepareStatement("select * from pelanggan");
    ResultSet rs=ps.executeQuery();
    while(rs.next()){
    PelangganBean pb=new PelangganBean();
     pb.setId(rs.getInt(1));
     pb.setFoto(rs.getString(2));
     pb.setUsername(rs.getString(3));
     pb.setEmail(rs.getString(4));
     pb.setGender(rs.getString(5));
     pb.setNamaLengkap(rs.getString(6));
     pb.setNohp(rs.getString(7));
     pb.setPassword(rs.getString(8));
    list.add(pb);
    }
    con.close();
    }catch(Exception pb){
    pb.printStackTrace();
    }
    return list;
    }

}
