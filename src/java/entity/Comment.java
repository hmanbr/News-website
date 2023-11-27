/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.time.LocalDate;

public class Comment {
    int article_id;
    String name;
    String message;
    String email;
    LocalDate date;

    public Comment() {
    }

    public Comment(int article_id, String name, String message, String email, LocalDate date) {
        this.article_id = article_id;
        this.name = name;
        this.message = message;
        this.email = email;
        this.date = date;
    }

    public int getArticle_id() {
        return article_id;
    }

    public String getName() {
        return name;
    }

    public String getMessage() {
        return message;
    }

    public String getEmail() {
        return email;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setArticle_id(int article_id) {
        this.article_id = article_id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "Comment{" + "article_id=" + article_id + ", name=" + name + ", message=" + message + ", email=" + email + ", date=" + date + '}';
    }

    

    
    
}
