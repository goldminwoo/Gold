package com.treefunding.vo;

import java.sql.Date;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class RewardMainImageVO {
	private String id;
	private int rewardTotalProjectNo;
	private String mainImageFile;
}
