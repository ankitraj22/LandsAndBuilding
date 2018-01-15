package com.landandbuilding.controller;

import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import java.util.regex.Pattern;

import com.landandbuilding.model.Candidate;
import com.landandbuilding.service.CandidateManager;

@Controller
public class CandidateController {

	@Autowired
	private CandidateManager candidateManager;
	
	@RequestMapping(value = "index", method = RequestMethod.GET)
	   public ModelAndView welcome() {
		return new ModelAndView("index");
	}
	
	@RequestMapping(value = "registration", method = RequestMethod.GET)
	   public ModelAndView registration() {
		return new ModelAndView("registration");
	}
	
	
	@RequestMapping(value = "/preview", method = RequestMethod.POST)
	public ModelAndView previewCandidate(@ModelAttribute("command") Candidate candidate,BindingResult result, HttpSession session, HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("previewForm");
				
			String fname=request.getParameter("fName");
			String lname=request.getParameter("lName");
			String dob=request.getParameter("dob");
			String email=request.getParameter("email");
			String mob = request.getParameter("mob");
			String paddress = request.getParameter("paddress");
			String pPin = request.getParameter("pPin");
			String addresscheck = request.getParameter("addresscheck");
			String caddress = request.getParameter("caddress");
			String cPin = request.getParameter("cPin");
			String eQualification = request.getParameter("eQualification");
			String specialization = request.getParameter("specialization");
			String business_service =request.getParameter("business_service");
			String achievements = request.getParameter("achievements");
			String workExperience = request.getParameter("workExperience");
			String declarationcheck = request.getParameter("declarationcheck");
			String pic = request.getParameter("pic");
			String relativeName = request.getParameter("relativeName");
			String residence = request.getParameter("residence");
			String age = request.getParameter("age");
			
			/*if(pic==null){
				 request.setAttribute("msg","Please upload the picture");
					mv.setViewName("registration");
				return mv;
			}*/
			
			if(fname.equals("") || lname.equals("") || fname==null || lname==null){
				 request.setAttribute("msg","It is mandatory to fill both First name and Last name");
					mv.setViewName("registration");
				return mv;
			}
			
			if(email.equals("") || email==null){
				 request.setAttribute("msg","Please enter email");
					mv.setViewName("registration");
				return mv;
			}
			
			if(!email.equals("") && email!=null && candidateManager.isValidEmailAddress(email)==false){
				 request.setAttribute("msg","Wrong email type");
					mv.setViewName("registration");
				return mv;
			}
			
			/*if(dob==null || dob.equals("")){
				 request.setAttribute("msg","please fill date of birth");
				 mv.setViewName("registration");
					return mv;
			}*/
			
			if(mob.equals("") || mob==null){
				 request.setAttribute("msg","Please enter mobile number");
				mv.setViewName("registration");
				return mv;
			}
			
			if(!mob.equals("") && mob!=null && candidateManager.isValidMobileNumber(mob)== false){
				 request.setAttribute("msg","mobile number should be of 10 digits and numerics only");
					mv.setViewName("registration");
					return mv;
			}
			
			if(paddress==null || paddress.equals("")){
				request.setAttribute("msg","Please enter permanent address");
				mv.setViewName("registration");
				return mv;
			}
			
			if(pPin.equals("") || pPin==null){
				 request.setAttribute("msg","Please enter permanent address Pin");
				 mv.setViewName("registration");
				return mv;
			}
			
			if(!pPin.equals("") && pPin!=null && candidateManager.isValidPin(pPin)== false){
				 request.setAttribute("msg","Permanent address Pin should be of 6 digits and numeric only");
				 mv.setViewName("registration");
					return mv;
			}
			
			if(addresscheck!=null){
				candidate.setCaddress(candidate.getPaddress());
				candidate.setcPin(candidate.getpPin());				
			}
			
			if(addresscheck==null || addresscheck.equals("")){
				if(caddress==null || caddress.equals("")){
					request.setAttribute("msg","Please enter Correspondence address");
					mv.setViewName("registration");
					return mv;
				}
				
				if(cPin.equals("") || cPin==null){
					 request.setAttribute("msg","Please enter correspondence address Pin");
					 mv.setViewName("registration");
					return mv;
				}
				
				if(!cPin.equals("") && cPin!=null && candidateManager.isValidPin(cPin)== false){
					 request.setAttribute("msg","Correspondence address Pin should be of 6 digits and numeric only");
					 mv.setViewName("registration");
						return mv;
				}
			}
			
			if(eQualification==null || eQualification.equals("")){
				request.setAttribute("msg","Please enter your Educational Qualifications");
				mv.setViewName("registration");
				return mv;
			}
			
			if(specialization==null || specialization.equals("")){
				request.setAttribute("msg","Please enter your Field of specialization");
				mv.setViewName("registration");
				return mv;
			}
			
			if(business_service==null || business_service.equals("")){
				request.setAttribute("msg","Please enter your Present business/Service");
				mv.setViewName("registration");
				return mv;
			}
			
			if(achievements==null || achievements.equals("")){
				request.setAttribute("msg","Please enter your Achievements");
				mv.setViewName("registration");
				return mv;
			}
			
			if(workExperience.equals("") || workExperience==null){
				 request.setAttribute("msg","Please enter workExperience");
				 mv.setViewName("registration");
				return mv;
			}
			
			/*if(!workExperience.equals("") && workExperience!=null && candidateManager.isValidWorkExperience(workExperience)==false){
				 request.setAttribute("msg","workExperience should be numeric only");
				 mv.setViewName("registration");
				return mv;
			}*/
			
			if(declarationcheck==null){
				request.setAttribute("msg","Please select the Declaration");
				 mv.setViewName("registration");
			}
			
			/*if(declarationcheck!=null){
				if(relativeName.equals("") || relativeName==null || residence.equals("") || residence==null || age.equals("") || age==null){
					request.setAttribute("msg","Please fill the declararion properly");
					mv.setViewName("registration");
				}
				
			}*/
			
			else{
				if(dob!=null && !dob.equals("")){
			candidate.setcId(candidateManager.getGeneratedApplicationNo(candidate));
				}
			 String src =request.getParameter("imageForward");
			 session.setAttribute("src", src);
	         session.setAttribute("candidate", candidate);
	         mv.addObject("candidate", candidate); 
			}
	          return mv;
	}
	
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView saveEmployee(@ModelAttribute("command") Candidate candidate,BindingResult result, HttpServletRequest request,HttpSession session){
		ModelAndView mv = new ModelAndView();
				Candidate candidate1 =  (Candidate) session.getAttribute("candidate");
		      candidateManager.save(candidate1);
		      mv.addObject("candidate", candidate1);
		      mv.setViewName("thanks");
				
		return mv;
	}
	
	@RequestMapping("login")
    public String login() { 
		return ("login");
	}
	
	//candidate login
		@RequestMapping("candidatelogin")
	    public ModelAndView candidatelogin(HttpServletRequest request) { 

			ModelAndView mv = new ModelAndView();
			mv.setViewName("login");
			try
			{
				Long cid= Long.parseLong(request.getParameter("cid")); 
			if(candidateManager.checkCandidateLogin(cid, request.getParameter("dob")))
			{
				mv.setViewName("print");
				Candidate candidate = candidateManager.getCandidateInfo(cid); 
				mv.addObject("candidate", candidate);
			}
			else
			{
				mv.addObject("msg", "Record does not exists.");
			}
			
			
			}
			
			catch(Exception e)
			{
				mv.addObject("msg", "Wrong format of your application");
			}
			
			return mv;
			
		}
}
