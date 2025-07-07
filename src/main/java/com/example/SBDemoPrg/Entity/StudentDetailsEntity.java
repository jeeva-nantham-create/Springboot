package com.example.SBDemoPrg.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="Student_Details_Table")
public class StudentDetailsEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType .IDENTITY)
	private long Id;
	public long getId() {
		return Id;
	}
	public void setId(long id) {
		this.Id = id;
	}

	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
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

	

	private String Name;
	private String Department;
	private String Phone_No;
	private String Place;
	private String Domain_Name;
	
	
	@Column(name = "Roll_No") 
	private String rollNo;    

	public StudentDetailsEntity() {
		super();
	}
	public StudentDetailsEntity(long id, String name, String roll_No, String department, String phone_No, String place,
			String domain_Name) {
		super();
		Id = id;
		Name = name;
		rollNo = roll_No;
		Department = department;
		Phone_No = phone_No;
		Place = place;
		Domain_Name = domain_Name;
	}
}
