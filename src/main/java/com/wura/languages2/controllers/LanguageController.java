package com.wura.languages2.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.wura.languages2.models.Language;
import com.wura.languages2.servicies.LanguageService;

@Controller
public class LanguageController {
	private final LanguageService service;
	public LanguageController(LanguageService service) {
		this.service = service;
	}
	@RequestMapping("/")
	public String home(@ModelAttribute("new") Language language, Model model) {
		List<Language> languages = service.all();
		model.addAttribute("languages", languages);
		return "home";
	}
	@PostMapping("/")
	public String add(@Valid @ModelAttribute("new") Language language, BindingResult result) {
		if(result.hasErrors()) {
			return "home";
		}
		service.add(language);
		return "redirect:/";
	}
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable("id") Long id) {
		service.delete(id);
		return "redirect:/";
	}
	@RequestMapping("/find/{id}")
	public String find(@PathVariable("id") Long id, Model model) {
		model.addAttribute("result", service.find(id));
		return "show";
	}
	@RequestMapping("/edit/{id}")
	public String edit(@PathVariable("id") Long id, Model model) {
		model.addAttribute("edit", service.find(id));
		return "edit";
	}
	@PostMapping("/edit/{id}")
	public String update(@Valid @ModelAttribute("edit") Language langauge, BindingResult result) {
		if(result.hasErrors()) {
			return "edit";
		}
		service.update(langauge);
		return "redirect:/";
	}
}
