<%-- 
    Document   : login_bean
    Created on : Oct 15, 2019, 7:46:00 PM
    Author     : ABHIJITH VELAGA
--%>

<%@page import="java.util.ArrayList"%>
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
        <!--class="bean.login"-->
        <jsp:useBean id="login_bean" class="bean.login" type="login" />
        <jsp:setProperty name="login_bean" property="*" />
        <%
            Fillo fillo=new Fillo();
             Connection connection=fillo.getConnection("C:\\\\Users\\\\ABHIJITH VELAGA\\\\Desktop\\\\placement_portal.xlsx");
            String strQuery = "Select * from login_details";
            Recordset recordset = connection.executeQuery(strQuery);
            ArrayList<String> user=new ArrayList<String>();
            ArrayList<String> pass=new ArrayList<String>();
            int i=0;
            while(recordset.next()){
            user.add(i, recordset.getField("username"));
            pass.add(i, recordset.getField("password"));
           i++;
           }
            String u=login_bean.getUsername();//request.getParameter("username").toString();
            
            String p=login_bean.getPass();//request.getParameter("pass").toString();
            int f=0;
            for(int j=0;j<user.size();j++)
            {
               if(user.get(j).contentEquals(u))
               {
                   if(pass.get(j).contentEquals(p))
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
               response.sendRedirect("homepage.html");
           }
            
            %>
    </body>
</html>
