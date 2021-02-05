package com.project.fd.owner.request.model;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.fd.owner.advertise.model.OwnerStoreAdVO;
import com.project.fd.owner.ownerregister.model.OwnerRegisterVO;
import com.project.fd.owner.store.model.OwnerStoresVO;
import com.project.fd.owner.store.model.OwnerTemporaryVO;

@Service
public class OwnerRequestServiceImpl implements OwnerRequestService{

	@Autowired OwnerRequestDAO requestDao;

	@Override
	public List<Map<String, Object>> selectRegi(int ownerNo) {
		return requestDao.selectRegi(ownerNo);
	}

	@Override
	public List<Map<String, Object>> selectStore(int ownerNo) {
		return requestDao.selectStore(ownerNo);
	}

	@Override
	public List<Map<String, Object>>  selectAd(int ownerNo) {
		return requestDao.selectAd(ownerNo);
	}

	@Override
	public List<Map<String, Object>> selectTemp(int ownerNo) {
		return requestDao.selectTemp(ownerNo);
	}

	@Override
	public OwnerRegisterVO selectRegiVo(long oRegisterNo) {
		return requestDao.selectRegiVo(oRegisterNo);
	}

	@Override
	public OwnerStoresVO selectStoresVO(int storeNo) {
		return requestDao.selectStoresVO(storeNo);
	}

	@Override
	public OwnerTemporaryVO selectTempVO(int tNo) {
		return requestDao.selectTempVO(tNo);
	}

	@Override
	public OwnerStoreAdVO selectAD(int storeadNo) {
		return requestDao.selectAD(storeadNo);
	}

	@Override
	public int updateRegi(long oRegisterNo) {
		return requestDao.updateRegi(oRegisterNo);
	}

	@Override
	public int updateStore(int storeNo) {
		return requestDao.updateStore(storeNo);
	}

	@Override
	public int updateTempstore(int tNo) {
		return requestDao.updateTempstore(tNo);
	}


	
}
