package com.github.bbodnar.companyemployees.repository;

import com.github.bbodnar.companyemployees.domain.Employee;

import java.util.List;

public interface EmployeeRepository {
    Employee create(Employee employee);

    void delete(Employee employee);

    Employee update(Employee employee);

    Employee get(Long id);

    List<Employee> getAll();
}
