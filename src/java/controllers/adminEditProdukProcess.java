package controllers;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.PreparedStatement;
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
@WebServlet(name = "adminEditProdukProcess", urlPatterns = {"/adminEditProdukProcess"})
@MultipartConfig(maxFileSize = 16177216)
public class adminEditProdukProcess extends HttpServlet {

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
        int id_produk = Integer.parseInt(request.getParameter("id_produk"));
         int harga_produk = Integer.parseInt(request.getParameter("harga_produk"));
        Part foto_produk = request.getPart("foto_produk");
       String nama_produk = request.getParameter("nama_produk");
       int diskon=Integer.parseInt(request.getParameter("diskon"));
       int stok = Integer.parseInt(request.getParameter("stok"));
       int berat = Integer.parseInt(request.getParameter("berat"));
       String deskripsi = request.getParameter("deskripsi");
        if (foto_produk != null) {
           try {
               Connection con=controllers.ConnectionProvider.getCon();
               PreparedStatement ps=con.prepareStatement("update produk set foto_produk=?,nama_produk=?,harga_produk=?,diskon=?,stok=?,berat=?,deskripsi=? where id_produk=?");
                InputStream is = foto_produk.getInputStream();
                ps.setBlob(1, is);
                ps.setString(2, nama_produk);
                ps.setInt(3, harga_produk);
                //ps.setDate(4, date);
                ps.setInt(4, diskon);
                ps.setInt(5, stok);
                ps.setInt(6, berat);
                ps.setString(7, deskripsi);
                ps.setInt(8,id_produk);
                int status = ps.executeUpdate();
                if (status > 0) {
                    response.sendRedirect("http://localhost:8080/tux_coffee/pages/adminProduk.jsp");
                } else {
                    response.sendRedirect("http://localhost:8080/tux_coffee/pages/adminProduk.jsp");
                }
            } catch (Exception e) {
                out.println(e);
            }
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
