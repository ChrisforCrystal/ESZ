package chris.ssm.service;


import chris.ssm.model.User;

import java.util.List;

/**
 * Created by Zhangxq on 2016/7/15.
 */
public interface UserService {

    public List<User> getAllUser();

    public User getUserByPhoneOrEmail(String emailOrPhone, Short state);

    public User getUserById(Long userId);

    User getUserByUP(String username, String password);

    public  boolean update(User user);

    public void registerUser(User user);

    public User selectUserByUserName(String userName);

    public User selectUserByUserEmail(String userEmail);

    public User selectUserByNick(String userNick);

    public  User selectUserByPhone(String userPhone);

    public void updateUser(User user);

}
