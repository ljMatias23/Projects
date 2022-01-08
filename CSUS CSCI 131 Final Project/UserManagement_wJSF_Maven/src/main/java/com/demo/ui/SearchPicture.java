package com.demo.ui;

import javax.annotation.ManagedBean;
import javax.inject.Inject;
import javax.inject.Named;

import org.springframework.context.annotation.Scope;

import com.demo.dto.Picture;

@Named
@ManagedBean
@Scope("session")
public class SearchPicture {

	@Inject
	private Picture picture;

	public String execute() {
		if (picture != null && picture.getName().equalsIgnoreCase("Redbud")) {
			return "search";
		} else {
			return "noresults";
		}
	}

	public Picture getPicture() {
		return picture;
	}

	public void setPicture(Picture picture) {
		this.picture = picture;
	}
}
