package com.landandbuilding.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="candidate")
public class Candidate {

	@Id
	@Column(name = "cid")
	private Long cId;

	@Column(name = "fname")
	private String fName;

	@Column(name = "mname")
	private String mName;

	@Column(name = "lname")
	private String lName;

	@Column(name = "dob")
	private String dob;

	@Column(name = "paddress")
	private String paddress;
	
	@Column(name="ppin")
	private int pPin;

	@Column(name = "caddress")
	private String caddress;
	
	@Column(name="cpin")
	private int cPin;

	@Column(name = "mobile")
	private String mob;

	@Column(name = "email")
	private String email;

	@Column(name = "equalification")
	private String eQualification;
	
	@Column(name = "specialization")
	private String specialization;
	
	@Column(name = "business_service")
	private String business_service;
	
	@Column(name = "achievements")
	private String achievements;
	
	@Column(name="workex")
	private int workExperience;
	
	@Column(name="sdw")
	private int sdw;

	@Column(name = "relativeName")
	private String relativeName;	
	
	@Column(name="age")
	private int age;
	
	@Column(name="residence")
	private String residence;
	
	@Transient
	private int declarationcheck;
	
	@Transient
	private int addresscheck;

	@Transient
	private MultipartFile pic;

	public Long getcId() {
		return cId;
	}

	public void setcId(Long cId) {
		this.cId = cId;
	}

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public String getlName() {
		return lName;
	}

	public void setlName(String lName) {
		this.lName = lName;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getPaddress() {
		return paddress;
	}

	public void setPaddress(String paddress) {
		this.paddress = paddress;
	}

	public int getpPin() {
		return pPin;
	}

	public void setpPin(int pPin) {
		this.pPin = pPin;
	}

	public String getCaddress() {
		return caddress;
	}

	public void setCaddress(String caddress) {
		this.caddress = caddress;
	}

	public int getcPin() {
		return cPin;
	}

	public void setcPin(int cPin) {
		this.cPin = cPin;
	}

	public String getMob() {
		return mob;
	}

	public void setMob(String mob) {
		this.mob = mob;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String geteQualification() {
		return eQualification;
	}

	public void seteQualification(String eQualification) {
		this.eQualification = eQualification;
	}

	public String getSpecialization() {
		return specialization;
	}

	public void setSpecialization(String specialization) {
		this.specialization = specialization;
	}

	public String getBusiness_service() {
		return business_service;
	}

	public void setBusiness_service(String business_service) {
		this.business_service = business_service;
	}

	public String getAchievements() {
		return achievements;
	}

	public void setAchievements(String achievements) {
		this.achievements = achievements;
	}

	public int getWorkExperience() {
		return workExperience;
	}

	public void setWorkExperience(int workExperience) {
		this.workExperience = workExperience;
	}
	
	public int getSdw() {
		return sdw;
	}

	public void setSdw(int sdw) {
		this.sdw = sdw;
	}

	public String getRelativeName() {
		return relativeName;
	}

	public void setRelativeName(String relativeName) {
		this.relativeName = relativeName;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getResidence() {
		return residence;
	}

	public void setResidence(String residence) {
		this.residence = residence;
	}

	public int getDeclarationcheck() {
		return declarationcheck;
	}

	public void setDeclarationcheck(int declarationcheck) {
		this.declarationcheck = declarationcheck;
	}

	public int getAddresscheck() {
		return addresscheck;
	}

	public void setAddresscheck(int addresscheck) {
		this.addresscheck = addresscheck;
	}

	public MultipartFile getPic() {
		return pic;
	}

	public void setPic(MultipartFile pic) {
		this.pic = pic;
	}

}
