package chris.ssm.model;

/**
 * Created by Chris on 2017/11/21
 */
public class Goods extends Basepo {
    private Long goodsId;   //商品id
    private double money;   //商品价格
    private String goodsName;   //商品名称
    private int spid;   //
    private String picUrl;  //图片地址

    public String getPicUrl() {
        return picUrl;
    }

    public void setPicUrl(String picUrl) {
        this.picUrl = picUrl;
    }

    public Long getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Long goodsId) {
        this.goodsId = goodsId;
    }

    public double getMoney() {
        return money;
    }

    public void setMoney(double money) {
        this.money = money;
    }

    public String getShopName() {
        return goodsName;
    }

    public void setShopName(String shopName) {
        this.goodsName = shopName;
    }

    public int getSpid() {
        return spid;
    }

    public void setSpid(int spid) {
        this.spid = spid;
    }
}
