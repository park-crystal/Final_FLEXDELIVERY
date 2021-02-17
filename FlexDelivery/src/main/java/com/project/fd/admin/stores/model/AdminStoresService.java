package com.project.fd.admin.stores.model;

import java.util.List;

import com.project.fd.owner.store.model.OwnerTemporaryVO;

public interface AdminStoresService {
	public List<AdminStoresVO> adminApprovalList();
	public AdminStoresVO adminApprovalDetail(int no);
	public int adminApprovalAgree(int no);
	public int adminApprovalDeny(int no);
}
