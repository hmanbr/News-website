
package entity;

public class Video {
    String name;
    int id;
    String link;
    String category;
    String image;

    public Video() {
    }

    public Video(String name, int id, String link, String category, String image) {
        this.name = name;
        this.id = id;
        this.link = link;
        this.category = category;
        this.image = image;
    }

    public String getName() {
        return name;
    }

    public int getId() {
        return id;
    }

    public String getLink() {
        return link;
    }

    public String getCategory() {
        return category;
    }

    public String getImage() {
        return image;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "Video{" + "name=" + name + ", id=" + id + ", link=" + link + ", category=" + category + ", image=" + image + '}';
    }
    
    
}
