package chris.ssm.dao;

import chris.ssm.model.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;



@Repository
public interface UserDao {

    User selectUserById(@Param("userId") Long userId);

    User selectUserByPhoneOrEmail(@Param("emailOrPhone") String emailOrPhone, @Param("state") Short state);

    List<User> selectAllUser();

    User getUserByUP(@Param("username") String username,@Param("password") String password);

    void registerUser(User user);

    User selectUserByUserName(@Param("userName") String userName);

    User selectUserByEmail(@Param("userEmail") String userEmail);

    User selectUserByNick(@Param("userNick") String userNick);

    User selectUserByPhone(@Param("userPhone") String userPhone);

    void updateUser(User user);
}
