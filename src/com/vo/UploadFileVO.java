package com.vo;

import java.io.Serializable;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;


public class UploadFileVO implements Serializable {
	private static final long serialVersionUID = 74458L;
	
	private List<MultipartFile> uploadfile;
	 
	public List<MultipartFile> getUploadfile() {
		return uploadfile;
	}
	public void setUploadfile(List<MultipartFile> uploadfile) {
		this.uploadfile = uploadfile;
	}
	 

}
