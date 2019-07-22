package com.oc.youngforever.book.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Author {
    @Id
    @GeneratedValue
	private Integer id;
    private String name;
    private String chineseName;
    private Short birth;
    private Short died;
    private String nationality;
    
    
    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getChineseName() {
        return chineseName;
    }
    public void setChineseName(String chineseName) {
        this.chineseName = chineseName;
    }
    public Short getBirth() {
        return birth;
    }
    public void setBirth(Short birth) {
        this.birth = birth;
    }
    public Short getDied() {
        return died;
    }
    public void setDied(Short died) {
        this.died = died;
    }
    public String getNationality() {
        return nationality;
    }
    public void setNationality(String nationality) {
        this.nationality = nationality;
    }
}
