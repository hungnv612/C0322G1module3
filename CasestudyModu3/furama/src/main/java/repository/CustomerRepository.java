package repository;

import com.mysql.cj.jdbc.ConnectionImpl;
import model.Customer;

import javax.swing.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    BaseRepository baseRepository = new BaseRepository();
    List<Customer> customerList = new ArrayList<>();
    private static final String SELECT_ALL_CUSTOMER = "select * from customer";
    private static final String INSERT_CUSTOMER_SQL = "INSERT INTO customer" + "  (customer_type_id, customer_name, " +
            "customer_birthday, customer_gender, customer_id_card, " +
            "customer_phone, customer_email, customer_address) VALUES " +
            " (?, ?, ?, ?, ?, ?, ?, ?);";
    private static final String UPDATE_CUSTOMER_SQL = "update customer set customer_type_id = ?,customer_name= ?, customer_birthday =?, customer_gender =?" +
            ", customer_id_card =?, customer_phone =?, customer_email =?, customer_address =? where customer_id = ?;";
    private static final String SELECT_CUSTOMER_BY_ID = "select * from customer where customer_id =?";
    private static final String DELETE_CUSTOMER_SQL = "delete from customer where customer_id = ?;";

    @Override
    public void insertCustomer(Customer customer) throws SQLException {
        Connection connection = baseRepository.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CUSTOMER_SQL);
        preparedStatement.setInt(1, customer.getIdType());
        preparedStatement.setString(2, customer.getName());
        preparedStatement.setString(3, customer.getDate());
        preparedStatement.setInt(4, customer.getGender());
        preparedStatement.setString(5, customer.getIdCard());
        preparedStatement.setString(6, customer.getPhone());
        preparedStatement.setString(7, customer.getEmail());
        preparedStatement.setString(8, customer.getAddress());
        preparedStatement.executeUpdate();
    }

    @Override
    public Customer selectCustomer(int id) {
        Customer customer = null;
        try  {
            Connection connection = baseRepository.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CUSTOMER_BY_ID);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int idS = resultSet.getInt("customer_id");
                int idType = resultSet.getInt("customer_type_id");
                String name = resultSet.getString("customer_name");
                String date = resultSet.getString("customer_birthday");
                int gender = resultSet.getInt("customer_gender");
                String idCard = resultSet.getString("customer_id_card");
                String phone = resultSet.getString("customer_phone");
                String email = resultSet.getString("customer_email");
                String country = resultSet.getString("customer_address");
                customer = new Customer(idS,idType, name, date, gender, idCard, phone, email, country);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customer;
    }


    @Override
    public List<Customer> selectAllCustomer() {
        customerList.clear();
        try {
            Connection connection = baseRepository.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CUSTOMER);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("customer_id");
                int idType = resultSet.getInt("customer_type_id");
                String name = resultSet.getString("customer_name");
                String date = resultSet.getString("customer_birthday");
                int gender = resultSet.getInt("customer_gender");
                String idCard = resultSet.getString("customer_id_card");
                String phone = resultSet.getString("customer_phone");
                String email = resultSet.getString("customer_email");
                String country = resultSet.getString("customer_address");
                customerList.add(new Customer(id, idType, name, date, gender, idCard, phone, email, country));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customerList;
    }

    @Override
    public boolean deleteCustomer(int id) throws SQLException {
        boolean rowDeleted = false;
        try {
            Connection connection = baseRepository.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_CUSTOMER_SQL);
            preparedStatement.setInt(1, id);
            rowDeleted = preparedStatement.executeUpdate() > 0;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return rowDeleted;
    }

    @Override
    public boolean updateCustomer(Customer customer) throws SQLException {
        boolean rowUpdated;
            Connection connection = baseRepository.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_CUSTOMER_SQL);
            preparedStatement.setInt(1, customer.getIdType());
            preparedStatement.setString(2, customer.getName());
            preparedStatement.setString(3, customer.getDate());
            preparedStatement.setInt(4, customer.getGender());
            preparedStatement.setString(5, customer.getIdCard());
            preparedStatement.setString(6, customer.getPhone());
            preparedStatement.setString(7, customer.getEmail());
            preparedStatement.setString(8, customer.getAddress());
            preparedStatement.setInt(9, customer.getId());
            rowUpdated = preparedStatement.executeUpdate() > 0;

        return rowUpdated;
    }



}
