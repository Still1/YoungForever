package com.oc.youngforever.book.domain;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class Book {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String chineseName;
    private String name;
    private String subtitle;
    private String isbn;
    private Float price;
    private String publisher;
    private Short publicationYear;
    private Byte bookBinding;
    private Short page;
    private Float doubanValue;
    private Integer doubanCount;
    private Byte buyState;
    private String translator;
    
    @ManyToMany
    private List<Author> authors;
    
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
    public Short getPublicationYear() {
		return publicationYear;
	}
	public void setPublicationYear(Short publicationYear) {
		this.publicationYear = publicationYear;
	}
	public Byte getBookBinding() {
        return bookBinding;
    }
    public void setBookBinding(Byte bookBinding) {
        this.bookBinding = bookBinding;
    }
    public Short getPage() {
        return page;
    }
    public void setPage(Short page) {
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
	public List<Author> getAuthors() {
		return authors;
	}
	public void setAuthors(List<Author> authors) {
		this.authors = authors;
	}
}
