package com.oe.test.model;

import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "users")
public class User {

    @Id
    @Column(name = "user_id", updatable = false)
    @GeneratedValue
    private Integer id;

    @Column(name = "username")
    @NotEmpty(message = "Заповніть поле!")
    private String login;

    @Column(name = "email")
    @NotEmpty(message = "Заповніть поле!")
    private String email;

    @Column(name = "password")
    @NotEmpty(message = "Заповніть поле!")
    private String pass;

    @Column(name = "password2")
    @NotEmpty(message = "Заповніть поле!")
    private String pass2;

    @Column(name = "enabled")
    private Integer enabled = 1;

    @OneToOne(mappedBy = "user", cascade = CascadeType.ALL)
    private Role role;

    @Column(name = "userfullname")
    @NotEmpty(message = "Заповніть поле!")
    private String fullname;

    @OneToMany(targetEntity = News.class, mappedBy = "user", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<News> news = new ArrayList<News>();

    public List<News> getNews() {
        return news;
    }

    public void setNews(List<News> news) {
        this.news = news;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public Integer getEnabled() {
        return enabled;
    }

    public void setEnabled(Integer enabled) {
        this.enabled = enabled;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getPass2() {
        return pass2;
    }

    public void setPass2(String pass2) {
        this.pass2 = pass2;
    }

}
