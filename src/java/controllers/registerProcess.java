package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(name = "registerProcess", urlPatterns = {"/registerProcess"})
public class registerProcess extends HttpServlet {

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
        String namaLengkap = request.getParameter("namaLengkap");
        String email = request.getParameter("email");
        String concatNohp = request.getParameter("code")+request.getParameter("nohp");
        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");
        if(!password.equals(repassword)){
            response.sendRedirect("login.jsp");
        }
        
        PelangganBean pb = new PelangganBean();
        pb.setNamaLengkap(namaLengkap);
        pb.setEmail(email);
        pb.setNohp(concatNohp);
        pb.setPassword(password);
        
        int status = PelangganDao.insert(pb);
        if(status>0){
            response.sendRedirect("http://localhost:8080/tux_coffee/pages/login.jsp");
        }else{
            //response.sendRedirect("http://localhost:8080/tux_coffee/pages/login.jsp");
            out.println("http://localhost:8080/tux_coffee/pages/errorAdmin.jsp");
        }
        out.close();
    }

 
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
