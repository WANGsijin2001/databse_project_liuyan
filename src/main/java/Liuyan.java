package model;
import java.io.Serializable;
import java.sql.Date;
public class Liuyan implements Serializable {
    private int id;
    private int userId;
    private String date;
    private String title;
    private String content;
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id=id;
    }
    public int getUserId() {
        return userId;
    }
    public void setUserId(int userId) {
        this.userId=userId;
    }
    public String getDate() {
        return date;
    }
    public void setDate(String date) {
        this.date=date;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title=title;
    }
    public String getContent() {
        return content;
    }
    public void setContent(String content) {
        this.content=content;
    }
}
