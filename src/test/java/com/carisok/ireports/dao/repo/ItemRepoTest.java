package com.carisok.ireports.dao.repo;
//package com.iyihua.daixi.dao.repo;
//
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.test.SpringApplicationConfiguration;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//
//import com.carisok.ireports.App;
//import com.carisok.ireports.model.Item;
//import com.carisok.ireports.repository.ItemRepository;
//import com.google.gson.Gson;
//import com.google.gson.GsonBuilder;
//
//@RunWith(SpringJUnit4ClassRunner.class)
//@SpringApplicationConfiguration(App.class)
//public class ItemRepoTest {
//
//	@Autowired ItemRepository itemRepository;
//	
//	@Test
//	public void test() {
//		Item item = itemRepository.findOne(1);
//		
//		Gson g = new GsonBuilder().serializeNulls().create();
//		System.out.println("" + g.toJson(item));
//	}
//	
//	
//}
