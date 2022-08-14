package com.skilldistillery.hsptrack.entities;

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

class serviceTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Schedule serviceTracker;

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
		serviceTracker = em.find(Schedule.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		serviceTracker = null;
	}

	@Test
	void test_Service_entity_mapping() {
		assertNotNull(serviceTracker);
		assertEquals("Aspen Nguyen", serviceTracker.getClient());
		assertEquals(EmploymentType.Employee, serviceTracker.getEmploymentType());
	}

}
