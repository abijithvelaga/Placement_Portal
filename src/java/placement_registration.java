/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ABHIJITH VELAGA
 */
@WebServlet(urlPatterns = {"/placement_registration"})
public class placement_registration extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet placement_registration</title>");            
            out.println("</head>");
            out.println("<body>");
           // out.println("<h1>Servlet placement_registration at " + request.getContextPath() + "</h1>");
            String fname=request.getParameter("fname");
            String mname=request.getParameter("mname");
            String lname=request.getParameter("lname");
            String faname=request.getParameter("faname");
            String maname=request.getParameter("maname");
            String caddress=request.getParameter("caddress");
            String paddress=request.getParameter("paddress");
            String hphone=request.getParameter("hphone");
            String mnumber=request.getParameter("mnumber");
            String dob=request.getParameter("dob");
            String pob=request.getParameter("pob");
            String gender=request.getParameter("gender");
            String hqualify=request.getParameter("hqualify");
            String yop=request.getParameter("yop");
            String english=request.getParameter("english");
            String hindi=request.getParameter("hindi");
            String city=request.getParameter("city");
            String acnumber=request.getParameter("acnumber");
            String pcnumber=request.getParameter("pcnumber");
            String graduatequalification=request.getParameter("graduatequalification");
            String graduateuniversity=request.getParameter("graduateuniversity");
            String graduateop=request.getParameter("graduateop");
            String graduatemarks=request.getParameter("graduatemarks");
            String statequalification=request.getParameter("statequalification");
            String stateuniversity=request.getParameter("stateuniversity");
            String stateop=request.getParameter("stateop");
            String statemarks=request.getParameter("statemarks");
            String email=request.getParameter("email");
            String aemail=request.getParameter("aemail");
            String resume=request.getParameter("resume");
            String photo=request.getParameter("photo");
            String stbreak=request.getParameter("stbreak");
            String scholar=request.getParameter("scholar");
            String java=request.getParameter("java");
            String log=request.getParameter("log");
            out.println("</body>");
            out.println("</html>");
        }
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
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
