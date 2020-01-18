package com.skilldistillery.babysupplies.data;

import java.util.List;

import com.skilldistillery.babysupplies.entities.Item;

public interface ItemDAO {
	
	public List<Item> findAllItems();
	public Item createNewItem(Item createdItem);
	public Item updateItem(Item newItem, int id);
	public Item readItem(int id);
	public List<Item> readItemsByKeyword(String keyword);
	public boolean deleteItem(int id);

}
