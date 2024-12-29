<%-- 
    Document   : placement_records
    Created on : Oct 13, 2019, 10:37:33 PM
    Author     : ABHIJITH VELAGA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "java.util.ArrayList" %>
<%@page import= "java.util.List" %>

<!DOCTYPE html>
<html>
    <title>Placement Records</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>
  body {
      position: relative; 
      background-color: lightgray;
      color: black;
    font-family: "Comic Sans MS",sans-serif;
  }
  table,td{
      border: 3px solid black;
      border-collapse: collapse;
      padding: 15px;
      color:#DEF5F2;
    }
    table{
      width: 80%;
    }
    .required{
      color: red;
    }
  #section1 {padding-top:50px;height:500px; background-color: #416660}
  #section2 {padding-top:50px;height:500px; background-color: #523a39}
  #section3 {padding-top:50px;height:500px; background-color: #898a71}
  #section4 {padding-top:50px;height:500px; background-color: #20213d }
  #section5 {padding-top:50px;height:500px; background-color: #412745}
  #section6 {padding-top:50px;height:500px; background-color: #4d292d}
  #section7 {padding-top:50px;height:500px; background-color: #355759}
  #section8 {padding-top:50px;height:500px; background-color: #48614e}
  #section9 {padding-top:50px;height:500px; background-color: #612d11}
  </style>
    
        <body data-spy="scroll" data-target=".navbar" data-offset="50">
           
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Placement Records</a>
    </div>
    <div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav">
          <li><a href="#section1">2020-2019</a></li>
          <li><a href="#section2">2019-2018</a></li>
          <li><a href="#section3">2018-2017</a></li>
          <li><a href="#section4">2017-2016</a></li>
          <li><a href="#section5">2016-2015</a></li>
          <li><a href="#section6">2015-2014</a></li>
          <li><a href="#section7">2014-2013</a></li>
          <li><a href="#section8">2013-2012</a></li>
          <li><a href="#section9">2012-2011</a></li>
        </ul>
      </div>
    </div>
  </div>
