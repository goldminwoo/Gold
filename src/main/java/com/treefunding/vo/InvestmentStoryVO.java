package com.treefunding.vo;

import java.sql.Date;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class InvestmentStoryVO {
	private String id;
	private int investmentTotalProjectNo;
	private String storyCont;
}
