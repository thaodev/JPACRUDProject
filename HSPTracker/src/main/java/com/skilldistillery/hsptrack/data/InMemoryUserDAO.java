package com.skilldistillery.hsptrack.data;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

import org.springframework.stereotype.Repository;

@Repository
public class InMemoryUserDAO implements UserDAO {

  private Map<Integer, User> users;
  
  public InMemoryUserDAO () {
    users = new LinkedHashMap<>();
    
    users.put(1, new User(1, "bobdobbs", "password", "Bob", "Dobbs"));
    users.put(2, new User(2, "ronnie", "password1", "Ronnie", "Dobbs"));
    
    // Passwords below are hashed with MD5 algorithm
    // id: testuser, cleartext password: password
    users.put(3, new User(3, "testuser", "5f4dcc3b5aa765d61d8327deb882cf99", "Ronald", "McD"));
    // id: topper, cleartext password: topgun
    users.put(4, new User(4, "topper", "46a46b0a267201c0c742cee54685d62c", "Topper", "Harley"));
    users.put(5, new User(5, "officer", "officer", "Danny", "Cooler"));
  }
  
  @Override
  public User getUserByUserNameAndPassword(String userName, String password) {
    User u = null;
    Set<Integer> keys = users.keySet();
    for (Integer key : keys) {
      User user = users.get(key);
      if(user.getUserName().equals(userName) && user.getPassword().equals(password)) {
        u = user;
        break;
      }
    }
    return u;
  }

  @Override
  public User findUserById(int userId) {
    User u = users.get(userId);
    
    return u;
  }

  @Override
  public User updateUser(int userId, User user) {
    // not necessary
    return null;
  }

}
