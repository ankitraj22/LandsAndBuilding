<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
          <%@taglib uri="http://www.springframework.org/tags/form" prefix="a"%>
      
          <%@page import="java.text.DateFormat" %>
          <%@page import="java.text.ParseException" %>
           <%@page import="java.text.SimpleDateFormat" %>
            <%@page import="java.util.Date" %>
            
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>${candidate.cId}</title>
 <%--   <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet"> --%>
 
  <link href="resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="resources/css/blog-home.css" rel="stylesheet">
    <script type="text/javascript">window.history.forward();function noBack(){window.history.forward();}</script>
    
</head>
<body onLoad="noBack();" onpageshow="if (event.persisted) noBack();" onUnload="">
<div class="container" >
  <jsp:include page="header.jsp"></jsp:include>

<br/>
  <div class="col-md-12">
        
                    <h2 class="text-center text-primary">  <u>Candidate Information</u></h2>
            
   <div class="col-md-6 col-md-offset-3">
          
     <a:form action="save.html" modelAttribute="command"  method="post">
      <%-- <input type="hidden" name="candidate" value="${candidate}"/> --%>
      <c:set value="w" var="y" scope="request"></c:set>
		<table class="table table-bordered" style="float:right;">
		  <tbody>
			   
			    <tr>
			      <th>Application No.</th>
			      <td>${candidate.cId}</td>
			    </tr>
			    
			    <tr>
			      <th>Candidate's Name</th>
			      <td>${candidate.fName} ${candidate.mName} ${candidate.lName}</td>
			    </tr>
			    
			     <tr>
			      <th>DOB ${candidate.dob}</th>
			      <td>
			      <c:set var="dob" value="${candidate.dob}"/>
			        <%
			      
			       
			   	DateFormat parser=null,formatter=null;
			        String dob_date=null;
					 Date date=null;
					   parser = new SimpleDateFormat("yyyy-MM-dd"); 
				      
				        	
								 try
								  {
									date = (Date) parser.parse(pageContext.getAttribute("dob").toString());
								  } 
								 catch (ParseException e)
								  {
									
									System.out.println(e);
								  }
								formatter = new SimpleDateFormat("dd-MM-yyyy");
								dob_date=formatter.format(date);
								out.println(dob_date); 
			        %>
			      </td>
			    </tr>
			    
			     <tr>
			      <th>Email-ID</th>
			      <td>${candidate.email}</td>
			    </tr>
			    
			     <tr>
			      <th>Mobile</th>
			      <td>${candidate.mob}</td>
			    </tr>
			    
			     <tr>
			      <th>Permanent Address</th>
			      <td>${candidate.paddress} ${candidate.pPin}</td>
			    </tr>
			    
			    <tr>
			      <th>Correspondence Address</th>
			      <td>${candidate.caddress} ${candidate.cPin}</td>
			    </tr>
			    
			    <tr>
			      <th>Educational Qualifications</th>
			      <td>${candidate.eQualification} </td>
			    </tr>
			    
			    <tr>
			      <th>Field of specialization</th>
			      <td>${candidate.specialization} </td>
			    </tr>
			    
			    <tr>
			      <th>Present business/Service</th>
			      <td>${candidate.business_service} </td>
			    </tr>
			    
			    <tr>
			      <th>Achievements</th>
			      <td>${candidate.achievements} </td>
			    </tr>
			    
			    <tr>
			      <th>Work Experience</th>
			      <td>${candidate.workExperience} Years</td>
			    </tr>
		  </tbody>
		</table>
		     
		</a:form>
   </div>
 </div>  
  
   </div>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>