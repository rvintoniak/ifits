package com.oe.test.model;

import javax.persistence.*;

@Entity
@Table(name = "book_rating")
public class Rating {

    @Id
    @Column(name = "id")
    @GeneratedValue
    private Integer id;

    @Column(name = "rating_value")
    private String value;

    @JoinColumn(name = "book_id")
    @ManyToOne(cascade = CascadeType.PERSIST)
    private Book book;

    @ManyToOne(cascade = CascadeType.PERSIST)
    @JoinColumn(name = "user_id")
    private User user;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
