package com.treefunding.vo;

import java.sql.Date;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class RewardItemVO {
	private String id;
	private int rewardTotalProjectNo;
	private String productName;
	private int ea;
	private int soldEa;
	private int price;
	private int sale;
	private Date sdate;
}
