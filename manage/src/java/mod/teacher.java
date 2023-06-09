package mod;

public class teacher {
    private int id;
    private String name;
    private String email;
    private String password;

    public teacher(){

    }

    public teacher(int id, String email, String password, String name) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
    }
    public teacher(String email, String password, String name) {
        System.out.println("teacher");
        this.name = name;
        this.email = email;
        this.password = password;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
