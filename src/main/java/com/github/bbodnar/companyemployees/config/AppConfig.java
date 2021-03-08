package com.github.bbodnar.companyemployees.config;

import com.github.bbodnar.companyemployees.domain.Company;
import com.github.bbodnar.companyemployees.domain.Employee;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.RowMapper;

@Configuration
public class AppConfig {

    @Bean
    public RowMapper<Employee> getEmployeeRowMapper(){
        return new BeanPropertyRowMapper<>(Employee.class);
    }

    @Bean
    public RowMapper<Company> getCompanyRowMapper(){
        return new BeanPropertyRowMapper<>(Company.class);
    }
}
