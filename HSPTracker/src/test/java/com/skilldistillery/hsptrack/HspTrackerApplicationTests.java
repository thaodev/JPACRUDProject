package com.skilldistillery.hsptrack;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.util.List;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.skilldistillery.hsptrack.data.HspTrackerDAO;
import com.skilldistillery.hsptrack.entities.EmploymentType;
import com.skilldistillery.hsptrack.entities.Schedule;
import com.skilldistillery.hsptrack.entities.ServiceType;

@SpringBootTest
class HspTrackerApplicationTests {

	private Schedule schedule;
	
	@Autowired
	private HspTrackerDAO dao;
//	
//	@BeforeAll
//	static void setUpBeforeClass() throws Exception {
//		emf = Persistence.createEntityManagerFactory("JPAhspTracker");
//	}
//
//	@AfterAll
//	static void tearDownAfterClass() throws Exception {
//		 emf.close();
//
//	}

	@BeforeEach
	void setUp() throws Exception {
		//em = emf.createEntityManager(); redundant
		schedule = dao.findById(1);
	}


	@AfterEach
	void tearDown() throws Exception {
		schedule = null;
	}

	@Test
	void test_Schedule_entity_correct_mapping() {
		assertNotNull(schedule);
		assertEquals("Aspen Nguyen", schedule.getClient());
		assertEquals(184, schedule.getPayrollAmount());
	}
	
	@Test
	void test_lowGM_return_services_with_GM_less_than_thirty_percent(){
		List<Schedule> lowPerformer = dao.findLowGM();
		System.out.println(lowPerformer.get(0).getGrossMargin());
		assertTrue(lowPerformer.get(0).getGrossMargin() < 0.3);
	}
	
	@Test
	void test_findNotBilledSchedule_return_non_bill_schedules() {
		List<Schedule> oS = dao.findNotBilledSchedule();
		System.out.println("bill status " + oS.get(0).getBillStatus());
		boolean expected = false;
		assertEquals(expected, oS.get(1).getBillStatus());
		assertTrue(oS.size() > 0);
	}
	@Test
	void test_searchByName_return_schedules_with_clientname_have_the_search_key_word() {
		List<Schedule> foundS = dao.searchByClient("Nguyen");
		System.out.println("bill status " + foundS.get(0));
		assertTrue(foundS.get(0).getClient().contains("Nguyen"));
	}
	
	@Test
	void test_add_schedule() {
		Schedule schToAdd = new Schedule("Bob Donald", "Mary John", "12/1/2021");
		schToAdd = dao.addNewSchedule(schToAdd);
		schToAdd.setServiceType("PDN");
		int id = schToAdd.getId();
		assertEquals("PDN", schToAdd.getServiceType());
	}
//	@Test
//	void test_update_schedule() {
//		Schedule schToUpdate = dao.findById(10);
//		schToUpdate.setEmploymentType(EmploymentType.Employee);
//		assertEquals(EmploymentType.Employee, schToUpdate.getEmploymentType());
//	}
	
	@Test
	void contextLoads() {
	}

}
