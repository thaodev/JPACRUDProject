package com.skilldistillery.hsptrack.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="service")
public class Schedule {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String client;
	
//	private String address;
//	
//	private String city;
//	
//	private String nurseFirstName;
//	
//	private String nurseLastName;
//	
//	private EmploymentType employmentType;
//	
//	private ServiceType serviceType;
//	
//	private double billAmount;
//	
//	private double payrollAmount;
//	
//	private double grossMargin;
//
//	public EmploymentType getEmploymentType() {
//		return employmentType;
//	}
//
//	public void setEmploymentType(EmploymentType employmentType) {
//		this.employmentType = employmentType;
//	}
//
//	public String getAddress() {
//		return address;
//	}
//
//	public void setAddress(String address) {
//		this.address = address;
//	}
//
//	public String getCity() {
//		return city;
//	}
//
//	public void setCity(String city) {
//		this.city = city;
//	}
//
//	public String getNurseFirstName() {
//		return nurseFirstName;
//	}
//
//	public void setNurseFirstName(String nurseFirstName) {
//		this.nurseFirstName = nurseFirstName;
//	}
//
//	public String getNurseLastName() {
//		return nurseLastName;
//	}
//
//	public void setNurseLastName(String nurseLastName) {
//		this.nurseLastName = nurseLastName;
//	}
//
//
//	public ServiceType getServiceType() {
//		return serviceType;
//	}
//
//	public void setServiceType(ServiceType serviceType) {
//		this.serviceType = serviceType;
//	}
//
//	public double getBillAmount() {
//		return billAmount;
//	}
//
//	public void setBillAmount(double billAmount) {
//		this.billAmount = billAmount;
//	}
//
//	public double getPayrollAmount() {
//		return payrollAmount;
//	}
//
//	public void setPayrollAmount(double payrollAmount) {
//		this.payrollAmount = payrollAmount;
//	}
//
//	public double getGrossMargin() {
//		return grossMargin;
//	}
//
//	public void setGrossMargin(double grossMargin) {
//		this.grossMargin = grossMargin;
//	}

	public Schedule() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getClient() {
		return client;
	}

	public void setClient(String client) {
		this.client = client;
	}
//
//	@Override
//	public String toString() {
//		return "Schedule [id=" + id + ", client=" + client + ", address=" + address + ", city=" + city
//				+ ", nurseFirstName=" + nurseFirstName + ", nurseLastName=" + nurseLastName + ", employmentType="
//				+ employmentType + ", serviceType=" + serviceType + ", billAmount=" + billAmount + ", payrollAmount="
//				+ payrollAmount + ", grossMargin=" + grossMargin + "]";
//	}

	@Override
	public String toString() {
		return "Schedule [id=" + id + ", client=" + client + "]";
	}

	
	
	
	
}
