package com.github.bbodnar.companyemployees.repository.impl;

import com.github.bbodnar.companyemployees.domain.Employee;
import com.github.bbodnar.companyemployees.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public class EmployeeRepositoryImpl implements EmployeeRepository {

    private final JdbcTemplate jdbcTemplate;
    private final RowMapper<Employee> rowMapper;

    @Autowired
    public EmployeeRepositoryImpl(JdbcTemplate jdbcTemplate,
                                  @Qualifier("getEmployeeRowMapper") RowMapper<Employee> rowMapper) {
        this.jdbcTemplate = jdbcTemplate;
        this.rowMapper = rowMapper;
    }

    @Override
    public Employee create(Employee employee) {
        return null;
    }

    @Override
    public void delete(Employee employee) {

    }

    @Override
    public Employee update(Employee employee) {
        return null;
    }

    @Override
    public Employee get(Long id) {
        return null;
    }

    @Override
    public List<Employee> getAll() {
        return null;
    }
}
