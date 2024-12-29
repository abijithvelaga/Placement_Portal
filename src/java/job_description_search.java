/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.codoid.products.exception.FilloException;
import com.codoid.products.fillo.Connection;
import com.codoid.products.fillo.Fillo;
import com.codoid.products.fillo.Recordset;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ABHIJITH VELAGA
 */
@WebServlet(urlPatterns = {"/job_description_search"})
public class job_description_search extends HttpServlet {

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
            String strQuery = "Select * from job_description";
            Recordset recordset = connection.executeQuery(strQuery);
             ArrayList<String> compname=new ArrayList<>();
        ArrayList<String> no_hires=new ArrayList<>();
        ArrayList<String> hiring_batch=new ArrayList<>();
        ArrayList<String> tar_degree=new ArrayList<>();
        ArrayList<String> ctc=new ArrayList<>();
        ArrayList<String> designation=new ArrayList<>();
        ArrayList<String> loc=new ArrayList<>();
        ArrayList<String> skills=new ArrayList<>();
        ArrayList<String> selection=new ArrayList<>();
        ArrayList<String> cut=new ArrayList<>();
        ArrayList<String> info=new ArrayList<>();
        int i=0;
        while(recordset.next())
        {
            compname.add(i, recordset.getField("Company Name"));
            no_hires.add(i, recordset.getField("No. of hires"));
            hiring_batch.add(i, recordset.getField("Hiring Batch"));
            tar_degree.add(i, recordset.getField("Target Degree and Branches"));
            ctc.add(i, recordset.getField("Offered CTC"));
            designation.add(i, recordset.getField("Designation")); 
            loc.add(i, recordset.getField("Joining Location"));
            skills.add(i, recordset.getField("Skills Expected"));
            selection.add(i, recordset.getField("Selection Process"));
            cut.add(i, recordset.getField("Cut-Off"));
            info.add(i, recordset.getField("Additional Information:"));
            i++;
        }
        String searchcomp=request.getParameter("search");
        ArrayList<String>result=new ArrayList<>();
        //out.println(recordset);
       //out.println(compname.get(0));
        for(int j=0;j<compname.size();j++)
        {
            
            if(compname.get(j).equals(searchcomp))
            {
                result.add(searchcomp);
                result.add(no_hires.get(j));
                result.add(hiring_batch.get(j));
                result.add(tar_degree.get(j));
                result.add(ctc.get(j));
                result.add(designation.get(j));
                result.add(loc.get(j));
                result.add(skills.get(j));
                result.add(selection.get(j));
                result.add(cut.get(j));
                result.add(info.get(j));
            }
                
        }
        //out.println(result);
        request.setAttribute("result", result);
       // out.println(result.get(0));
        
            request.getRequestDispatcher("job_description_search.jsp").forward(request, response);
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
            Logger.getLogger(job_description_search.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(job_description_search.class.getName()).log(Level.SEVERE, null, ex);
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
