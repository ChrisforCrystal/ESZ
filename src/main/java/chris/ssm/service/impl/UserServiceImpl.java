package chris.ssm.service.impl;

import chris.ssm.dao.UserDao;
import chris.ssm.model.User;
import chris.ssm.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by chris on 2016/7/15.
 */

@Service
@Transactional(rollbackFor = Exception.class)
public class UserServiceImpl implements UserService {

    @Resource
    private UserDao userDao;

    public User selectUserById(Long userId) {
        return userDao.selectUserById(userId);
    }

    public User getUserByUP(String username, String password) {
        return userDao.getUserByUP(username,password);
    }

    public boolean update(User user) {
        return false;
    }

    public User getUserByUsername() {
        return null;
    }

    public User getUserByPhoneOrEmail(String emailOrPhone, Short state) {
        return userDao.selectUserByPhoneOrEmail(emailOrPhone,state);
    }

    public List<User> getAllUser() {
        return userDao.selectAllUser();
    }

    public void registerUser(User user){ userDao.registerUser(user);}

    public User selectUserByUserName(String userName){ return userDao.selectUserByUserName(userName);}

    public User selectUserByUserEmail(String userEmail){ return userDao.selectUserByEmail(userEmail); }

    public User selectUserByNick(String userNick) {  return userDao.selectUserByNick(userNick); }

    public User selectUserByPhone(String userPhone) { return userDao.selectUserByPhone(userPhone);  }

    public void updateUser(User user) {userDao.updateUser(user);  }
}
