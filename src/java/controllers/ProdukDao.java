package controllers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProdukDao {
    public static List<ProdukBean> getAllEmployees(){
    List<ProdukBean> list=new ArrayList<ProdukBean>();
    try{
    Connection con=controllers.ConnectionProvider.getCon();
    PreparedStatement ps=con.prepareStatement("select * from produk");
    ResultSet rs=ps.executeQuery();
    while(rs.next()){
    ProdukBean pb=new ProdukBean();
     pb.setId_produk(rs.getInt(1));
     pb.setFoto_produk(rs.getBlob(2));
     pb.setNama_produk(rs.getString(3));
     pb.setHarga_produk(rs.getInt(4));
     pb.setTgl_produk(rs.getDate(5));
     pb.setDiskon(rs.getInt(6));
     pb.setStok(rs.getInt(7));
     pb.setDeskripsi(rs.getString(8));
    list.add(pb);
    }
    con.close();
    }catch(Exception pb){
    pb.printStackTrace();
    }
    return list;
    }
}
