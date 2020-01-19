package com.treefunding.vo;


import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class BoardVO {
	private int no;
	private String id;
	private String title;
	private String editor;
	private int hitCount;
	private int reportCount;
	private int spamCount;
	private int sexualCount;
	private int swearWordCount;
	private String blindStatus;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date writeDate;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date modifiedDate;
	
	//페이징 관련변수(쪽나누기)
	private int startRow;	//시작행 번호
	private int endRow;		//끝행 번호
	
	//검색
	private String searchCondition;
	private String searchKeyword;
	
}
