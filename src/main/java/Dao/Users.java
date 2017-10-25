package Dao;

import models.User;

public interface Users {
    User findbyUsername (String username);

    Long insert (User user);
}
