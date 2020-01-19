package com.treefunding.vo;

import java.sql.Date;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class MemberRewardFundingVO {
	private int no;//번호
	private String id;//구매한 회원 아이디
	private String productName;//상품명
	private int fundingPrice;//펀딩 금액
	private int ea;//구매 개수
	private String options;//옵션
	private int donation;//후원금
}
