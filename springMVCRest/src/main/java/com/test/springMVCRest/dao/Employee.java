package com.test.springMVCRest.dao;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class Employee {
private Long id;
private String name;
 
public Employee(Long id, String name) {
    super();
    this.setId(id);
    this.setName(name);
}
public Employee() {
    super();
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public Long getId() {
	return id;
}
public void setId(Long id) {
	this.id = id;
}
}
