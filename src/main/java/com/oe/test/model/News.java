package com.oe.test.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "news")
public class News {

    @Id
    @Column(name = "id")
    @GeneratedValue
    private Integer id;

    @Column(name = "tittle")
    private String tittle;

    @Column(name = "description")
    private String description;

    @Column(name = "date", insertable = false, updatable = false)
    private Date date = new Date();

    @ManyToOne(cascade = CascadeType.PERSIST)
    @JoinColumn(name = "user_id")
    private User user;

    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category category;

    private String filename;

    @Lob
    private byte[] file;

    private String contentType;

    public String getContentType() {
        return contentType;
    }

    public void setContentType(String contentType) {
        this.contentType = contentType;
    }

    public byte[] getFile() {
        return file;
    }

    public void setFile(byte[] file) {
        this.file = file;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category_id) {
        this.category = category_id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user_id) {
        this.user = user_id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
