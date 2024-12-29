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
@WebServlet(urlPatterns = {"/placement_records"})
public class placement_records extends HttpServlet {

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
            String strQuery = "Select * from placement_record";
            Recordset recordset = connection.executeQuery(strQuery);
             while(recordset.next()){
        ArrayList<String> dataColl=recordset.getFieldNames();
        //System.out.println(dataColl);
        Iterator<String> dataIterator=dataColl.iterator();
        //System.out.println(dataColl.size()); 
        ArrayList<String> year=new ArrayList<>();
        ArrayList<String> registered=new ArrayList<>();
        ArrayList<String> placed=new ArrayList<>();
        ArrayList<String> percentage=new ArrayList<>();
        ArrayList<String> compaines=new ArrayList<>();
        ArrayList<String> averagesalary=new ArrayList<>();
        int i=0;
        while(recordset.next()){
           year.add(i, recordset.getField("year"));
           registered.add(i, recordset.getField("students_registered"));
           placed.add(i, recordset.getField("students_placed"));
           percentage.add(i, recordset.getField("percentage"));
           compaines.add(i, recordset.getField("compaines"));
           averagesalary.add(i, recordset.getField("average_salary"));
          // System.out.println(recordset.getField("year"));
           i++;
        }
        request.setAttribute("year", year);
        request.setAttribute("registered", registered);
        request.setAttribute("placed", placed);
        request.setAttribute("percentage", percentage);
        request.setAttribute("compaines", compaines);
        request.setAttribute("salary", averagesalary);
        request.getRequestDispatcher("placement_records.jsp").forward(request, response);
       //out.println(year.size());
        /*for(int z=0;z<year.size();z++){
            out.println(z);
            out.println(year.get(z));
           /* out.println(registered.get(z));
            out.println(placed.get(z));
            out.println(percentage.get(z));
            out.println(compaines.get(z));
            out.println(averagesalary.get(z));
            
        } */
            
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
            Logger.getLogger(placement_records.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(placement_records.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    

}
