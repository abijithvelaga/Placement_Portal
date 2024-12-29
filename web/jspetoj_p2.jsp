<%-- 
    Document   : jspetoj
    Created on : 16 Oct, 2019, 12:02:11 AM
    Author     : Dell
--%>

<%@page import="java.util.Date"%>
<%@page import="com.codoid.products.fillo.Recordset"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%@page import="java.io.*"%>
        <%@page import="com.codoid.products.fillo.Fillo"%>
        <%@page import="com.codoid.products.fillo.Connection"%>
        <% 
            int f=0;
            
            out.println("<style>table,td { border: 1px solid black;border-collapse:collapse;}table{width:1000px;}td{text-align:center;}</style>");
          out.println("<table>");
          out.println("<tr><th>Company</th><th>Branch</th><th>Date</th><th>Timing</th>");
         
          
          String c=request.getParameter("company");
          String b=request.getParameter("branch"); 
           
          
          Fillo fillo=new Fillo();
          com.codoid.products.fillo.Connection connection=fillo.getConnection("C:\\Users\\ABHIJITH VELAGA\\Desktop\\tanvi\\Book2.xlsx");
          String strQuery="Select * from Sheet1";
          Recordset recordset=connection.executeQuery(strQuery);
          
          //checking the parameters
          while(recordset.next()){
           if ((recordset.getField("Company").equals(c)))
           {
        out.println("<tr>");
        out.println("<td>");
        out.print(recordset.getField("Company"));
        out.println("</td>");
            
            
            
        out.println("<td>");
        out.print(recordset.getField("Branch"));
        out.println("</td>");
            
        out.println("<td>");
        out.print(recordset.getField("Date"));
        out.println("</td>");
            
        out.println("<td>");
        out.print(recordset.getField("Timing"));
            out.println("</td>");
           }
            
        
    }
           
      // Get session creation time.
     
       /*     Date createTime = new Date(session.getCreationTime());
         
      // Get last access time of this web page.
      Date lastAccessTime = new Date(session.getLastAccessedTime());

      String title = "Welcome Back to my website";
      Integer visitCount = new Integer(1);
      String visitCountKey = new String("visitCount");
      String userIDKey = new String("userID");
      String userID = new String("ABCD");

      // Check if this is new comer on your web page.
      
      if (session.isNew()) {
         title = "Welcome to my website";
         session.setAttribute(userIDKey, userID);
      } else {
         visitCount = (Integer)session.getAttribute(visitCountKey);
         visitCount = visitCount + 1;
         userID = (String)session.getAttribute(userIDKey);
      }
      session.setAttribute(visitCountKey,  visitCount);

      // Set response content type
      response.setContentType("text/html");
      
      out.println("Session Information : "+session.getId());
      out.println("Page visit count : "+visitCount);*/


 
recordset.close();
connection.close();
            %>
    </body>
</html>
