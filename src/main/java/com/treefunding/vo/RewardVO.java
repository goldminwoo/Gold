package com.treefunding.vo;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class RewardVO {
	private int projectNo;
	private int rewardTotalProjectNo;
	private int attention;
	private String id;
	private String projectName;
	private String name;
	private String phone1;
	private String phone2;
	private String phone3;
	private String address1;
	private String address2;
	private int pay;
	private String businessNumber;
	private String companyName;
	private String searchTag;
	private String cate;
	private int approved;

	private Date testDatepicker1;

	private Date testDatepicker2;
	
	  //페이징 관련변수(쪽나누기)
	   private int startRow;   //시작행 번호
	   private int endRow;      //끝행 번호
}
