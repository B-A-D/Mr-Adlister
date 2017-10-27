package Dao;

import models.Ad;
import models.User;

import java.util.List;

public interface Ads {
    List<Ad> all ();
    Long insert (Ad ad);
    List<Ad> showUserAds (String username);
    List<Ad> search (String searchTerm);
    List<Ad> searchByCategory(Ad ad);
    Ad showSpecificById(Long id);
    void delete (long id);


}
