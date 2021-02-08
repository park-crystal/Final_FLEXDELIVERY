package com.project.fd.member.coupon.model;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberCouponDAOMybatis implements MemberCouponDAO{
	@Autowired SqlSessionTemplate sqlSesssion;
	private String namespace="config.mybatis.mapper.oracle.memberCoupon.";
	
	@Override
	public List<MemberStoresCouponVO> storeCouponList(Map<String, Object> map) {
		return sqlSesssion.selectList(namespace+"storeCouponList",map);
	}

	@Override
	public List<MemberRegularCouponBoxVO> memberCouponList(Map<String, Object> map) {
		return sqlSesssion.selectList(namespace+"memberCouponList",map);
	}

	@Override
	public int addCoupon(MemberRegularCouponBoxVO vo) {
		return sqlSesssion.insert(namespace+"addCoupon",vo);
	}

	@Override
	public int storeCouponCount(int storeNo) {
		return sqlSesssion.selectOne(namespace+"storeCouponCount",storeNo);
	}

	@Override
	public int useCoupon(Map<String, Object> map) {
		return sqlSesssion.update(namespace+"useCoupon",map);
	}
	
	
}
