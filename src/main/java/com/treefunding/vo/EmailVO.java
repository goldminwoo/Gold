package com.treefunding.vo;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class EmailVO {
	
	private String email1;
	private String email2;
	private String emailCode;
}
