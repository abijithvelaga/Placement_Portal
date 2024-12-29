<%-- 
    Document   : placement_registration_jsp
    Created on : Oct 13, 2019, 7:16:17 PM
    Author     : ABHIJITH VELAGA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import= "com.codoid.products.fillo.*" %>
        <% System.setProperty("ROW", "1");//Table start row
           System.setProperty("COLUMN", "1");//Table start column
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
           Fillo fillo=new Fillo();
           Connection connection=fillo.getConnection("C:\\Users\\ABHIJITH VELAGA\\Desktop\\placement_portal.xlsx");//<--Your file Here!
           String strQuery = "INSERT INTO placement_registration(first_name,middle_name,last_name,father_name,mother_name,current_address,permanent_address,home_phone,mobile_number,dob,place_of_birth,gender,highest_qualification,year_of_passing,English,Hindi,city,adhar_number,pan_number,graduate_qualification,graduate_university,graduate_year_of_passing,graduate_marks,state_qualification,state_university,state_year_of_passing,state_marks,email,alternate_email,resume,photo,break,scholarship,languages_known,backlog) VALUES('"+fname+"','"+mname+"','"+lname+"','"+faname+"','"+maname+"','"+caddress+"','"+paddress+"','"+hphone+"','"+mnumber+"','"+dob+"','"+pob+"','"+gender+"','"+hqualify+"','"+yop+"','"+english+"','"+hindi+"','"+city+"','"+acnumber+"','"+pcnumber+"','"+graduatequalification+"','"+graduateuniversity+"','"+graduateop+"','"+graduatemarks+"','"+statequalification+"','"+stateuniversity+"','"+stateop+"','"+statemarks+"','"+email+"','"+aemail+"','"+resume+"','"+photo+"','"+stbreak+"','"+scholar+"','"+java+"','"+log+"')";
           connection.executeUpdate(strQuery);
           connection.close();
           Cookie ck[]=request.getCookies();
          if(ck[0].getName().equals("emailid"))
         
          {    ck[0].setValue(email);}
         
          else{
             
              Cookie ck1=new Cookie("emailid",email);
              response.addCookie(ck1);
          }
        %>
        <% response.sendRedirect("login.html");%>
        done!
    </body>
</html>
