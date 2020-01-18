package com.skilldistillery.babysupplies.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class ItemTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Item item;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("BabySupplies");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		item = em.find(Item.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		item = null;
	}

	@Disabled
	@Test
	@DisplayName("Fail test to test JUnit framework")
	void test() {
		fail("Not yet implemented");
	}
	
//	@Disabled
	@Test
	@DisplayName("Testing item entity mappings")
	void test1() {
		assertEquals("Graco FastAction Fold Jogging Stroller", item.getName());
		assertEquals("GREAT", item.getQuality().toString());
		assertEquals(2018, item.getPurchaseYear());
		assertEquals(100, item.getPrice());
	}

}
