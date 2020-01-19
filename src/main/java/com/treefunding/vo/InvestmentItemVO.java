package com.treefunding.vo;

import java.sql.Date;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class InvestmentItemVO {
	private String id;
	private int investmentTotalProjectNo;
	private String productName;
	private int ea;
	private int soldEa;
	private int price;
	private int one;
	private String benefits;
}
