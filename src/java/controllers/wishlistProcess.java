package controllers;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author A S U S
 */
@WebServlet(name = "wishlistProcess", urlPatterns = {"/wishlistProcess"})
@MultipartConfig(maxFileSize = 16177216)
public class wishlistProcess extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        int result =0;
        PreparedStatement ps =null;
        InputStream inputStream = null;
        int id_produk = Integer.parseInt(request.getParameter("id_produk"));
        Blob foto_produk = null;
        String nama_produk=null;
        int qty =Integer.parseInt(request.getParameter("kuantitas"));
        int berat =0;
        int harga = 0;
         ResultSet rs = controllers.ConnectionProvider.getResultIdFromResult("select * from produk where id_produk=?",id_produk);
        try {
            while (rs.next()) {
                foto_produk =  rs.getBlob("foto_produk");
                nama_produk = rs.getString("nama_produk");
                berat = rs.getInt("berat");
                harga = rs.getInt("harga_produk");
            }
        } catch (SQLException ex) {
            out.println(ex);
        }
         
         try {
                Connection con=controllers.ConnectionProvider.getCon();
                ps = con.prepareStatement("insert into keranjang(id_produk,foto_produk,nama_produk,qty,berat,total_harga) values(?,?,?,?,?,?)");
                ps.setInt(1, id_produk);
                ps.setBlob(2, foto_produk);
                ps.setString(3, nama_produk);
                ps.setInt(4, qty);
                ps.setInt(5, berat);
                ps.setInt(6, qty*harga);
                result = ps.executeUpdate();
                if (result > 0) {
                    response.sendRedirect("http://localhost:8080/tux_coffee/pages/wishlist.jsp");
                } else {
                    response.sendRedirect("http://localhost:8080/tux_coffee/pages/error.jsp");
                }
            } catch (Exception e) {
                out.println(e);
            }
        //int harga_produk = Integer.parseInt(request.getParameter("kuantitas"));
        
        
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
