package com.project.fd.member.coupon.model;

import java.util.List;
import java.util.Map;

public interface MemberCouponDAO {
	List<MemberStoresCouponVO> storeCouponList(Map<String, Object> map);
	List<MemberRegularCouponBoxVO> memberCouponList(Map<String, Object> map);
	int addCoupon(MemberRegularCouponBoxVO vo);
	int storeCouponCount(int storeNo);
	int useCoupon(Map<String, Object> map);
}
