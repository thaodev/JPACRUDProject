package com.skilldistillery.hsptrack.entities;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
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
	
	@Column(name="client_address")
	private String street;
	
	@Column(name="client_city")
	private String city;
	
	private String nurse;
	
	@Column(name="employment_type")
	@Enumerated(EnumType.STRING)
	private EmploymentType employmentType;
	
	@Column(name="service_type")
	@Enumerated(EnumType.STRING)
	private ServiceType serviceType;
	
	@Column(name="bill_status")
	private Boolean billStatus;
	
	@Column(name="bill_amount")
	private Double billAmount;
	
	@Column(name="payroll_amount")
	private Double payrollAmount;
	
	@Column(name="gross_margin")
	private Double grossMargin;
	
	@Column(name="service_date")
	private LocalDate serviceDate;
	

	

	public Schedule() {
	}

	public Schedule(String client, String nurse, LocalDate serviceDate) {
		this.client = client;
		this.nurse = nurse;
		this.serviceDate = serviceDate;
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
//		return "Schedule [id=" + id + ", client=" + client + ", street=" + street + ", city=" + city
//				+ ", nurseFirstName=" + nurseFirstName + ", nurseLastName=" + nurseLastName + ", employmentType="
//				+ employmentType + ", serviceType=" + serviceType + ", billAmount=" + billAmount + ", payrollAmount="
//				+ payrollAmount + ", grossMargin=" + grossMargin + "]";
//	}

	public String getstreet() {
		return street;
	}

	public void setstreet(String street) {
		this.street = street;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getNurse() {
		return nurse;
	}

	public void setNurse(String nurse) {
		this.nurse = nurse;
	}

	public EmploymentType getEmploymentType() {
		return employmentType;
	}

	public void setEmploymentType(EmploymentType employmentType) {
		this.employmentType = employmentType;
	}

	public ServiceType getServiceType() {
		return serviceType;
	}

	public void setServiceType(ServiceType serviceType) {
		this.serviceType = serviceType;
	}

	public Boolean getBillStatus() {
		return billStatus;
	}

	public void setBillStatus(Boolean billStatus) {
		this.billStatus = billStatus;
	}

	public double getBillAmount() {
		return billAmount;
	}

	public void setBillAmount(Double billAmount) {
		this.billAmount = billAmount;
	}

	public Double getPayrollAmount() {
		return payrollAmount;
	}

	public void setPayrollAmount(Double payrollAmount) {
		this.payrollAmount = payrollAmount;
	}

	public Double getGrossMargin() {
		return grossMargin;
	}

	public void setGrossMargin(Double grossMargin) {
		this.grossMargin = grossMargin;
	}

	public LocalDate getServiceDate() {
		return serviceDate;
	}

	public void setServiceDate(LocalDate serviceDate) {
		this.serviceDate = serviceDate;
	}

	
	@Override
	public String toString() {
		return "Schedule [id=" + id + ", client=" + client + ", nurse=" + nurse + ", employmentType=" + employmentType
				+ ", serviceType=" + serviceType + ", billStatus=" + billStatus + ", serviceDate=" + serviceDate + "]";
	}

	public String toStringDetails() {
		return "Schedule [id=" + id + ", client=" + client + ", street=" + street + ", city=" + city + ", nurse="
				+ nurse + ", employmentType=" + employmentType + ", serviceType=" + serviceType + ", billStatus="
				+ billStatus + ", billAmount=" + billAmount + ", payrollAmount=" + payrollAmount + ", grossMargin="
				+ grossMargin + ", serviceDate=" + serviceDate + "]";
	}




	
	
	
	
}
