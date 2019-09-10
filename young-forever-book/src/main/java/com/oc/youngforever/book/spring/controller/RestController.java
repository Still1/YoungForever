package com.oc.youngforever.book.spring.controller;

import com.oc.ocframework.data.service.DataService;
import net.sf.jsqlparser.JSQLParserException;
import org.dom4j.DocumentException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.io.IOException;

@org.springframework.web.bind.annotation.RestController
@RequestMapping(value = "/webservice")
public class RestController {

    @Autowired
    private DataService dataService;

    @RequestMapping(value = "/books", method = RequestMethod.GET)
    public String getBooks() throws DocumentException, JSQLParserException, IOException {
        String fileName = "book";
        String sqlName = "bookDataGrid";
        String resultSetJson = this.dataService.getDataGridResultSetJson(fileName, sqlName);
        return resultSetJson;
    }
}
