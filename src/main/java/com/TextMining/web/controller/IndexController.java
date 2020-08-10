package com.TextMining.web.controller;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class IndexController {

	@GetMapping("/index")
	public String getIndex() {
		return "index";
	}

	@PostMapping("/getURL")
	@ResponseBody
	public String[] getURL(String URL) throws IOException {
		Document doc = Jsoup.connect(URL).get();
		String[] splited =doc.text().split(" ");
		return splited;
	}
}
