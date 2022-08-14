package com.skilldistillery.hsptrack;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import com.skilldistillery.hsptrack.entities.Schedule;

@SpringBootTest
class HspTrackerApplicationTests {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Schedule schedule;

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
		assertEquals("Penelope", schedule.getClient());
		assertEquals("Guiness", schedule.getPayrollAmount());
	}

	@Test
	void contextLoads() {
	}

}
