package chris.ssm.model;

import java.util.Date;

/**
 * Created by Chris on 2016/7/15.
 */

public class User {

    private Long id;    //存储id
    private String userName;    //用户名
    private String userPhone;   //用户手机
    private String userEmail;   //用户邮箱
    private String userPwd;     //用户密码
    private String pwdSalt;     //验证码?
    private Date createTime;    //创建时间
    private Date modifyTime;    //修改时间--最近登录时间
    private Short isDelete;     //?
    private String nick;        //昵称



    private double userPrice;     //用户余额


    private String address;     //家庭住址

    private String sex;         //性别
    private String introduceSelf;    //个人介绍
    private String age ;    //年龄

    public void setAge(String age) { this.age = age; }

    public String getAge() {  return age;  }

    public String getIntroduceSelf() {
        return introduceSelf;
    }

    public void setIntroduceSelf(String intoduceSelf) {
        this.introduceSelf = intoduceSelf;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getNick() {
        return nick;
    }

    public void setNick(String nick) {
        this.nick = nick;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserPwd() {
        return userPwd;
    }

    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd;
    }

    public String getPwdSalt() {
        return pwdSalt;
    }

    public void setPwdSalt(String pwdSalt) {
        this.pwdSalt = pwdSalt;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getModifyTime() {
        return modifyTime;
    }

    public void setModifyTime(Date modifyTime) {
        this.modifyTime = modifyTime;
    }

    public Short getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(Short isDelete) {
        this.isDelete = isDelete;
    }
    public double getUserPrice() {
        return userPrice;
    }

    public void setUserPrice(double userPrice) {
        this.userPrice = userPrice;
    }
}
