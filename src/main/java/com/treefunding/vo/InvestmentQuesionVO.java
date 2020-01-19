package com.treefunding.vo;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class InvestmentQuesionVO {
	private String id;
	private int investmentTotalProjectNo;
	private String queEmail;
	private String quePhone1;
	private String quePhone2;
	private String quePhone3;
	private String queUrl;
	private String queSns;
}
