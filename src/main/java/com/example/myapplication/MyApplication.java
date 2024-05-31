package com.example.myapplication;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SpringBootApplication(scanBasePackages = "com.example.myapplication")
public class MyApplication {

  @RequestMapping("/")
  String home() {
    return "Hello World!";
  }

	public static void main(String[] args) {
		SpringApplication.run(MyApplication.class, args);
	}

}
