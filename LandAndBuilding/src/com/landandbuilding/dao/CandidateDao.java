package com.landandbuilding.dao;

import com.landandbuilding.model.Candidate;

public interface CandidateDao {
	public Long  getGeneratedApplicationNo(Candidate candidate);
	public int save(Candidate candidate);
	public boolean checkCandidateLogin(Long cId, String dob);
	public Candidate getCandidateInfo(Long candidateId);
	public boolean isValidEmailAddress(String email);
	public boolean isValidMobileNumber(String mob);
	public boolean isValidPin(String pin);
	public boolean isValidWorkExperience(String workExperience);
}
