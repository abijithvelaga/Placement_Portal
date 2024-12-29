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


import com.codoid.products.exception.FilloException;
import com.codoid.products.fillo.Connection;
import com.codoid.products.fillo.Fillo;
import com.codoid.products.fillo.Recordset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ABHIJITH VELAGA
 */
@WebServlet(urlPatterns = {"/loginServlet"})
public class loginServlet extends HttpServlet {

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
            throws ServletException, IOException, FilloException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            Fillo fillo=new Fillo();
             Connection connection=fillo.getConnection("C:\\\\Users\\\\ABHIJITH VELAGA\\\\Desktop\\\\placement_portal.xlsx");
            String strQuery = "Select * from login_details";
            Recordset recordset = connection.executeQuery(strQuery);
             //while(recordset.next()){
        ArrayList<String> user=new ArrayList<>();
        ArrayList<String> pass=new ArrayList<>();
        
        int i=0;
        while(recordset.next()){
           user.add(i, recordset.getField("username"));
           pass.add(i, recordset.getField("password"));
          
          // System.out.println(recordset.getField("year"));
           i++;
        }
           //  }
           out.println(user.size());
           //out.println(pass);
           String u=request.getParameter("username");
           String p=request.getParameter("pass");
           //out.println(u);
           //out.println(p);
           int f=0;
           for(int j=0;j<user.size();j++)
           {
               if(user.get(j).equals(u))
               {
                   if(pass.get(j).equals(p))
                   {
                       //redirect to homepage
                       f++;
                      // response.sendRedirect("index.html");
                       break;
                   }
                  
                }
           }
           if(f==0)
           {
               response.sendRedirect("login.html");
           }
           else {
               response.sendRedirect("contactus.html");
           }
           
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
        try {
            processRequest(request, response);
        } catch (FilloException ex) {
            Logger.getLogger(loginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (FilloException ex) {
            Logger.getLogger(loginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
