package controllers;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.sql.*;

/**
 *
 * @author A S U S
 */
@WebServlet(name = "uploadImage", urlPatterns = {"/uploadImage"})
@MultipartConfig(maxFileSize = 16177216)
public class uploadImage extends HttpServlet {

    PrintWriter out;
  
  

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        out = response.getWriter();
        int result =0;
        PreparedStatement ps =null;
        InputStream inputStream = null;
        Part part = request.getPart("image");
        if (part != null) {
           try {
                Connection con=controllers.ConnectionProvider.getCon();
                ps = con.prepareStatement("insert into promosi(foto_promosi) values(?)");
                InputStream is = part.getInputStream();
                ps.setBlob(1, is);
                result = ps.executeUpdate();
                if (result > 0) {
                    response.sendRedirect("http://localhost:8080/tux_coffee/pages/view.jsp");
                } else {
                    response.sendRedirect("index.jsp?message=Some+Error+Occurred");
                }
            } catch (Exception e) {
                out.println(e);
            }
        }
     

           
    }


}
