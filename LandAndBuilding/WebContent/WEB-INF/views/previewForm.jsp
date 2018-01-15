<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        
                    <h2 class="text-center text-primary">  <u>Form Preview</u></h2>
            
   <div class="col-md-6 col-md-offset-3">
           
     <a:form action="save.html" modelAttribute="command"  method="post">
      <%-- <input type="hidden" name="candidate" value="${candidate}"/> --%>
		<table class="table table-bordered" style="float:right;">
		  <tbody>
			   <% String src = (String)session.getAttribute("src"); 
			   %>
			   
			   <tr>
			      <th>Uploaded Picture.</th>
			      <td> <div id="imagePreview1"><img alt="profile pic" height="160px" src="<%=src%>"/> </div></td>
			    </tr>
			   
			    <tr>
			      <th>Application No.</th>
			      <td>${candidate.cId}</td>
			    </tr>
			    
			    <tr>
			      <th>Candidate's Name</th>
			      <td>${candidate.fName} ${candidate.mName} ${candidate.lName}</td>
			    </tr>
			    
			     <tr>
			      <th>DOB</th>
			      <td>
			      <c:set var="dob" value="${candidate.dob}"/>
			      <c:if test="${not empty dob}">
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
			        </c:if>
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
		   <input  type="button" value="Modify" class="btn  btn-warning pull-left" onclick="window.history.back();"> 
		   <input  type="submit" value="Submit" class="btn  btn-success pull-right"  onclick="return confirm('Are you sure as No change/edit of application will be allowed after submit/आप यकीन है कि के रूप में कोई परिवर्तन / आवेदन के संपादित की अनुमति होगी के बाद प्रस्तुत कर रहे हैं')">  
		</a:form>
   </div>
 </div>  
  
   </div>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>