package com.kk.dao;

public class UserDaoSqlServerImpl implements UserDao {
    @Override
    public void getUser() {
        System.out.println("SQLServer获取用户数据");
    }
}
