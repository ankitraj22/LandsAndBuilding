package com.landandbuilding.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.landandbuilding.model.Candidate;
import com.landandbuilding.dao.CandidateDao;

@Service
public class CandidateManagerImpl implements CandidateManager{

	@Autowired
    private CandidateDao candidateDAO;
	
	@Override
	@Transactional
	public Long getGeneratedApplicationNo(Candidate candidate) {
		return candidateDAO.getGeneratedApplicationNo(candidate);
	}
	
	@Override
	@Transactional
	    public int save(Candidate candidate) {
		return candidateDAO.save(candidate);
	}
	
	@Override
	@Transactional
	public boolean checkCandidateLogin(Long cId, String dob){
		return candidateDAO.checkCandidateLogin(cId,dob);
	}	
	
	@Override
	@Transactional
	public Candidate getCandidateInfo(Long candidateId) {
		return candidateDAO.getCandidateInfo(candidateId);
	}
	
	@Override
	@Transactional
	public boolean isValidEmailAddress(String email){
		return candidateDAO.isValidEmailAddress(email);
	}
	
	@Override
	@Transactional
	public boolean isValidMobileNumber(String mob){
		return candidateDAO.isValidMobileNumber(mob);
	}
	
	@Override
	@Transactional
	public boolean isValidPin(String pin) {
		return candidateDAO.isValidPin(pin);
	}
	
	@Override
	@Transactional
	public boolean isValidWorkExperience(String workExperience){
		return candidateDAO.isValidWorkExperience(workExperience);
	}
	
	
}
