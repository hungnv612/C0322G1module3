package service;

import model.User;
import reponsitory.IUserReponsitory;
import reponsitory.UserReponsitory;

import java.sql.SQLException;
import java.util.List;

public class UserService implements IUserService {
    private IUserReponsitory iUserReponsitory  = new UserReponsitory();

    @Override
    public void insertUser(User user) throws SQLException {
        iUserReponsitory.insertUser(user);
    }

    @Override
    public User selectUser(int id) {
        return iUserReponsitory.selectUser(id);
    }

    @Override
    public List<User> selectAllUsers() {
        return iUserReponsitory.selectAllUsers();
    }

    @Override
    public boolean deleteUser(int id) throws SQLException {
        return iUserReponsitory.deleteUser(id);
    }

    @Override
    public boolean updateUser(User user) throws SQLException {
        return iUserReponsitory.updateUser(user);
    }

    @Override
    public List<User> findByName(String name) {
        return iUserReponsitory.findByName(name);
    }

    @Override
    public List<User> sortUsers() {
        return iUserReponsitory.sortUsers();
    }
}
