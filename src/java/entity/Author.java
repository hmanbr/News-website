
package entity;


public class Author {
    private int id;
    private String name;
    private String email;
    private boolean status;
    private String image;

    public Author() {
    }

    public Author(int id, String name, String email, boolean status, String image) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.status = status;
        this.image = image;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
   
    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
    
    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "Author{" + "id=" + id + ", name=" + name + ", email=" + email + '}';
    }
    
    
}
