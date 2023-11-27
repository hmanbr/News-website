/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author MSI
 */
public class TopAuthor {
    private String image;
    private String name;
    private int total;

    public TopAuthor() {
    }

    public TopAuthor(String image, String name, int total) {
        this.image = image;
        this.name = name;
        this.total = total;
    }

    public String getImage() {
        return image;
    }

    public String getName() {
        return name;
    }

    public int getTotal() {
        return total;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "TopAuthor{" + "image=" + image + ", name=" + name + ", total=" + total + '}';
    }
    
    
}
