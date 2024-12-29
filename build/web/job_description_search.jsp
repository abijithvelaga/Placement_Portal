<%-- 
    Document   : job_description_search
    Created on : Oct 15, 2019, 8:51:05 PM
    Author     : ABHIJITH VELAGA
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/javascript" href="C:/Users/ABHIJITH VELAGA/Desktop/ncp 2020/pro1.js">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <style>
            body{
                background-color: #659DBD;
            }
            table{
                border-collapse: collapse;
                width:50%;
                margin-left:500px;
                margin-top: 100px;
                margin-bottom:100px;
                padding-left: 100px;
            }
            table,th,td{
 
            text-align: center;
            padding: 10px;
            font-size: 25px;
          }
          tr:nth-child(even) {background-color: lightgrey;}
          th{
            background-color: #fbeec1;
            color: #3a3d3c;
             height: 50px;
             border:1px solid black;

          }

          tr:hover {background-color: #C0C0C0;}

        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
             ArrayList<String> result =  (ArrayList<String>)request.getAttribute("result");
             
        %>
        <h1 align="center">Job Description</h1>
        <table>
         <tr>
             <th>Company Name</th>
             <td><%=result.get(0)%></td>
         </tr>
         <tr>
             <th>Number Of Hires</th>
             <td><%=result.get(1)%></td>
         </tr>
         <tr>
             <th>Hiring Batch</th>
             <td><%=result.get(2)%></td>
         </tr>
         <tr>
             <th>Target Batch</th>
             <td><%=result.get(3)%></td>
         </tr>
         <tr>
             <th>Offered CTC</th>
             <td><%=result.get(4)%></td>
         </tr>
         <tr>
             <th>Designation</th>
             <td><%=result.get(5)%></td>
         </tr>
          <tr>
             <th>Joining Location</th>
             <td><%=result.get(6)%></td>
         </tr>
          <tr>
             <th>Skills Excepted</th>
             <td><%=result.get(7)%></td>
         </tr>
         <tr>
             <th>Selection Process</th>
             <td><%=result.get(8)%></td>
         </tr>
          <tr>
             <th>Cut Off</th>
             <td><%=result.get(9)%></td>
         </tr>
          <tr>
             <th>Additional Information</th>
             <td><%=result.get(10)%></td>
         </tr>
             </table>
    </body>
</html>
