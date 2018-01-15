


$(document).ready(function()
		{
	
	 $("#fName").on('change', function() {
		 document.getElementById('para').innerHTML =  $('#fName').val()+" " + $('#mName').val() +" "+ $('#lName').val()+" ";
		  });
	 $("#mName").on('change', function() {
		 document.getElementById('para').innerHTML =  $('#fName').val()+" " + $('#mName').val()+" " + $('#lName').val()+" ";
		  });
	 $("#lName").on('change', function() {
		 document.getElementById('para').innerHTML = $('#fName').val()+" " + $('#mName').val()+" " + $('#lName').val()+" ";
		  });
	
	  $( "#datepicker" ).datepicker({
		    changeMonth: true,
		    changeYear: true,
		    yearRange: '1952:2017',
		    dateFormat: 'yy/mm/dd',
		    onSelect: function (date) {
		    	
		         var dob = new Date(date);
		          var today = new Date();
		    }
		         
		  });
	
	 /* $("#imagePreview").on('change', function() {
		  alert('jhgjhg');
			 document.getElementById('imagePreview1').innerHTML =   document.getElementById('imagePreview').innerHTML;
			  });*/
	  
	  $('input:file').change(function(e) {
			 var fileInput = document.getElementById('pic');
			    var filePath = fileInput.value;
			    var allowedExtensions = /(\.jpg|\.jpeg)$/i;
			    if(!allowedExtensions.exec(filePath)){
			        alert('Please upload file having extensions .jpeg/.jpg only.');
			        fileInput.value = '';
			        document.getElementById('imagePreview').innerHTML = '<img alt="profile pic" height="160px" src="resources/images/proPic.png"/>';
			    }else{
				    if(fileInput.files[0].size/1024 <50){
			        //Image preview
			        if (fileInput.files && fileInput.files[0]) {
			            var reader = new FileReader();
			            reader.onload = function(e) {
			                document.getElementById('imagePreview').innerHTML = '<img src="'+e.target.result+'" height="160px" width="160px" />';
			                $('#imageForward').val(e.target.result);
			            };
			            reader.readAsDataURL(fileInput.files[0]);
			        }
			    }else{
					   alert('This file size is: ' + fileInput.files[0].size/1024 + "kb. It should be less than 50kb");
				  } 
			        
			    }
		});
	 
	  $("#addresscheck").on('change', function() {
		  var pin = document.getElementById("pPin").value
		  var address = document.getElementById("paddress").value
		  if($("#pPin").val().length == 0 || $("#paddress").val().length == 0 || !pin.match(/\S/) || !address.match(/\S/)){
			  $('#addresscheck').attr('checked', false);
			  alert('Please fill the permanent address and pin first');
		  }else{
	    	if($('input:checkbox[name=addresscheck]').is(':checked') && $("#pPin").val().length != 0 && $("#paddress").val().length != 0 )
	    		{
	    		$('#cPin').val($('#pPin').val());
	    		$('#caddress').val($('#paddress').val());
	    		}
	    	else
	    		{
	    		$('#addresscheck').attr('checked', false);
	    		$('#caddress').val('');
	    		$('#cPin').val('');
	    		}
	    }});  
	  
	  
	  $("#paddress").on('change', function() {
		  if($('input:checkbox[name=addresscheck]').is(':checked')){
			  $('#caddress').val($('#paddress').val());
	    }if($('input:checkbox[name=addresscheck]').is(':checked') && $("#pPin").val().length == 0 && $("#paddress").val().length == 0 || !pin.match(/\S/) && !address.match(/\S/)){
			  $('#addresscheck').attr('checked', false);
		  }
		  });  
	  
	  $("#pPin").on('change', function() {
		  if($('input:checkbox[name=addresscheck]').is(':checked')){
			  $('#cPin').val($('#pPin').val());
	    }if($('input:checkbox[name=addresscheck]').is(':checked') && $("#pPin").val().length == 0 && $("#paddress").val().length == 0 || !pin.match(/\S/) && !address.match(/\S/)){
			  $('#addresscheck').attr('checked', false);
		  }
		  }); 
	  
	  
	  $("#caddress").on('change', function() {
		  if($('input:checkbox[name=addresscheck]').is(':checked')){
			  $('#addresscheck').attr('checked', false);
	    }
		  });  
	  
	  $("#cPin").on('change', function() {
		  if($('input:checkbox[name=addresscheck]').is(':checked')){
			  $('#addresscheck').attr('checked', false);
		  }
		  });
	  
	  
	  
	  $("#declarationcheck").on('change', function() {
		  
	    	if($('input:checkbox[name=declarationcheck]').is(':checked'))
	    		{
	    		$('#declaration').show();
	    		}
	    	else
	    		{
	    		$('#declarationcheck').attr('checked', false);
	    		$('#declaration').hide();
	    		}
	    });  
	  
	  
	  
    $("#register").validate
    ( 
    		{
                rules: 
                {
                	fName:
               		 {
               		   required:true,
               		   maxlength:50,
               		minlength:1,
               		 },
               		mName:
              		 {
              		   maxlength:50
              		 },
              		lName:
              		 {
              			required:true,
              			minlength:1,
              		   maxlength:50
              		 },
              		 
               		  paddress:
               			{
               			   required:true,
               			   minlength:1,
                		   maxlength:2000
               			},
               			
               			pPin:
               			{
               				required:true,
               				minlength:6,
               				maxlength:6,
                		    number: true
               			},
               			

						caddress : {
							required : true,
							minlength:1,
							maxlength : 2000
						},

						cPin : {
							required : true,
							minlength : 6,
							maxlength : 6,
							number : true
						},
               			
	               		  dob:
	                      {
	                   		 required: true,
	                   		 datevalidation:true,
	                  	
	                      },
	                      
	                      email:
	                      {
	                    	 required: true,
	                    	 email: true,
	                    	 minlength:1,
	                   		 maxlength:50,
	                      },
	                      
	                      mob: {
	                 		 required:true,
	                 		 number: true,
	                 		   maxlength: 10,
	                            minlength: 10,
	                      },
	                      
	                      eQualification: {
	                    	  required: true,
	                    	  maxlength: 2000,
	                            minlength: 1,
	                      },
	                     
	                      specialization:{
	                    	  required: true,
	                    	  maxlength: 2000,
	                            minlength: 1,
	                      },
	                      
	                      business_service:{
	                    	  required: true,
	                    	  maxlength: 2000,
	                            minlength: 1,
	                      },
	                      
	                      achievements:{
	                    	  required: true,
	                    	  maxlength: 2000,
	                            minlength: 1,
	                      },
                    
	                      workExperience:{
	                    	  required: true,
	                    	  number : true,
	                    	  maxlength: 2,
	                            minlength: 1,
	                      },
	                      
	                      name:{
	                    	  required:true,
	                  		   maxlength:50,
	                  		minlength:1,
	                      },
	                      
	                      relativeName:{
	                    	  required:true,
	                  		   maxlength:50,
	                  		minlength:1,
	                      },
	                      
	                      age:{
	                    	  required: true,
	                    	  maxlength: 2,
	                            minlength: 1,
	                            number : true,
	                      },
	                      
	                      residence:{
	                    	  required:true,
	                  		   maxlength:500,
	                  		minlength:1,
	                      },
	                      
	                      pic: "required",
	                      declarationcheck: "required"
                }, 
                messages:
                {
                	declarationcheck:"Please check I declaration to submit this application"
                },
               
                 errorPlacement: function(error, element) {
                 	error.css('color', 'RED');
                 	error.css('margin-left','13px');
                 	error.css('font-weight','200'); 	
                 	error.css('font-size','10'); 	
                 	error.css('font-family','Arial,Times,serif');
                 	if  (element.attr("type") == "checkbox") {
                 		error.insertAfter($("#checkerror"));
                     } 
                 	else if (element.attr("type") == "radio") {
                        // error.insertBefore(element);
                 		 error.insertAfter($("#radioerror"));
                     } 
                     else {
                         error.insertAfter(element);
                     }
                 },

                 submitHandler: function(form) {
                     form.submit(); //submit it the form
                   
                 }
             });
     
     $.validator.addMethod("datevalidation",function(value, element) {
     	 if (value=='')
              return true;
          else
              return value.match(/^(19|20)?\d{2}[\/](0?[1-9]|1[0-2])[\/](0?[1-9]|[12][0-9]|3[0-2])$/);
             },
              "Date format should be like dd/mm/yyyy"
     );
    });
     

