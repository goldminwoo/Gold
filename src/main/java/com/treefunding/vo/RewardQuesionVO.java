package com.treefunding.vo;

import java.sql.Date;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class RewardQuesionVO {
	private String id;
	private int rewardTotalProjectNo;
	private String queEmail;
	private String quePhone1;
	private String quePhone2;
	private String quePhone3;
	private String queUrl;
	private String queSns;
}
