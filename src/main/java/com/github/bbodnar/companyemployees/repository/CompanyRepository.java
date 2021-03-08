package com.github.bbodnar.companyemployees.repository;

import com.github.bbodnar.companyemployees.domain.Company;

import java.util.List;

public interface CompanyRepository {

    Company create(Company company);

    void delete(Company company);

    Company update(Company company);

    Company get(Long id);

    List<Company> getAll();

}
