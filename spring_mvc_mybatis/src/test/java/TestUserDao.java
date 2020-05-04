import com.foryou.dao.UserDao;
import com.foryou.domain.UserPo;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class TestUserDao {

    private UserDao userDao;
    private InputStream in;
    private SqlSession session;
    @Before
    public void init(){
        System.out.println("执行前进行初始化...");
        try {
            in = Resources.getResourceAsStream("mybatis-config.xml");
            SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
            SqlSessionFactory factory = builder.build(in);
            session = factory.openSession(true);
            userDao = session.getMapper(UserDao.class);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void testFindAll(){
        System.out.println("执行中...");
        List<UserPo> list = userDao.findAll();
        for (UserPo userPo : list) {
            System.out.println(userPo);
        }
    }


    @After
    public void close(){
        System.out.println("执行完成释放资源...");
        session.close();
        try {
            in.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


}
