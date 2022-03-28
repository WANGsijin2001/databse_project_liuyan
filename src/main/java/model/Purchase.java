package model;

public class Purchase {
    private int id;
    private String name;
    private String tim;
    private String supply;
    private String person;
    private double value;

    public double getValue() {
        return value;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getPerson() {
        return person;
    }

    public String getSupply() {
        return supply;
    }

    public String getTim() {
        return tim;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPerson(String person) {
        this.person = person;
    }

    public void setSupply(String supply) {
        this.supply = supply;
    }

    public void setTim(String tim) {
        this.tim = tim;
    }

    public void setValue(double value) {
        this.value = value;
    }
}
