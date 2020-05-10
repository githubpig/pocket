package testService;


import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.maijia.model.User;
import com.maijia.service.user.IUserService;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/applicationContext-*.xml")
public class ServiceTest {
	
	@Autowired
	private IUserService userService;
	
	@Test
	public void insertSelective(){
		User record = new User();
		String id = UUID.randomUUID().toString().replaceAll("-","");
		record.setId(id);
		record.setNick("小豬");
		record.setCreattime(new Date());
		userService.insertSelective(record);
	}
}
