<%-- 
    Document   : placement_registration_bean
    Created on : Oct 15, 2019, 5:41:01 PM
    Author     : ABHIJITH VELAGA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.beans.*" %>
<%@page import="bean.*" %>
<%@page import= "com.codoid.products.fillo.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="bean" class="bean.placement_registration" type="placement_registration" />
        <jsp:setProperty name="bean" property="*" />
        <% System.setProperty("ROW", "1");//Table start row
           System.setProperty("COLUMN", "1");//Table start column
           Fillo fillo=new Fillo();
           Connection connection=fillo.getConnection("C:\\Users\\ABHIJITH VELAGA\\Desktop\\placement_portal.xlsx");//<--Your file Here!
           String strQuery = "INSERT INTO placement_registration(first_name,middle_name,last_name,father_name,mother_name,current_address,permanent_address,home_phone,mobile_number,dob,place_of_birth,gender,highest_qualification,year_of_passing,English,Hindi,city,adhar_number,pan_number,graduate_qualification,graduate_university,graduate_year_of_passing,graduate_marks,state_qualification,state_university,state_year_of_passing,state_marks,email,alternate_email,resume,photo,break,scholarship,languages_known,backlog) VALUES('"+bean.getFname()+"','"+bean.getMname()+"','"+bean.getLname()+"','"+bean.getFaname()+"','"+bean.getManame()+"','"+bean.getCaddress()+"','"+bean.getPaddress()+"','"+bean.getHphone()+"','"+bean.getMnumber()+"','"+bean.getDob()+"','"+bean.getPob()+"','"+bean.getGender()+"','"+bean.getHqualify()+"','"+bean.getYop()+"','"+bean.getEnglish()+"','"+bean.getHindi()+"','"+bean.getCity()+"','"+bean.getAcnumber()+"','"+bean.getPcnumber()+"','"+bean.getGraduatequalification()+"','"+bean.getGraduateuniversity()+"','"+bean.getGraduateop()+"','"+bean.getGraduatemarks()+"','"+bean.getStatequalification()+"','"+bean.getStateuniversity()+"','"+bean.getStateop()+"','"+bean.getStatemarks()+"','"+bean.getEmail()+"','"+bean.getAemail()+"','"+bean.getResume()+"','"+bean.getPhoto()+"','"+bean.getStbreak()+"','"+bean.getScholar()+"','"+bean.getJava()+"','"+bean.getLog()+"')";
           connection.executeUpdate(strQuery);
           connection.close();
           Cookie ck[]=request.getCookies();
          if(ck[0].getName().equals("emailid"))
         
          {    ck[0].setValue(bean.getEmail());}
         
          else{
             
              Cookie ck1=new Cookie("emailid",bean.getEmail());
              response.addCookie(ck1);
          }
        %>
           <% response.sendRedirect("login.html");%>
    </body>
</html>
