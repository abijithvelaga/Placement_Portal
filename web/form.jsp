<%-- 
    Document   : form
    Created on : 14 Oct, 2019, 11:10:37 PM
    Author     : Dell
--%>

<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.FileWriter"%>
<%@page import="com.codoid.products.fillo.Connection"%>
<%@page import="com.codoid.products.fillo.Connection"%>
<%@page import="com.codoid.products.fillo.Connection"%>
<%@page import="com.codoid.products.fillo.Connection"%>
<%@page import="com.codoid.products.fillo.Connection"%>
<%@page import="com.codoid.products.fillo.Connection"%>
<%@page import="com.codoid.products.fillo.Fillo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.beans.*" %>
<%@page import="bean.*" %>
<jsp:useBean id="bean" class="bean.sourceBean" type="sourceBean" />
<jsp:setProperty name="bean" property="*" />
<%  

    out.println("Name :" +bean.getName()+"<br><br>");
    out.println("Branch :" +bean.getBranch()+"<br><br>");
    out.println("Company Name :" +bean.getCompany()+"<br><br>");
    out.println("Aptitude :" +bean.getAptitude()+"<br><br>");
    out.println("Mostly asked aptitude :"+bean.getMostAptitude()+"<br><br>"); 
    out.println("Verbal :" + bean.getVerbal()+ "<br><br>");
    out.println("Mostly asked verbal :" + bean.getMostVerbal()+ "<br><br>");
    out.println("Coding :" + bean.getCoding()+ "<br><br>");
    out.println("Mostly asked Coding :" + bean.getMostCoding()+ "<br><br>");
    out.println("Number of interview rounds :" + bean.getInterviewRounds()+ "<br><br>");
    out.println("Mostly asked topics :" + bean.getInterview()+ "<br><br>");
    out.println("Difficulty :" + bean.Difficulty()+ "<br><br>");
   
            Fillo fillo=new Fillo();
           Connection conn=fillo.getConnection("C:\\Users\\ABHIJITH VELAGA\\Desktop\\tanvi\\Book1.xlsx");
           String strQuery = "INSERT INTO Sheet1(Name,Branch,Company, Aptitude, MostAptitude, Verbal, MostVerbal,Coding,MostCoding, InterviewRounds,MostAskedInterviews, Difficulty ) VALUES('"+bean.getName()+"','"+bean.getBranch()+"','"+bean.getCompany()+"','"+bean.getAptitude()+"','"+bean.getMostAptitude()+"','"+bean.getVerbal()+"','"+bean.getMostVerbal()+"','"+bean.getCoding()+"','"+bean.getMostCoding()+"','"+bean.getInterviewRounds()+"','"+bean.Difficulty()+"')";
           conn.executeUpdate(strQuery);
           conn.close();
        Cookie cks=new Cookie("Company",bean.getCompany());//creating cookie object 
            response.addCookie(cks);
            Cookie cks1=new Cookie("Name",bean.getName());//creating cookie object 
            response.addCookie(cks1);
            Cookie cks2=new Cookie("Branch",bean.getBranch());//creating cookie object 
            response.addCookie(cks2);
             
           
        
       
        out.print("<br>Your data is stored in the form of cookies for better access and experience....</br>");
        Cookie ck[]=request.getCookies();  
    for(int i=0;i<ck.length;i++){  
     out.print("<br>Name--    "+ck[i].getName()+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cookie value-- "+ck[i].getValue());//printing name and value of cookie  
    }  
        //text file append
        FileWriter fw = null;
  PrintWriter pw = null;
    
        fw = new FileWriter("C:\\Users\\ABHIJITH VELAGA\\Desktop\\tanvi\\append.txt",true);
        pw = new PrintWriter(fw);
        String data=bean.getName()+" "+bean.getBranch()+" " + bean.getCompany()+"\n ";
    pw.println(data);
    
        pw.close();
        fw.close();
 
%>   