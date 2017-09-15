package com.wura.languages2.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.wura.languages2.models.Language;

@Repository
public interface LanguageRepository extends CrudRepository<Language, Long> {

}
