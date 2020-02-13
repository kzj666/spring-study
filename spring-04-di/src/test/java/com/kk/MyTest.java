package com.kk;

import com.kk.pojo.Student;
import com.kk.pojo.User;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MyTest {
    public static void main(String[] args) {
        ApplicationContext context = new ClassPathXmlApplicationContext("beans.xml");
        Student student = (Student) context.getBean("student");
        System.out.println(student.toString());

        /*
         * Student{
         * name='康梓健',
         *  address=Address{address='null'},
         *  books=[红楼梦, 西游记, 水浒传, 三国演义],
         * hobbys=[听歌, 敲代码, 看电影],
         * card={身份证=111222333344445555, 银行卡=11123123123123123123},
         * games=[LOL, COC, BOB], wife='null',
         * info={
         * password=171030338,
         *  driver=171030338,
         *  url=171030338,
         * username=171030338
         * }
         * }
         */
    }

    @Test
    public void test2() {
        ApplicationContext context = new ClassPathXmlApplicationContext("userbeans.xml");
        User user = (User) context.getBean("user2");
        System.out.println(user);
    }
}
