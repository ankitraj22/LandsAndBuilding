<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page import="java.text.DateFormat" %>
          <%@page import="java.text.ParseException" %>
           <%@page import="java.text.SimpleDateFormat" %>
            <%@page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Land and Building</title>

    <!-- Bootstrap Core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="resources/css/blog-home.css" rel="stylesheet">


</head>

<body >

    <!-- Page Content -->
    <div class="container" >
      <jsp:include page="header.jsp"></jsp:include>
        <div class="row">
                <h2 class="page-header heading">
                     Application Receipt
                </h2>
              
                <div class="col-md-12 " >
               
                     <table border="2" align="center" width="50%">
					     
					      <tr><td>Application No</td><td>${candidate.cId}</td></tr>
					      <tr><td>Name </td><td>${candidate.fName}</td></tr>
					      <tr><td>DOB</td><td>
					     
					         <c:set var="dob" value="${candidate.dob}"/>
			        <%
			      
			       
			    	DateFormat parser=null,formatter=null;
			        String dob_date=null;
					 Date date=null;
					   parser = new SimpleDateFormat("yyyy/MM/dd"); 
				      
				        	
								 try
								  {
									date = (Date) parser.parse(pageContext.getAttribute("dob").toString());
								  } 
								 catch (ParseException e)
								  {
									
									System.out.println(e);
								  }
								formatter = new SimpleDateFormat("dd/MM/yyyy");
								dob_date=formatter.format(date);
								out.println(dob_date);
			        %>
					         </td></tr>
					      <tr><td>Mobile</td><td>${candidate.mob}</td></tr>
					   
					   </table>
			   <br/>
			   <br/>
			   <center><button onclick="myFunction()">Print</button></center>   
									 <br/>
						<%--  <a href="${pageContext.request.contextPath}/download/${candidate.cId}.html" target="_blank" class="action-button shadow animate red">Application Preview</a> --%> 
    
 <script>
function myFunction() {
    window.print();
}
</script>
                 
                </div>

        </div>
        <hr>

        <!-- Footer -->
        <jsp:include page="footer.jsp"></jsp:include>

    </div>
   
</body>
</html>