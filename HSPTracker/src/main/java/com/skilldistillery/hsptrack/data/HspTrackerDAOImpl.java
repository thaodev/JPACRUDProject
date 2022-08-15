package com.skilldistillery.hsptrack.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.hsptrack.entities.Schedule;


@Service
@Transactional
public class HspTrackerDAOImpl implements HspTrackerDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Schedule findById(int id) {
		Schedule sch = em.find(Schedule.class, id);
		return sch;
	}

	@Override
	public List<Schedule> findAll() {
		List<Schedule> schedules = null;
		String jpql = "SELECT s FROM Schedule s";
		schedules = em.createQuery(jpql, Schedule.class).getResultList();
		if(schedules != null) {
			System.out.println(schedules);
			return schedules;
		} else {
			return null;
		}
		
	}
	
	@Override
	public Schedule addNewSchedule(Schedule service) {
		
		// write the customer to the database
		em.persist(service);
		// update the "local" Customer object
		em.flush();

		return service;

	}

	@Override
	public int calculateGrossMargin() {
		int count = 0;
		String jpql = "UPDATE Schedule s SET s.grossMargin = (s.billAmount - s.payrollAmount)/s.billAmount";
		
		count = em.createQuery(jpql).executeUpdate();

		return count;
	}


	@Override
	public boolean updateSchedule(Schedule schedule) {
		boolean isUpdated = false;
		Schedule updatedSch = em.find(Schedule.class, schedule.getId());
		updatedSch.setClient(schedule.getClient());
		updatedSch.setStreet(schedule.getStreet());
		updatedSch.setCity(schedule.getCity());
		updatedSch.setNurse(schedule.getNurse());
		updatedSch.setEmploymentType(schedule.getEmploymentType());
		updatedSch.setServiceType(schedule.getServiceType());
		updatedSch.setBillStatus(schedule.getBillStatus());
		updatedSch.setBillAmount(schedule.getBillAmount());
		updatedSch.setPayrollAmount(schedule.getPayrollAmount());
//		int id = schedule.getId();
//		Schedule scheduleUpdated = null;
//		String jpql = "UPDATE Serivce s SET s.client = :client, s.client_address = :street,"
//				+ "s.client_city = :city, s.nurse = :nurse, s.employment_type = :employmentType,"
//				+ "s.service_type = :serviceType, s.bill_status = :billStatus, "
//				+ "s.bill_amount = :billAmount, s.payroll_amount= :payrollAmount" 
//				+ "s.gross_margin =: grossMargin 	WHERE id = :id";
//		
//		scheduleUpdated = (Schedule) em.createQuery(jpql, Schedule.class)
//				.setParameter("client", schedule.getClient())
//				.setParameter("street", schedule.getstreet())
//				.setParameter("city", schedule.getCity())
//				.setParameter("nurse", schedule.getNurse())
//				.setParameter("employmentType", schedule.getEmploymentType())
//				.setParameter("serviceType", schedule.getServiceType())
//				.setParameter("billStatus", schedule.getBillStatus())
//				.setParameter("billAmount", schedule.getBillAmount())
//				.setParameter("payrollAmount", schedule.getPayrollAmount())
//				.setParameter("grossMargin", schedule.getGrossMargin())
//				.getResultList();
//		if (scheduleUpdated != null) {
//			isUpdated = true;
//		} 

		return isUpdated;
	}

	@Override
	public boolean deleteSchedule(int scheduleId) {
		boolean isDeleted = false;
		Schedule scheduleToDelete = em.find(Schedule.class, scheduleId);
		
		if (scheduleToDelete != null ) {
			em.remove(scheduleToDelete);
			isDeleted = !em.contains(scheduleToDelete);

		}
		
		return isDeleted;
	}
	
	
	@Override
	public List<Object[]> findKPIsByCity() {
		List<Object[]> schedules = null;
//		String jpql="SELECT s.city, service2.avg from Schedule s INNER JOIN "
//				+ "(SELECT sc.city city2,  AVG(sc.grossMargin) avg from Schedule sc GROUP BY sc.city) service2 "
//				+ "ON s.city = service2.city2";
		
		String jpql = "SELECT s.city, SUM(s.billAmount), SUM(s.payrollAmount), AVG(s.grossMargin) FROM Schedule s GROUP BY s.city";
		//"SELECT distinct s.serviceType, service2.rev, service2.cogs, service2.avgGM from Schedule s INNER JOIN "
		//+ "(SELECT sc.serviceType serT, SUM(billAmount) rev, SUM(payrollAmount) cogs, AVG(sc.grossMargin) avgGM FROM Schedule sc GROUP BY sc.serviceType) service2"
		//+ " ON s.serviceType = service2.serT"
		//"SELECT distinct s.service_type,service2.rev, service2.COGS, service2.avg from service s INNER JOIN (SELECT sc.service_type service2, SUM(bill_amount) rev, SUM(payroll_amount) COGS, AVG(sc.gross_margin) avg from service sc GROUP BY sc.service_type) service2 ON s.service_type = service2.service2;";
		schedules = em.createQuery(jpql, Object[].class).getResultList();
		return schedules;		
	}
	@Override
	public List<Object[]>  findKPIsByService() {
		List<Object[]> schedules = null;
		String jpql="SELECT s.serviceType, SUM(s.billAmount), SUM(s.payrollAmount), AVG(s.grossMargin)"
				+ " FROM Schedule s GROUP BY s.serviceType";
		schedules = em.createQuery(jpql, Object[].class).getResultList();
		return schedules;		
	}


	@Override
	public List<Object[]> findKPIsByEmploymentType() {
		List<Object[]> schedules = null;
		String jpql="SELECT s.employmentType, SUM(s.billAmount), SUM(s.payrollAmount), AVG(s.grossMargin)"
				+ " FROM Schedule s GROUP BY s.employmentType";
		schedules = em.createQuery(jpql, Object[].class).getResultList();
		return schedules;		
	}

	@Override
	public List<Schedule> findNotBilledSchedule() {
		List<Schedule> schedules = null;
		String jpql="SELECT s FROM Schedule s WHERE s.billStatus  = 0";
		schedules = em.createQuery(jpql, Schedule.class).getResultList();
		
		return schedules;
	}


	@Override
	public List<Schedule> findLowGM() {
		List<Schedule> schedules = null;
		String jpql="SELECT s FROM Schedule s WHERE s.grossMargin < 0.3";
		schedules = em.createQuery(jpql, Schedule.class).getResultList();
		
		return schedules;
	}

	@Override
	public List<Schedule> searchByClient(String name) {
		// TODO Auto-generated method stub
		List<Schedule> schedules = null;
		String jpql="SELECT s FROM Schedule s WHERE s.client LIKE  :name";
		schedules = em.createQuery(jpql, Schedule.class).setParameter("name", "%" +name+"%").getResultList();
		
		return schedules;
	}



}
