package chris.ssm.model;

/**
 * Created by Chris on 2017/11/21
 */
public class ShopCar extends Basepo{
    private Long shopcarId;
    private double totalprice;
    private Long userId;
    private String userNick;

    public Long getShopcarId() {
        return shopcarId;
    }



    public double getTotalprice() {
        return totalprice;
    }

    public void setTotalprice(double totalprice) {
        this.totalprice = totalprice;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getUserNick() {
        return userNick;
    }

    public void setUserNick(String userNick) {
        this.userNick = userNick;
    }
}
