
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Land And Building</title>

     <!-- Bootstrap Core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="resources/css/blog-home.css" rel="stylesheet">
    
    <link rel="stylesheet" type="text/css" href="resources/js/3.css">
     <script type="text/javascript" src="resources/js/jquery-1.10.2.min.js"></script>
    <script src="resources/js/jquery-ui.js"></script>
     
     <script type="text/javascript" src="resources/js/main.js"></script>
     
</head>

<body >

    <!-- Page Content -->
    
<div class="container" >
      <jsp:include page="header.jsp"></jsp:include>
      
        <div class="row">
            <br/><br/>
            <div class="col-md-6 " ><br/>
               	  	 <div class="container">
					    <div class="row">
					        <div class="col-sm-6 col-md-4 col-md-offset-4">
					            <div class="account-wall">
					                <form class="form-signin" action="candidatelogin.html" method="post">
					                 ${msg}
					                <input type="text" class="form-control" name="cid" placeholder="Application Number" required autofocus> <br/>
					                <input type="text" placeholder="DOB" class="form-control" id="datepicker"  name="dob"  readonly/><br/>
					                <button class="btn btn-lg btn-success btn-block" type="submit">Sign in</button>
					                <a href="index.html" class="btn btn-lg btn-primary btn-block" >Back</a>
					                </form>
					            </div>
					        </div>
					    </div>
					</div>
             </div>
             
        </div>
        <!-- /.row -->

<br/>

        <!-- Footer -->
                 <footer>
            <div class="row">
                <div class="col-lg-12"><br/><br/><br/>
                  <p class="text-center">Developed and designed by DeGs</p>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </footer>

    </div>
    <!-- /.container -->
    
    
<!-- In contr 	//login
	@RequestMapping("login")
    public String login() { 
		
		return ("login");
	} -->


</body>
</html>