package com.skilldistillery.babysupplies.data;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import com.skilldistillery.babysupplies.entities.Item;
import com.skilldistillery.babysupplies.entities.Quality;

class ItemDAOJpaImplTest {

	static private ItemDAOJpaImpl dao;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		dao = new ItemDAOJpaImpl();
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		dao = null;
	}
	
	@BeforeEach
	void setUp() throws Exception {
		
		
	}

	@AfterEach
	void tearDown() throws Exception {
		
		
	}

	@Disabled
	@Test
	@DisplayName("Fail test to test JUnit framework")
	void test() {
		fail("Not yet implemented");
	}
	
//	@Disabled
	@Test
	@DisplayName("Testing findAllItems")
	void test1() {
		List<Item> items = dao.findAllItems();
		assertEquals("Graco FastAction Fold Jogging Stroller", items.get(0).getName());
		assertEquals(5, items.size());
		
	}
	@Disabled
	@Test
	@DisplayName("Testing createNewItem")
	void test2() {
		Item item = new Item();
		item.setName("Graco Stroller");
		item.setDescription("Barely used Graco Stroller - 3 wheel - 3 point harness");
		item.setManufacturer("Graco");
		item.setLink("https://www.amazon.com/Summer-Infant-Lite-Convenience-Stroller/dp/B00O20OCVC/ref=sxin_2_ac_d_rm?ac_md=2-1-c3Ryb2xsZXI%3D-ac_d_rm&cv_ct_cx=graco+stroller&keywords=graco+stroller&pd_rd_i=B00O20OCVC&pd_rd_r=a6e802bc-31f3-45dd-9054-24b3ae136df8&pd_rd_w=6tB5g&pd_rd_wg=d7Y7N&pf_rd_p=e2f20af2-9651-42af-9a45-89425d5bae34&pf_rd_r=1C4KXX4KWZ4MZN0ZHB4K&psc=1&qid=1579305316https://www.amazon.com/Summer-Infant-Lite-Convenience-Stroller/dp/B00O20OCVC/ref=sxin_2_ac_d_rm?ac_md=2-1-c3Ryb2xsZXI%3D-ac_d_rm&cv_ct_cx=graco+stroller&keywords=graco+stroller&pd_rd_i=B00O20OCVC&pd_rd_r=a6e802bc-31f3-45dd-9054-24b3ae136df8&pd_rd_w=6tB5g&pd_rd_wg=d7Y7N&pf_rd_p=e2f20af2-9651-42af-9a45-89425d5bae34&pf_rd_r=1C4KXX4KWZ4MZN0ZHB4K&psc=1&qid=1579305316");
		item.setAgeRange("6 to 18 months");
		item.setPurchaseYear(2012);
		item.setNumAvailable(1);
		item.setQuality(Quality.SUPERB);
		item.setPrice(120);
		
		assertEquals(6, dao.createNewItem(item).getId());
		
	}
	@Disabled
	@Test
	@DisplayName("Testing updateItem")
	void test3() {
		
		
	}
	@Disabled
	@Test
	@DisplayName("Testing readItem")
	void test4() {
		
		
	}
	@Disabled
	@Test
	@DisplayName("Testing readItemsByKeyword")
	void test5() {
		
		
	}
	@Disabled
	@Test
	@DisplayName("Testing deleteItem")
	void test6() {
		
		
	}

}