</nav>    

            <%
                ArrayList<String> year =  (ArrayList<String>)request.getAttribute("year"); 
                ArrayList<String> registered =  (ArrayList<String>)request.getAttribute("registered"); 
                ArrayList<String> placed =  (ArrayList<String>)request.getAttribute("placed"); 
                ArrayList<String> percentage =  (ArrayList<String>)request.getAttribute("percentage"); 
                ArrayList<String> compaines =  (ArrayList<String>)request.getAttribute("compaines"); 
                ArrayList<String> salary =  (ArrayList<String>)request.getAttribute("salary"); 
            for(int j=0;j<1;j++){%> 
            
<div id="section1" class="container-fluid">
  <!-- table1-->
  <h3>Year : 2020-2019</h3>
  <table cellpadding="10" cellspacing="1" width="100%">
            <tr>
                <td>Total No of Students Registered for Placement</td>
                <td><%=registered.get(0)%></td>
            </tr>
            <tr>
                <td>Total No of Students Got Placed</td>
                <td><%=placed.get(0)%><span class="required">*</span></td>
            </tr>
            <tr>
                <td>% of Students Placed</td>
                <td><%=percentage.get(0)%></td>
            </tr>
            <tr>
            <td>Noteworthy Companies</td>
            <td><%=compaines.get(0)%></td>
            </tr>
            <tr>
                <td>Average Salary</td>
                <td><%=salary.get(0)%></td>
            </tr>
            
  </table>
            <h4><span class="required">*</span> Recruitment continues...</h4>
</div>

<div id="section2" class="container-fluid">
  <!-- table2-->
  <h3>Year : 2019-2018</h3>
  <table cellpadding="10px" cellspacing="5px">
            <tr>
                <td>Total No of Students Registered for Placement</td>
                <td><%=registered.get(1)%></td>
            </tr>
            <tr>
                <td>Total No of Students Got Placed</td>
                <td><%=placed.get(1)%></td>
            </tr>
            <tr>
                <td>% of Students Placed</td>
                <td><%=percentage.get(1)%></td>
            </tr>
            <tr>
            <td>Noteworthy Companies</td>
            <td><%=compaines.get(1)%></td>
            </tr>
            <tr>
                <td>Average Salary</td>
                <td><%=salary.get(1)%></td>
            </tr>
  </table>
</div>


<div id="section3" class="container-fluid">
  <h3>Year : 2018-2017</h3>
  <table cellpadding="10px" cellspacing="5px">
            <tr>
                <td>Total No of Students Registered for Placement</td>
                <td><%=registered.get(2)%></td>
            </tr>
            <tr>
                <td>Total No of Students Got Placed</td>
                <td><%=placed.get(2)%></td>
            </tr>
            <tr>
                <td>% of Students Placed</td>
                <td><%=percentage.get(2)%></td>
            </tr>
            <tr>
            <td>Noteworthy Companies</td>
            <td><%=compaines.get(2)%></td>
            </tr>
            <tr>
                <td>Average Salary</td>
                <td><%=salary.get(2)%></td>
            </tr>
  </table>
</div>

<div id="section4" class="container-fluid">
  <h3>Year : 2017-2016</h3>
  <table cellpadding="10px" cellspacing="5px">
            <tr>
                <td>Total No of Students Registered for Placement</td>
                <td><%=registered.get(3)%></td>
            </tr>
            <tr>
                <td>Total No of Students Got Placed</td>
                <td><%=placed.get(3)%></td>
            </tr>
            <tr>
                <td>% of Students Placed</td>
                <td><%=percentage.get(3)%></td>
            </tr>
            <tr>
            <td>Noteworthy Companies</td>
            <td><%=compaines.get(3)%></td>
            </tr>
            <tr>
                <td>Average Salary</td>
                <td><%=salary.get(3)%></td>
            </tr>
  </table>
</div>

<div id="section5" class="container-fluid">
  <h3>Year : 2016-2015</h3>
  <table cellpadding="10px" cellspacing="5px"> 
            <tr>
                <td>Total No of Students Registered for Placement</td>
                <td><%=registered.get(4)%></td>
            </tr>
            <tr>
                <td>Total No of Students Got Placed</td>
                <td><%=placed.get(4)%></td>
            </tr>
            <tr>
                <td>% of Students Placed</td>
                <td><%=percentage.get(4)%></td>
            </tr>
            <tr>
            <td>Noteworthy Companies</td>
            <td><%=compaines.get(4)%></td>
            </tr>
            <tr>
                <td>Average Salary</td>
                <td><%=salary.get(4)%></td>
            </tr>
  </table>
</div>

<div id="section6" class="container-fluid">
  <!-- table6-->
  <h3>Year : 2015-2014</h3>
  <table cellpadding="10px" cellspacing="5px">
            <tr>
                <td>Total No of Students Registered for Placement</td>
                <td><%=registered.get(5)%></td>
            </tr>
            <tr>
                <td>Total No of Students Got Placed</td>
                <td><%=placed.get(5)%></td>
            </tr>
            <tr>
                <td>% of Students Placed</td>
                <td><%=percentage.get(5)%></td>
            </tr>
            <tr>
            <td>Noteworthy Companies</td>
            <td><%=compaines.get(5)%></td>
            </tr>
            <tr>
                <td>Average Salary</td>
                <td><%=salary.get(5)%></td>
            </tr>
  </table>
</div>

<div id="section7" class="container-fluid">

  <!-- table7-->
  <h3>Year : 2014-2013</h3>
  <table cellpadding="10px" cellspacing="5px"> 
            <tr>
                <td>Total No of Students Registered for Placement</td>
                <td><%=registered.get(6)%></td>
            </tr>
            <tr>
                <td>Total No of Students Got Placed</td>
                <td><%=placed.get(6)%></td>
            </tr>
            <tr>
                <td>% of Students Placed</td>
                <td><%=percentage.get(6)%></td>
            </tr>
            <tr>
            <td>Noteworthy Companies</td>
            <td><%=compaines.get(6)%></td>
            </tr>
            <tr>
                <td>Average Salary</td>
                <td><%=salary.get(6)%></td>
            </tr>
  </table>  
</div>

<div id="section8" class="container-fluid">
  <!-- table8-->
  <h3>Year : 2013-2012</h3>
  <table cellpadding="10px" cellspacing="5px">
            <tr>
                <td>Total No of Students Registered for Placement</td>
                <td><%=registered.get(7)%></td>
            </tr>
            <tr>
                <td>Total No of Students Got Placed</td>
                <td><%=placed.get(7)%></td>
            </tr>
            <tr>
                <td>% of Students Placed</td>
                <td><%=percentage.get(7)%></td>
            </tr>
            <tr>
            <td>Noteworthy Companies</td>
            <td><%=compaines.get(7)%></td>
            </tr>
            <tr>
                <td>Average Salary</td>
                <td><%=salary.get(7)%></td>
            </tr>
  </table>
</div>

<div id="section9" class="container-fluid">
  <!-- table9-->
  <h3>Year : 2012-2011</h3>
  <table cellpadding="10px" cellspacing="5px">
            <tr>
                <td>Total No of Students Registered for Placement</td>
                <td><%=registered.get(8)%></td>
            </tr>
            <tr>
                <td>Total No of Students Got Placed</td>
                <td><%=placed.get(8)%></td>
            </tr>
            <tr>
                <td>% of Students Placed</td>
                <td><%=percentage.get(8)%></td>
            </tr>
            <tr>
            <td>Noteworthy Companies</td>
            <td><%=compaines.get(8)%></td>
            </tr>
            <tr>
                <td>Average Salary</td>
                <td><%=salary.get(8)%></td>
            </tr>
  </table>
</div>
            <%}%>
</body>
</html>
