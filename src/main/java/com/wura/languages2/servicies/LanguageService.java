package com.wura.languages2.servicies;

import java.util.List;

import org.springframework.stereotype.Service;

import com.wura.languages2.models.Language;
import com.wura.languages2.repositories.LanguageRepository;

@Service
public class LanguageService {
	private LanguageRepository languageRepository;
	public LanguageService(LanguageRepository languageRepository) {
		this.languageRepository = languageRepository;
	}
	
	public List<Language> all(){
		return (List<Language>) this.languageRepository.findAll();
	}
	public void add(Language language) {
		languageRepository.save(language);
	}
	public void delete(Long id) {
		languageRepository.delete(id);
	}
	public Language find(Long id) {
		return languageRepository.findOne(id);
	}
	public void update(Language langauge) {
		languageRepository.save(langauge);
	}
}
