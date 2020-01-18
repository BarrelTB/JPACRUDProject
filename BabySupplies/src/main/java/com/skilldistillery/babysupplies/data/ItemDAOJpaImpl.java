package com.skilldistillery.babysupplies.data;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.skilldistillery.babysupplies.entities.Item;
import com.skilldistillery.babysupplies.entities.Quality;

@Service
@Transactional
public class ItemDAOJpaImpl implements ItemDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public List<Item> findAllItems() {
		String query = "SELECT item FROM Item item";
		
		List<Item> items = em.createQuery(query, Item.class).getResultList();
		
		return items;
	}

	@Override
	public Item createNewItem(Item createdItem) {
		
		em.persist(createdItem);
		
		em.flush();
		
		return createdItem;
	}

	@Override
	public Item updateItem(Item newItem, int id) {
		
		String query = "SELECT item FROM Item item WHERE item.id = :itemId";
		
		List<Item> items = em.createQuery(query, Item.class).setParameter("itemId", id).getResultList();
		
		for (Item oldItem : items) {
			oldItem.setName(newItem.getName());
			oldItem.setDescription(newItem.getDescription());
			oldItem.setManufacturer(newItem.getManufacturer());
			oldItem.setLink(newItem.getLink());
			oldItem.setAgeRange(newItem.getAgeRange());
			oldItem.setPurchaseYear(newItem.getPurchaseYear());
			oldItem.setNumAvailable(newItem.getNumAvailable());
			oldItem.setQuality(newItem.getQuality());
			oldItem.setPrice(newItem.getPrice());
		}
	
		em.flush();
		
		return items.size() == 0 ? null : items.get(0);
	}

	@Override
	public Item readItem(int id) {
		String query = "SELECT item FROM Item item WHERE item.id = :itemId";
		
		List<Item> items = em.createQuery(query, Item.class).setParameter("itemId", id).getResultList();
		
		
		
		return items.size() == 0 ? null : items.get(0);
	}

	@Override
	public List<Item> readItemsByKeyword(String keyword) {
		String query = "SELECT item FROM Item item WHERE item.name LIKE :titleWord OR item.description LIKE :descWord";
		
		List<Item> items = em.createQuery(query, Item.class).setParameter("titleWord", "%" + keyword + "%").setParameter("descWord", "%" + keyword + "%").getResultList();
		
	
		
		return items;
	}

	@Override
	public boolean deleteItem(int id) {
		
		try {
			Item item = em.find(Item.class, id);
			
			em.remove(item);
			em.flush();
			
			return true;
		} catch (Exception e) {
			return false;
		}
		
	}
	
	
}
