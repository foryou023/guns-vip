package com.foryou.dao;

import com.foryou.domain.UserPo;

import java.util.List;

//@Repository
public interface UserDao {

    List<UserPo> findAll();

}
