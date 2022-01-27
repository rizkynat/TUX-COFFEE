/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author A S U S
 */
@WebServlet(name = "registerProcess", urlPatterns = {"/registerProcess"})
public class registerProcess extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
            response.sendRedirect("http://localhost:8080/tux_coffee/pages/Home.jsp");
        }else{
            //response.sendRedirect("http://localhost:8080/tux_coffee/pages/login.jsp");
            out.println(pb.getNamaLengkap()+pb.getEmail()+pb.getNohp()+pb.getPassword());
        }
        out.close();
    }

 
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
