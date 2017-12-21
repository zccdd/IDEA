package com.jk.dao;

import com.jk.model.Address;

import java.util.List;

public interface AddressMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Address address);

    int insertSelective(Address record);

    int updateByPrimaryKeySelective(Address record);

    int updateByPrimaryKey(Address record);

    List<Address> getAllAddress(int uid);
}