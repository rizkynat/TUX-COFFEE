package controllers;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.*;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Date;
import java.text.SimpleDateFormat;
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
@WebServlet(name = "tambahProdukProcess", urlPatterns = {"/tambahProdukProcess"})
@MultipartConfig(maxFileSize = 16177216)
public class tambahProdukProcess extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        PrintWriter out = response.getWriter();
        Part foto_produk = request.getPart("foto_produk");
        InputStream is = foto_produk.getInputStream();
        String nama_produk = request.getParameter("nama_produk");
        int harga_produk = Integer.parseInt(request.getParameter("harga_produk"));
        
        DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        Date myDate = null;
        try {
            myDate = formatter.parse(request.getParameter("tgl_produk"));
        } catch (ParseException ex) {
            Logger.getLogger(tambahProdukProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        java.sql.Date tgl_produk = new java.sql.Date(myDate.getTime());
        int diskon = Integer.parseInt(request.getParameter("diskon"));
        int stok = Integer.parseInt(request.getParameter("stok"));
        String deskripsi = request.getParameter("deskripsi");
        
        ProdukBean pb = new ProdukBean();
        pb.setFoto_produk((Blob) is);
        pb.setNama_produk(nama_produk);
        pb.setHarga_produk(harga_produk);
        pb.setTgl_produk(tgl_produk);
        pb.setDiskon(diskon);
        pb.setStok(stok);
        pb.setDeskripsi(deskripsi);
         
        int status = ProdukDao.insert(pb);
        if(status>0){
            response.sendRedirect("http://localhost:8080/tux_coffee/pages/Home.jsp");
        }else{
            //response.sendRedirect("http://localhost:8080/tux_coffee/pages/login.jsp");
            out.println(foto_produk);
        }
        out.close();
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
