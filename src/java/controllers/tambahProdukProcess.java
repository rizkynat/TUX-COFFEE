/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
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
        response.setContentType("text/html;charset=UTF-8");
       
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
        String nama_produk = request.getParameter("nama_produk");
        int harga_produk = Integer.parseInt(request.getParameter("harga_produk"));
        DateFormat formatter ; 
        formatter = new SimpleDateFormat("dd-MM-yyyy");
        //java.util.Date date=formatter.parse(request.getParameter("date"));
        int diskon = Integer.parseInt(request.getParameter("diskon"));
        int stok = Integer.parseInt(request.getParameter("stok"));
        int berat = Integer.parseInt(request.getParameter("berat"));
        String deskripsi = request.getParameter("deskripsi");
        Part foto_produk = request.getPart("foto_produk");
         if (foto_produk != null) {
           try {
                Connection con=controllers.ConnectionProvider.getCon();
                ps = con.prepareStatement("insert into produk(foto_produk,nama_produk,harga_produk,diskon,stok,berat,deskripsi) values(?,?,?,?,?,?,?)");
                InputStream is = foto_produk.getInputStream();
                ps.setBlob(1, is);
                ps.setString(2, nama_produk);
                ps.setInt(3, harga_produk);
                //ps.setDate(4, date);
                ps.setInt(4, diskon);
                ps.setInt(5, stok);
                ps.setInt(6, berat);
                ps.setString(7, deskripsi);
                result = ps.executeUpdate();
                if (result > 0) {
                    response.sendRedirect("http://localhost:8080/tux_coffee/pages/adminProduk.jsp");
                } else {
                    response.sendRedirect("index.jsp?message=Some+Error+Occurred");
                }
            } catch (Exception e) {
                out.println(e);
            }
        }
     
        out.println(request.getParameter("foto_produk")+request.getParameter("harga_produk"));
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
