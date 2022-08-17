package com.example.springboot;
import java.nio.file.Files; 
import java.nio.file.Path;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BlinkyController {

	@GetMapping("/blinky")
	public String index() {
		try {
			return new String(Files.readString(Path.of("blinky.txt")));
		} catch (Exception e) {
			System.out.println(e);
		}

		return "blinky not found";
	}

}