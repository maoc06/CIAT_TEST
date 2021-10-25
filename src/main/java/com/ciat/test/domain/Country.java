package com.ciat.test.domain;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Id;
import javax.persistence.Column;

@Entity
@Table(name = "country", schema = "public")
public class Country implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name = "country_id", unique = true, nullable = false)
	private Integer countryId;
	
	@Id
	@Column(name = "name", unique = true, nullable = false)
	private String name;
}
