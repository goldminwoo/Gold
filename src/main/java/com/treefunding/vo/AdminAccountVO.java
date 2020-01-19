package com.treefunding.vo;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class AdminAccountVO {
	
	private String id;
	private String password;

}
