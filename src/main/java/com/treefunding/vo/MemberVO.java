package com.treefunding.vo;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class MemberVO {
	
	private int no;
	private String name;
	private String id;
	private String password;
	private String email1;
	private String email2;
	private String phone1;
	private String phone2;
	private String phone3;
	private String address1;
	private String address2;
	private String businessType;
	private String onerName;
	private String businessLicense;
	private String companyName;
	private int credit;
	private Date joinDate;
	private Date loginDate;
	private Date blockDate;
	
	private String activeStatus;
	private int reportCount;
	
	//페이징 관련변수(쪽나누기)
	private int startRow;	//시작행 번호
	private int endRow;		//끝행 번호
	

}
