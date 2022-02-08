package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "registerAdminProcess", urlPatterns = {"/registerAdminProcess"})
public class registerAdminProcess extends HttpServlet {

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
           PrintWriter out = response.getWriter();
        String username_adm = request.getParameter("username_adm");
        String email_adm = request.getParameter("email_adm");
       String nama_lengkap_adm = request.getParameter("nama_lengkap_adm");
       String role = request.getParameter("role");
        String password_adm = request.getParameter("password_adm");
        String repassword_adm = request.getParameter("repassword_adm");
        if(!password_adm.equals(repassword_adm)){
            response.sendRedirect("loginAdmin.jsp");
        }
        
        AdminBean ab = new AdminBean();
        ab.setUsername_adm(username_adm);
        ab.setEmail_adm(email_adm);
        ab.setNama_lengkap_adm(nama_lengkap_adm);
        ab.setPassword_adm(password_adm);
        ab.setRole(role);
        
        int status = AdminDao.insert(ab);
        if(status>0){
            response.sendRedirect("http://localhost:8080/tux_coffee/pages/loginAdmin.jsp");
        }else{
            //response.sendRedirect("http://localhost:8080/tux_coffee/pages/login.jsp");
            out.println(status);
        }
        out.close();
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
