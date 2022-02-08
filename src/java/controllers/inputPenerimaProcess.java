package controllers;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "inputPenerimaProcess", urlPatterns = {"/inputPenerimaProcess"})
public class inputPenerimaProcess extends HttpServlet {


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
       String nama_penerima = request.getParameter("nama_penerima");
       String nohp_penerima = request.getParameter("nohp_penerima");
       String alamat_penerima = request.getParameter("alamat_penerima");
       String kode_pos = request.getParameter("kode_pos");
       String provinsi = request.getParameter("provinsi");
       String kota = request.getParameter("kota");
       String kecamatan = request.getParameter("kecamatan");
                 
         try {
                Connection con=controllers.ConnectionProvider.getCon();
                ps = con.prepareStatement("insert into penerima (nama_penerima, nohp_penerima, alamat_penerima, kode_pos, provinsi, "
                        + "kota, kecamatan) values(?,?,?,?,?,?,?)");
                ps.setString(1, nama_penerima);
                ps.setString(2, nohp_penerima);
                ps.setString(3, alamat_penerima);
                ps.setString(4, kode_pos);
                ps.setString(5, provinsi);
                ps.setString(6, kota);
                ps.setString(7, kecamatan);
                result = ps.executeUpdate();
                if (result > 0) {
                    response.sendRedirect("http://localhost:8080/tux_coffee/pages/checkout3.jsp");
                } else {
                    response.sendRedirect("http://localhost:8080/tux_coffee/pages/error.jsp");
                }
            } catch (Exception e) {
                out.println(e);
            }
       
        
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
