package src.main.java.Dao;

import src.main.java.models.User;

public interface Users {
    User findbyUsername (String username);

    Long insert (User user);
}
