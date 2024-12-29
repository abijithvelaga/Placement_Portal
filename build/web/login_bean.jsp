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
<%@ page import="javax.servlet.http.Cookie" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Login Page</title>
    </head>
    <body>
        <jsp:useBean id="login_bean" class="bean.login" type="login" />
        <jsp:setProperty name="login_bean" property="*" />
        <%Fillo fillo=new Fillo();
             Connection connection=fillo.getConnection("C:\\\\Users\\\\ABHIJITH VELAGA\\\\Desktop\\\\placement_portal.xlsx");
            String strQuery = "Select * from login_details";
            Recordset recordset = connection.executeQuery(strQuery);
            ArrayList<String> user=new ArrayList<>();
            ArrayList<String> pass=new ArrayList<>();
            int i=0;
            while(recordset.next()){
            user.add(i, recordset.getField("username"));
            pass.add(i, recordset.getField("password"));
           i++;
           }
            String u=login_bean.getUsername();
            String p=login_bean.getPass();
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
            Cookie ck[]=request.getCookies();
          if(ck[0].getName().equals("emailid"))
         
          {    ck[0].setValue(login_bean.getUsername());}
         
          else{
             
              Cookie ck1=new Cookie("emailid",login_bean.getPass());
              response.addCookie(ck1);
          }
          out.print("<br>You have entered....</br>");
        //Cookie ck[]=request.getCookies();  
        int k=0;
            for(k=0;k<ck.length;k++){  
            out.print(ck[k].getName());
            out.print(ck[k].getValue());
        //out.print("<br>   "+ck[p].getName()+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cookie value-- "+ck[p].getValue());//printing name and value of cookie  
        }  
            
           if(f==0)
           {
               response.sendRedirect("login.html");
           }
           else {
               response.sendRedirect("contactus.html");
           }
            
            %>
    </body>
</html>
