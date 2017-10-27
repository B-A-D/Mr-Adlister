package Dao;


import com.mysql.cj.jdbc.Driver;
import models.Ad;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public List<Ad> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public List<Ad> showUserAds(String username) {
        PreparedStatement stmt = null;
        String query = "select * from ads join users on users.id=ads.user_id and users.username=?";
        try {
            stmt = connection.prepareStatement(query);
            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public Long insert(Ad ad) {
        try {
            String insertQuery = "INSERT INTO ads(user_id, title, description, category) VALUES (?, ?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getUser_id());
            stmt.setString(2, ad.getTitle());
            stmt.setString(3, ad.getDescription());
            stmt.setString(4, ad.getCategory());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
                rs.getLong("id"),
                rs.getLong("user_id"),
                rs.getString("title"),
                rs.getString("description"),
                rs.getString("creation_date"),
                rs.getString("category")
        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }

    public List<Ad> search(String searchTerm) {
        try {
            PreparedStatement stmt = null;
            String query = "Select * from ads WHERE title LIKE ? OR description LIKE ?";
            stmt = connection.prepareStatement(query);
            stmt.setString(1, "%" + searchTerm + "%");
            stmt.setString(2, "%" + searchTerm + "%");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error searching Ads");
        }
    }

    @Override
    public List<Ad> searchByCategory(Ad ad) {

        try {
            PreparedStatement stmt=null;
            String query="Select category from ads WHERE category LIKE ?";
            stmt=connection.prepareStatement(query);
            stmt.setString(1, ad.getCategory());
            ResultSet rs=stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving ads by categories",e);
        }

    }

    @Override
    public Ad showSpecificById(Long id) {
        //Will display single page based on id.
        PreparedStatement stmt=null;
        String query="Select * from ads where id = ?";
        try {
            stmt=connection.prepareStatement(query);
            stmt.setLong(1, id);
            ResultSet rs=stmt.executeQuery();
            rs.next();
            return extractAd(rs);
        } catch (SQLException e) {
            throw new RuntimeException("There was an error displaying this ad",e);
        }

    }

    public void delete(long id) {
        PreparedStatement stmt = null;
        String query = "DELETE FROM ADS WHERE id = ?";
        try {
            stmt = connection.prepareStatement(query);
            stmt.setLong(1, id);
            stmt.executeUpdate();
        } catch (SQLException e) {
          throw new RuntimeException(e);
        }
    }
}

