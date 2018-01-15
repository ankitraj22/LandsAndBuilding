package com.landandbuilding.dao;

import java.util.List;
import java.util.regex.Pattern;

import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.landandbuilding.model.Candidate;
import com.landandbuilding.dao.CandidateDao;

@Repository
public class CandidateDaoImpl implements  CandidateDao{

	@Autowired
    private SessionFactory sessionFactory;
	
	@Override
	public Long getGeneratedApplicationNo(Candidate candidate) {
	
		 Long intId = 0L;
		 String dob =candidate.getDob();
		String[] parts = dob.split("/");
		String dyear = parts[0]; 
		dyear = parts[0].substring(parts[0].length() - 2, parts[0].length());
		String maxId ="";
			
		
		int row = ((Integer) sessionFactory.getCurrentSession().createCriteria(Candidate.class).setProjection(Projections.rowCount()).uniqueResult()).intValue();
		String pin = String.valueOf(candidate.getpPin());
		
		
		  if(row<=9)
		  {
			 if(row==0)
			   maxId = "00000";
			 else
			   maxId = "0000"+row;
		  }
		  else if(row>=9 && row<=99)
				 maxId = "000"+row;
			
		  else if(row>=99 && row<=999)
				 maxId = "00"+row;
			
		  else if(row>=999 && row<=9999)
				 maxId = "00"+row;
			
		  else if(row>=9999 && row<=99999)
				 maxId = "0"+row;
		  
		  else if(row>99999)
			  maxId=""+row;
			
		  pin = pin.substring(pin.length() - 2, pin.length());
		  String  id = ""+ pin + dyear + maxId;
		  
			
		  try
			{
			    intId = Long.parseLong(id);
			}
			catch(NumberFormatException ne)
			{
				System.out.println(ne);
			}
				
        
				return intId;
	}
	
	@Override
	public int save(Candidate candidate) {
	           sessionFactory.getCurrentSession().save(candidate);
		 try
		 {
				  if(candidate.getPic().getBytes().length!=0)
				  {
					 Query query=sessionFactory.getCurrentSession().createSQLQuery("insert into upload_pic (cid,pic) values (?,?)");
					 query.setParameter(0,candidate.getcId());
					 query.setParameter(1,candidate.getPic().getBytes());
					 query.executeUpdate();
				  }
		 }
		 catch(Exception e){
			 e.printStackTrace();
		 }
		return 0;
	}
	
	@Override
	public boolean checkCandidateLogin(Long cId, String dob) {
		 
  @SuppressWarnings("unchecked")
List<Candidate> list = sessionFactory.getCurrentSession().createCriteria(Candidate.class).add(Restrictions.eq("cId", cId)).add(Restrictions.eq("dob", dob)).list();
		if(list.size()==0)
		{
        
			return false;
          
		}
		else
		{
		
			return true;
		}
	}
	
	@Override
	public Candidate getCandidateInfo(Long candidateId) {
		 
		return (Candidate) sessionFactory.getCurrentSession().get(Candidate.class, candidateId);
		
	}
	
	@Override
	public boolean isValidEmailAddress(String email){
		boolean result = true;
		   try {
		      InternetAddress emailAddr = new InternetAddress(email);
		      emailAddr.validate();
		   } catch (AddressException ex) {
		      result = false;
		   }
		   return result;
	}
	
	@Override
	public boolean isValidMobileNumber(String mob) {
		 Pattern digitPattern = Pattern.compile("\\d{10}"); 
		 return digitPattern.matcher(mob).matches();
	}
	
	@Override
	public boolean isValidPin(String pin) {
		 Pattern digitPattern = Pattern.compile("\\d{6}"); 
		 return digitPattern.matcher(pin).matches();
	}
	
	@Override
	public boolean isValidWorkExperience(String workExperience){
		 Pattern digitPattern = Pattern.compile(".*\\D.*");
		 return digitPattern.matcher(workExperience).matches();
	}
}
