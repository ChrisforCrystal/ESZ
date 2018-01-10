package chris.ssm.model;

/**
 * Created by Chris on 2017/11/21
 */
public class ShopOrder extends Basepo {
    private int orderId;


    private Long userId; //用户id
    private Long shopcarId;  //购物车id
    private String goodsName;   //货物名称
    private Long goodsId;
    private int goodsNum;   //货物数量
    private double goodsPrice;//货物单价
    private double totalPrice;    //该订单的总价格--货物总价格

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getShopcarId() {
        return shopcarId;
    }

    public void setShopcarId(Long shopcarId) {
        this.shopcarId = shopcarId;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public Long getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Long goodsId) {
        this.goodsId = goodsId;
    }

    public int getGoodsNum() {
        return goodsNum;
    }

    public void setGoodsNum(int goodsNum) {
        this.goodsNum = goodsNum;
    }

    public double getGoodsPrice() {
        return goodsPrice;
    }

    public void setGoodsPrice(double goodsPrice) {
        this.goodsPrice = goodsPrice;
    }

    public double getTotalPrice() {
        this.totalPrice = this.goodsPrice*this.goodsNum;
        return totalPrice;
    }



}
