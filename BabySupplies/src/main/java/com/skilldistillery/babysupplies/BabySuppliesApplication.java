package com.skilldistillery.babysupplies;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan("com.skilldistillery.babysupplies")
public class BabySuppliesApplication {

	public static void main(String[] args) {
		SpringApplication.run(BabySuppliesApplication.class, args);
	}

}
