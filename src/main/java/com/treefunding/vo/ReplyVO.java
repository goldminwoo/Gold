package com.treefunding.vo;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class ReplyVO {

	int no;
	int boardNo;
	String id;
	String content;
}
