package com.kk.pojo;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

//等价于<bean id="user" class="com.kk.pojo.User"/>
//@Component 组件
@Component
@Scope("prototype")
public class User {

    //相当于 <property name="name" value="康梓健"/>
    @Value("康梓健")
    public String name;
}
