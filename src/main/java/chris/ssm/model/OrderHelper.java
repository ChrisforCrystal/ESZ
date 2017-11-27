package chris.ssm.model;

/**
 * Created by Chris on 2017/11/21
 */
public class OrderHelper  extends  Basepo{
    private Long helpid;
    private String ordernum;
    private Long userid;
    private double money;

    public Long getHelpid() {
        return helpid;
    }

    public void setHelpid(Long helpid) {
        this.helpid = helpid;
    }

    public String getOrdernum() {
        return ordernum;
    }

    public void setOrdernum(String ordernum) {
        this.ordernum = ordernum;
    }

    public Long getUserid() {
        return userid;
    }

    public void setUserid(Long userid) {
        this.userid = userid;
    }

    public double getMoney() {
        return money;
    }

    public void setMoney(double money) {
        this.money = money;
    }


}
