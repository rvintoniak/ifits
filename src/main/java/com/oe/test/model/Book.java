package com.oe.test.model;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "books")
public class Book {

    @Id
    @Column(name = "id")
    @GeneratedValue
    private Integer id;

    @Column(name = "tittle")
    @NotEmpty(message = "Заповніть поле!")
    private String tittle;

    @Column(name = "author")
    @NotEmpty(message = "Заповніть поле!")
    private String author;

    @Column(name = "description")
    @NotEmpty(message = "Заповніть поле!")
    private String description;

    @Column(name = "pubYear")
    @NotNull(message = "Заповніть поле!")
    private Integer pubYear;

    @Column(name = "date", insertable = false, updatable = false)
    private Date date = new Date();

    @ManyToOne(cascade = CascadeType.PERSIST)
    @JoinColumn(name = "user_id")
    private User user;

    private String img;

    private String file;

    @Transient
    private CommonsMultipartFile image;

    @Transient
    private CommonsMultipartFile bookfile;

    @OneToMany(targetEntity = Rating.class, mappedBy = "book", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Rating> ratings = new ArrayList<Rating>();

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTittle() {
        return tittle;
    }

    public void setTittle(String tittle) {
        this.tittle = tittle;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getPubYear() {
        return pubYear;
    }

    public void setPubYear(Integer pubYear) {
        this.pubYear = pubYear;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public CommonsMultipartFile getImage() {
        return image;
    }

    public void setImage(CommonsMultipartFile image) {
        this.image = image;
    }

    public String getFile() {
        return file;
    }

    public void setFile(String file) {
        this.file = file;
    }

    public CommonsMultipartFile getBookfile() {
        return bookfile;
    }

    public void setBookfile(CommonsMultipartFile bookfile) {
        this.bookfile = bookfile;
    }

    public List<Rating> getRatings() {
        return ratings;
    }

    public void setRatings(List<Rating> ratings) {
        this.ratings = ratings;
    }
}
