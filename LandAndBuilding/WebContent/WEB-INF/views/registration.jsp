<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@taglib uri="http://www.springframework.org/tags/form" prefix="a"%>
     
<!DOCTYPE html>
<html>
<head>

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Land And Building</title>

    <!-- Bootstrap Core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="resources/css/blog-home.css" rel="stylesheet">
    <script type="text/javascript" src="resources/js/1.js"></script>
    <script type="text/javascript" src="resources/js/2.js"></script>
    <link rel="stylesheet" type="text/css" href="resources/js/3.css">
     <script type="text/javascript" src="resources/js/jquery-1.10.2.min.js"></script>
    <script src="resources/js/jquery-ui.js"></script>
  
  
     <script src="resources/js/jquery.validate.min.js"></script>
     <script type="text/javascript" src="resources/js/main.js"></script>


<script>
	function disable(){
		document.getElementById("declarationcheck").checked = false;
		$('#relativeName').val('');
		$('#age').val('');
		$('#residence').val('');
		 document.getElementById('para').innerHTML =  $('#fName').val()+" " + $('#mName').val() +" "+ $('#lName').val()+" ";
	}
	</script>
	
</head>
<body onload="disable()">
	
    <!-- Page Content -->
    <div class="container" >
      <jsp:include page="header.jsp"></jsp:include>
        <div class="row">
            <!-- Blog Entries Column -->
                <h2 class="page-header heading">
                    Registration Form
                </h2>
                <div class="col-md-12 " >  
                <div style="color:red;FONT-SIZE:14px;"> * marked are mandatory  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Picture should be in jpeg or jpg format below 50kb  &nbsp;&nbsp;&nbsp; ${msg}</div><br>
                 <a:form action="preview.html" id="register" modelAttribute="candidate" method="post" enctype="multipart/form-data">
                       <div class="row">
				          <div class="col-sm-6">
				          <div class="row">
                          <div class="col-sm-12">
				              <div class="input-group">
				               
				                <span class="input-group-addon required">First Name</span>
				                <input placeholder="पहला नाम" class="form-control" type="text" name="fName" id="fName">
				              </div>
				            </div>
				            
				             <div class="col-sm-12">
				              <div class="input-group">
				                <span class="input-group-addon">Middle Name</span>
				                <input placeholder="मध्य नाम" class="form-control" type="text" name="mName" id="mName">
				              </div>
				            </div>
				            
				             <div class="col-sm-12">
				              <div class="input-group">
				                <span class="input-group-addon required">Last Name</span>
				                <input placeholder="अंतिम नाम" class="form-control" type="text" name="lName" id="lName">
				              </div>
				            </div>
				            </div>
				            </div>
				            
				             <!-- image upload -->
				             <div class="col-sm-6" style="border: 1px solid;border-color: gray;border-radius: 10px;margin-bottom:1%">
				            <div class="col-sm-4" style="margin-top:1%;margin-bottom:1%">
				              <div class="col-sm-12">
				           <!--  <span class="">
				            </span> -->
				            <div id="imagePreview"><img alt="profile pic" height="160px" src="resources/images/proPic.png"/> </div>
				            <!-- <div id="imageForward" style="display:none"> </div> -->
				            <input class="form-control" type="text" name="imageForward" id="imageForward" style="display:none">
				            </div>
				            </div>
				            <div class="col-sm-8" style="margin-top:10%">
				            <div class="col-sm-12">
				              <div class="input-group">
				                <span class="input-group-addon required">Upload Picture</span>
				            <input placeholder="" class="form-control" type="file"	name="pic" id="pic">
				            </div>
				          </div>
				          </div>
				       </div>
				       </div> 
				        <div class="row">   
				             <div class="col-sm-3">
				              <div class="input-group">
				                <span class="input-group-addon required">DOB</span>
				                <input placeholder="जन्म तिथि" type="text" class="form-control required"  name="dob" id="datepicker" readonly/><span class="input-group-addon"><img alt="calender" height="20px" src="resources/images/calendar.png"/></span> 
				              </div>
				            </div>
				             <div class="col-sm-4">
				                 <div class="input-group">
				                <span class="input-group-addon required">Email-ID</span>
				                <input placeholder="ईमेल" class="form-control" type="text" name="email">
				              </div>
				             </div>
				             
				             <div class="col-sm-4">
				                 <div class="input-group">
				                <span class="input-group-addon required">Mobile No.</span>
				                <input placeholder="मोबाइल नंबर" class="form-control" type="text" name="mob" id="mob" maxlength=10>
				              </div>
				             </div>
				          </div>
				         <div class="row"> 
				             
				             <div class="col-sm-9">
				              <div class="input-group">
				                <span class="input-group-addon required">Permanent Address</span>
				                <input placeholder="पता" class="form-control" type="text" name="paddress" id="paddress">
				              </div>
				            </div>
				            
				  
				          
				             <div class="col-sm-3">
				              <div class="input-group">
				               <span class="input-group-addon required">Pincode</span>
				               <input placeholder="पिन कोड" class="form-control" type="text" name="pPin" id="pPin">
				              </div>
				          </div>
				        </div>
					
					<div class="row"> 
					<div class="col-sm-12">
						<div class="form-group">
							<label><input placeholder="" id="addresscheck" name="addresscheck" value="1" type="checkbox"> Correspondance address same as permanent address</label>
						</div>
					</div>
					</div>
					
					<div class="row"> 
				           <div id="crpadd">  
				             <div class="col-sm-9">
				              <div class="input-group">
				                <span class="input-group-addon required">Correspondence Address</span>
				                <input placeholder="पता" class="form-control" type="text" name="caddress" id="caddress">
				              </div>
				            </div>
				            
				  
				          
				             <div class="col-sm-3">
				              <div class="input-group">
				               <span class="input-group-addon required">Pincode</span>
				               <input placeholder="पिन कोड" class="form-control" type="text" name="cPin" id="cPin">
				          </div>
				        </div>
				       </div>
				       </div>
				       
				       <div class="row"> 
				             <div class="col-sm-6">
				              <div class="input-group">
				                <span class="input-group-addon required">Educational Qualifications</span>
				                <textarea rows="4" cols="50" name="eQualification" id="eQualification" class="form-control" placeholder="शैक्षिक योग्यता"></textarea>
				              </div>
				            </div>

				             <div class="col-sm-6">
				              <div class="input-group">
				                <span class="input-group-addon required">Field of specialization</span>
				                <textarea rows="4" cols="50" name="specialization" id="specialization" class="form-control" placeholder="विशेषज्ञता का क्षेत्र"></textarea>
				              </div>
				            </div>
				       </div>
				       
				       <div class="row"> 
				             <div class="col-sm-6">
				              <div class="input-group">
				                <span class="input-group-addon required">Present business/Service</span>
				                <textarea rows="4" cols="50" name="business_service" id="business_service" class="form-control" placeholder="वर्तमान व्यवसाय / सेवा"></textarea>
				              </div>
				            </div>

				             <div class="col-sm-6">
				              <div class="input-group">
				                <span class="input-group-addon required">Achievements </span>
				                <textarea rows="4" cols="50" name="achievements" id="achievements" class="form-control" placeholder="उपलब्धियां"></textarea>
				              </div>
				            </div>
				       </div>
				       
				       <div class="row"> 
				             <div class="col-sm-6">
				              <div class="input-group">
				                <span class="input-group-addon required">Work Experience</span>
				                 <input placeholder="काम का अनुभव" class="form-control" type="text" name="workExperience" id="workExperience"><span class="input-group-addon">Years</span>
				              </div>
				            </div>
				            </div>
				            
				     <div class="row"> 
					<div class="col-sm-12">
						<div class="form-group">
							<label><input placeholder="" id="declarationcheck" name="declarationcheck" value="1" type="checkbox"> Declaration</label><label id="checkerror"></label>
						</div>
					</div>
					</div>
				       
				       <div class="row">
				        <div class="col-sm-12" id="declaration" style="display:none">
					                <div class="form-group">
					               I <span id="para">Name</span>
					                     <select name="sdw" id="sdw">
										<option value="1">son</option>
										<option value="2">daughter</option>
										<option value="3">wife</option>
									</select> 
									 of <input type="text" name="relativeName" id="relativeName" placeholder=""> 
									 aged <input type="text" name="age" id="age" placeholder=""> 
									  years and residing
					                     at <input type="text" name="residence" id="residence" placeholder="">  do affirm/certify that information given above in the 
					                     application (incl. Annexure) is true and correct and  nothing has been concealed by me.
					                     I am aware of the consequences of giving false and incorrect information and I shall be 
					                     responsible for the same. I further affirm/certify that in case I found guilty of giving
					                      wrong declaration/documents, my selection/appointment shall be terminated.<br/><br/>
									 </div>
							     </div>
				       </div>
				       
				       <div class="row"> 
				       <div class="col-sm-12">
				        <a href="index.html" class="btn  btn-success pull-left" >Back</a> 
				       <input placeholder="" type="submit" value="Submit" class="btn  btn-success pull-right" name="submit" id="submit" >
				       </div>
				       </div>  
                </a:form>
                </div>
                </div>
        </div>
        <hr>
         <!-- Footer -->
        <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>