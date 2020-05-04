package com.foryou.service.impl;

import com.foryou.dao.UserDao;
import com.foryou.domain.UserPo;
import com.foryou.service.UserService;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    public UserServiceImpl(){
        System.out.println("UserServiceImpl对象被创建了...");
    }

    @Override
    public List<UserPo> findAll() {
        System.out.println("业务层findAll方法执行...");
        return userDao.findAll();
    }
}
