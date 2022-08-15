package com.skilldistillery.hsptrack;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import com.skilldistillery.hsptrack.data.HspTrackerDAO;
import com.skilldistillery.hsptrack.entities.Schedule;

@SpringBootTest
class HspTrackerApplicationTests {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Schedule schedule;
	private HspTrackerDAO dao;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAhspTracker");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		 emf.close();

	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		schedule = em.find(Schedule.class, 1);
	}


	@AfterEach
	void tearDown() throws Exception {
		schedule = null;
	}

	@Test
	void test_actor_entity_correct_mapping() {
		assertNotNull(schedule);
		assertEquals("Aspen Nguyen", schedule.getClient());
		assertEquals(184, schedule.getPayrollAmount());
	}
	
//	@Test
//	void test_lowGM_return_services_with_GM_less_than_thirty_percent(){
//		List<Schedule> lowPerformer = dao.findLowGM();
//		System.out.println(lowPerformer.get(0).getGrossMargin());
//		assertTrue(lowPerformer.get(1).getGrossMargin() < 0.3);
//	}
//	
//	@Test
//	void test_findNotBilledSchedule_return_non_bill_schedules() {
//		List<Schedule> oS = dao.findNotBilledSchedule();
//		System.out.println("bill status " + oS.get(0).getBillStatus());
//		boolean expected = false;
//		assertEquals(expected, oS.get(1).getBillStatus());
//	}
//	@Test
//	void test_searchByName_return_schedules_with_clientname_have_the_search_key_word() {
//		List<Schedule> foundS = dao.searchByClient("Nguyen");
//		System.out.println("bill status " + foundS.get(0));
//		assertTrue(foundS.get(0).getClient().contains("Nguyen"));
//	}
	@Test
	void contextLoads() {
	}

}
