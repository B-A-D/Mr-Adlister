package src.main.java.Dao;

import src.main.java.models.Ad;

import java.util.List;

public interface Ads {
    List<Ad> all ();

    Long insert (Ad ad);
}