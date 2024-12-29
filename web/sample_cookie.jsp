<%-- 
    Document   : sample_cookie
    Created on : Oct 16, 2019, 2:02:15 AM
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
        <%
        Cookie ck[]=request.getCookies();
          if(ck[0].getName().equals("emailid"))
         
          {    ck[0].setValue("deenu.vengatesh999@gmail.com");}
         
          else{
             
              Cookie ck1=new Cookie("emailid","deenu.vengatesh999@gmail.com");
              response.addCookie(ck1);
          }
       
               %>
             
         <h1> <%=ck[0].getName()%></h1><br>
        <h1> <%=ck[0].getValue()%></h1> 
    </body>
</html>
