package com.github.bbodnar.companyemployees.repository.impl;

import com.github.bbodnar.companyemployees.domain.Company;
import com.github.bbodnar.companyemployees.repository.CompanyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CompanyRepositoryImpl implements CompanyRepository {

    private final JdbcTemplate jdbcTemplate;
    private final RowMapper<Company> rowMapper;

    @Autowired
    public CompanyRepositoryImpl(JdbcTemplate jdbcTemplate,
                                 @Qualifier("getCompanyRowMapper") RowMapper<Company> rowMapper) {
        this.jdbcTemplate = jdbcTemplate;
        this.rowMapper = rowMapper;
    }

    @Override
    public Company create(Company company) {
        return null;
    }

    @Override
    public void delete(Company company) {

    }

    @Override
    public Company update(Company company) {
        return null;
    }

    @Override
    public Company get(Long id) {
        return null;
    }

    @Override
    public List<Company> getAll() {
        return null;
    }
}
