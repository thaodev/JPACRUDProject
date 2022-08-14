package com.skilldistillery.hsptrack.data;

public interface UserDAO {
  User getUserByUserNameAndPassword(String userName, String password);
  User findUserById(int userId);
  User updateUser(int userId, User user);
}
