import com.kk.mapper.UserMapper;
import com.kk.pojo.User;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class MyTest {
    @Test
    public void test(){
        ApplicationContext context = new ClassPathXmlApplicationContext("spring-dao.xml");
        UserMapper userMapper = (UserMapper) context.getBean("userMapper2");
        List<User> users = userMapper.selectUser();
        for (User user : users) {
            System.out.println(user);
        }
    }
}
