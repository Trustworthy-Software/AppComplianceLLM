package lu.snt.trux.regapp.Utils;

public class User {

    // Fields
    private String name;
    private String surname;
    private String birthDate;
    private String sex;
    private int height;
    private double weight;

    // Constructors
    // Required default constructor for Firebase
    public User() {}

    // Constructor with all fields
    public User(String name, String surname, String birthDate, int height, double weight, String sex) {
        this.name = name;
        this.surname = surname;
        this.birthDate = birthDate;
        this.height = height;
        this.weight = weight;
        this.sex = sex;
    }

    // Access Methods
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }
}
