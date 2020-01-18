package com.skilldistillery.babysupplies.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.babysupplies.data.ItemDAOJpaImpl;
import com.skilldistillery.babysupplies.entities.Item;

@Controller
public class ItemController {
	
	@Autowired
	private ItemDAOJpaImpl dao;


	@RequestMapping(path = { "/", "home.do" }, method = RequestMethod.GET)
	public String home() {
		
		return "home";
	}


	
	@RequestMapping(path = "ItemsByKeyword.do", method = RequestMethod.GET)
	public String findItemsByKeyword(String keyword, Model model) {
		List<Item> items = dao.readItemsByKeyword(keyword);
		model.addAttribute("items", items);
		return "result";
	}
	@RequestMapping(path = "Search.do", method = RequestMethod.GET)
	public String findItemsByKeyword() {
		
		return "search";
	}
	
	@RequestMapping(path = "AllItems.do", method = RequestMethod.GET)
	public String findAllItems(Model model) {
		List<Item> items = dao.findAllItems();
		model.addAttribute("items", items);
		return "result";
	}
	
	@RequestMapping(path = "ItemById.do", method = RequestMethod.GET)
	public String findItemById(int id, Model model) {
		Item item = dao.readItem(id);
		model.addAttribute("item", item);
		System.out.println(item);
		return "result";
	}
	
	
	@RequestMapping(path = "Create.do", method = RequestMethod.GET)
	public String createItem() {
		
		return "create";
	}
	
	@RequestMapping(path = "Created.do", method = RequestMethod.POST)
	public String createdItem(Item item, Model model) {
		Item newItem = dao.createNewItem(item);
		if (newItem == null) {
			return "error";
		}
		
		model.addAttribute("item", newItem);
		return "result";
	}
	
	
	@RequestMapping(path = "Delete.do", method = RequestMethod.POST)
	public String deletedItem(int id, Model model) {
		boolean deleted = dao.deleteItem(id);
		model.addAttribute("deleted", deleted);
		return "result";
	}
	
	
	@RequestMapping(path = "Update.do", method = RequestMethod.GET)
	public String updateItem(int id, Model model) {
		
		model.addAttribute("item", dao.readItem(id));
		return "update";
	}
	@RequestMapping(path = "Updated.do", method = RequestMethod.POST)
	public String updatedItem(Item item, int id, Model model) {
		if(dao.updateItem(item, id) == null) {
			return "error";
		}
		Item newItem = dao.updateItem(item, id);
		model.addAttribute("item", newItem);
		return "result";
	}

}
