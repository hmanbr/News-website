
package entity;

import java.time.LocalDate;


public class Article {
    private int id;
    private String title;
    private String content;
    private LocalDate date;
    private int author_id;
    private String category;
    private String image;
    private String status;

    public Article() {
    }

    public Article(int id, String title, String content, LocalDate date, int author_id, String category, String image, String status) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.date = date;
        this.author_id = author_id;
        this.category = category;
        this.image = image;
        this.status = status;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getContent() {
        return content;
    }

    public LocalDate getDate() {
        return date;
    }

    public int getAuthor_id() {
        return author_id;
    }

    public String getCategory() {
        return category;
    }

    public String getImage() {
        return image;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public void setAuthor_id(int author_id) {
        this.author_id = author_id;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "Article{" + "id=" + id + ", title=" + title + ", content=" + content + ", date=" + date + ", author_id=" + author_id + ", category=" + category + ", image=" + image + '}';
    }
    
    
}
