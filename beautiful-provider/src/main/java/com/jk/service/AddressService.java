package com.jk.service;

import com.jk.model.Address;

import java.util.List;

/**
 * Created by dell on 2017/12/20.
 */
public interface AddressService {
    List<Address> getAllAddress(int uid);

    void insertAddress(Address address);

    void deleteAddress(Integer id);
}
