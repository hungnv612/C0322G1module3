package service;

import model.Customer;
import repository.CustomerRepository;

import java.sql.SQLException;
import java.util.List;

public class CustomerService implements ICustomerService {
    CustomerRepository customerRepository = new CustomerRepository();

    @Override
    public void insertCustomer(Customer customer) throws SQLException {
        customerRepository.insertCustomer(customer);
    }

    @Override
    public Customer selectCustomer(int id) {
        return customerRepository.selectCustomer(id);
    }

    @Override
    public List<Customer> selectAllCustomer() {
        return customerRepository.selectAllCustomer();
    }

    @Override
    public boolean deleteCustomer(int id) throws SQLException {
        return customerRepository.deleteCustomer(id);
    }

    @Override
    public boolean updateCustomer(Customer customer) throws SQLException {
        return customerRepository.updateCustomer(customer);
    }


}
