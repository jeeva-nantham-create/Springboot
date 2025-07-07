package com.example.SBDemoPrg.Model;

public class StudentDetails {
	private long Id;
	private String Name;
	private String rollNo;
	private String Department;
	private String Phone_No;
	private String Place;
	private String Domain_Name;
	public String getRollNo() {
		return rollNo;
	}

	public void setRollNo(String roll_No) {
		rollNo = roll_No;
	}

	public String getDepartment() {
		return Department;
	}

	public void setDepartment(String department) {
		Department = department;
	}

	public String getPhoneNo() {
		return Phone_No;
	}

	public void setPhoneNo(String phone_No) {
		Phone_No = phone_No;
	}

	public String getPlace() {
		return Place;
	}

	public void setPlace(String place) {
		Place = place;
	}

	public String getDomainName() {
		return Domain_Name;
	}

	public void setDomainName(String domain_Name) {
		Domain_Name = domain_Name;
	}

	public StudentDetails() {}


	public String getDetails() {
		return Id + " " + Name + " " + rollNo + " " + Department;
	}
	
}
