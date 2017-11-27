package chris.ssm.model;

/**
 * Created by Chris on 2017/11/21
 */
public class ShopCar extends Basepo{
    private int shopcarid;
    private double money;
    private int userid;

    public int getShopcarid() {
        return shopcarid;
    }

    public void setShopcarid(int shopcarid) {
        this.shopcarid = shopcarid;
    }

    public double getMoney() {
        return money;
    }

    public void setMoney(double money) {
        this.money = money;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }
}
