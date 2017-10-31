package models;

import java.util.Locale;

public class Ad {
    private long id;
    private long user_id;
    private String title;
    private String description;
    private User user;
    private String date_time;
    private String category;

    public Ad (long id, long user_id, String title, String description) {
        this.id = id;
        this.user_id = user_id;
        this.title = title;
        this.description = description;
    }

    public Ad (long user_id, String title, String description) {
        this.user_id = user_id;
        this.title = title;
        this.description = description;

    }

    public Ad(long id, long user_id, String title, String description, String date_time){
        this.id = id;
        this.user_id = user_id;
        this.title = title;
        this.description = description;
        this.date_time = date_time;
    }
    public Ad(long id, long user_id, String title, String description, String date_time, String category){
        this.id = id;
        this.user_id = user_id;
        this.title = title;
        this.description = description;
        this.date_time = date_time;
        this.category=category;
    }
    public Ad(long user_id, User user, String title, String description, String category){
        this.user_id=user_id;
        this.title=title;
        this.description=description;
        this.user=user;
        this.category=category;
    }
    public Ad(long user_id, String title, String description, String category){
        this.user_id=user_id;
        this.title=title;
        this.description=description;
        this.category=category;
    }


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUser_id() {
        return user_id;
    }

    public void setUser_id(long user_id) {
        this.user_id = user_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public String getDate_time(){
        return date_time;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getUsername(){
        return user.getUsername();
    }

    public String getCategory(){
        return category;
    }
    public void setCategory(String category){
        this.category=category;
    }
}
