package com.oe.test.model;

import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "events")
public class Event {

    @Id
    @Column(name = "id")
    @GeneratedValue
    private Integer id;

    @Column(name = "tittle")
    @NotEmpty(message = "Заповніть поле!")
    private String tittle;

    @Column(name = "address")
    @NotEmpty(message = "Заповніть поле!")
    private String address;

    @Column(name = "description")
    @NotEmpty(message = "Заповніть поле!")
    private String description;

    @Column(name = "text")
    @NotEmpty(message = "Заповніть поле!")
    private String text;

    @Column(name = "date_create", insertable = false, updatable = false)
    private Date dateCreate = new Date();

    @Column(name = "date_start")
    private Date dateStart;

    @Column(name = "time_start")
    @NotEmpty(message = "Заповніть поле!")
    private String timeStart;

    @ManyToOne(cascade = CascadeType.PERSIST)
    @JoinColumn(name = "user_id")
    private User user;

    @Lob
    private byte[] file;

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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public Date getDateCreate() {
        return dateCreate;
    }

    public void setDateCreate(Date dateCreate) {
        this.dateCreate = dateCreate;
    }

    public Date getDateStart() {
        return dateStart;
    }

    public void setDateStart(Date dateStart) {
        this.dateStart = dateStart;
    }

    public String getTimeStart() {
        return timeStart;
    }

    public void setTimeStart(String timeStart) {
        this.timeStart = timeStart;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public byte[] getFile() {
        return file;
    }

    public void setFile(byte[] file) {
        this.file = file;
    }
}
