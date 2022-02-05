package controllers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProdukDao {
    
       
    public static int insert(ProdukBean pb){
        int status=0;
        try{
            Connection con = controllers.ConnectionProvider.getCon();
            PreparedStatement ps = con.prepareStatement("insert into produk(foto_produk,nama_produk,harga_produk,tgl_produk,diskon,stok,deskripsi)values(?,?,?,?,?,?,?)");
            ps.setBlob(1, pb.getFoto_produk());
            ps.setString(2, pb.getNama_produk());
            ps.setInt(3, pb.getHarga_produk());
            ps.setDate(4, pb.getTgl_produk());
            ps.setInt(5, pb.getDiskon());
            ps.setInt(6, pb.getStok());
            ps.setString(7, pb.getDeskripsi());
            
            status=ps.executeUpdate();
            con.close();
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return status;
    }
    
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
