package com.waly.walyLearn.entities;

import jakarta.persistence.*;

import java.util.*;

@Entity
@Table(name = "tb_course")
public class Course {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String imgUrl;
    private String imgGrayUrl;

    @OneToMany(mappedBy = "course")
    private List<Offer> offers = new ArrayList<>();
    public Course(){}

    public Course(Long id, String name, String imgUrl, String imgGrayUrl) {
        this.id = id;
        this.name = name;
        this.imgUrl = imgUrl;
        this.imgGrayUrl = imgGrayUrl;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public String getImgGrayUrl() {
        return imgGrayUrl;
    }

    public void setImgGrayUrl(String imgGrayUrl) {
        this.imgGrayUrl = imgGrayUrl;
    }

    public List<Offer> getOffers() {
        return offers;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Course course = (Course) o;

        return Objects.equals(id, course.id);
    }

    @Override
    public int hashCode() {
        return id != null ? id.hashCode() : 0;
    }
}
