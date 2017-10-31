package Dao;

import models.User;

public interface Users {
    User findbyUsername (String username);
    Long insert (User user);
    Long update (User user);
    void updateEmail (String email, Long id);
//    Long userId(String username);
}
