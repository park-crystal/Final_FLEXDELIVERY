package com.project.fd.admin.temporary.model;

import java.util.List;

public interface AdminTemporaryDAO {
	public List<AdminTemporaryVO> editList();
	public AdminTemporaryVO editDetail(int no);
	public int editAgree(int no);
	public int editDeny(int no);
}
