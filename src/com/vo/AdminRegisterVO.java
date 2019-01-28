package com.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="register")
public class AdminRegisterVO {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int registerid;
	
	@Column
	private String firstName;
	
	@Column
	private String lastName;
	
	@Column
	private String Email;
	
	@Column
	private String Address;
	
	@Column
	private String mobileNumber;
	
	@Column
	private String Gender;
	
	@Column
	private String path;
	
	@Column
	private String fileName;

	@ManyToOne
	AdminLoginVO loginVO;

	public int getRegisterid() {
		return registerid;
	}

	public void setRegisterid(int registerid) {
		this.registerid = registerid;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	
	

	public String getGender() {
		return Gender;
	}

	public void setGender(String gender) {
		Gender = gender;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public AdminLoginVO getLoginVO() {
		return loginVO;
	}

	public void setLoginVO(AdminLoginVO loginVO) {
		this.loginVO = loginVO;
	}

	
}
