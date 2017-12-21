package com.jk.service.impl;

import com.jk.dao.AddressMapper;
import com.jk.model.Address;
import com.jk.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by dell on 2017/12/20.
 */
@Service("addressService")
public class AddressServiceImpl implements AddressService {

    @Autowired
    private AddressMapper addressMapper;
    @Override
    public List<Address> getAllAddress(int uid) {
        return addressMapper.getAllAddress(uid);
    }

    @Override
    public void insertAddress(Address address) {
        addressMapper.insert(address);
    }

    @Override
    public void deleteAddress(Integer id) {
        addressMapper.deleteByPrimaryKey(id);
    }
}
