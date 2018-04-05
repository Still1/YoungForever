package com.oc.youngforever.book.domain;

import java.time.LocalDate;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "t_book")
public class Book {
    private Integer id;
    private String chineseName;
    private String name;
    private String subtitle;
    private String isbn;
    private Float price;
    private String publisher;
    private LocalDate publicationDate;
    private Byte bookBinding;
    private Byte page;
    private Float doubanValue;
    private Integer doubanCount;
    private Byte buyState;
    private String translator;
    
    private Set<Author> authors;
    
    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public String getChineseName() {
        return chineseName;
    }
    public void setChineseName(String chineseName) {
        this.chineseName = chineseName;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getSubtitle() {
        return subtitle;
    }
    public void setSubtitle(String subtitle) {
        this.subtitle = subtitle;
    }
    public String getIsbn() {
        return isbn;
    }
    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }
    public Float getPrice() {
        return price;
    }
    public void setPrice(Float price) {
        this.price = price;
    }
    public String getPublisher() {
        return publisher;
    }
    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }
    public LocalDate getPublicationDate() {
        return publicationDate;
    }
    public void setPublicationDate(LocalDate publicationDate) {
        this.publicationDate = publicationDate;
    }
    public Byte getBookBinding() {
        return bookBinding;
    }
    public void setBookBinding(Byte bookBinding) {
        this.bookBinding = bookBinding;
    }
    public Byte getPage() {
        return page;
    }
    public void setPage(Byte page) {
        this.page = page;
    }
    public Float getDoubanValue() {
        return doubanValue;
    }
    public void setDoubanValue(Float doubanValue) {
        this.doubanValue = doubanValue;
    }
    public Integer getDoubanCount() {
        return doubanCount;
    }
    public void setDoubanCount(Integer doubanCount) {
        this.doubanCount = doubanCount;
    }
    public Byte getBuyState() {
        return buyState;
    }
    public void setBuyState(Byte buyState) {
        this.buyState = buyState;
    }
    public String getTranslator() {
        return translator;
    }
    public void setTranslator(String translator) {
        this.translator = translator;
    }
    public Set<Author> getAuthors() {
        return authors;
    }
    public void setAuthors(Set<Author> authors) {
        this.authors = authors;
    }
}
