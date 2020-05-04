import com.foryou.domain.UserPo;
import com.foryou.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class TestUserService {

    @Autowired
    private UserService userService;

    @Test
    public void testFindAll(){
        List<UserPo> userPos = userService.findAll();
        userPos.stream().forEach(userPo -> System.out.println(userPo));
    }

}
