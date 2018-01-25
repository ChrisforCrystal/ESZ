package chris.ssm.model;

/**
 * Created by Chris on 2017/11/21
 */
public class ShopOrder extends Basepo {
    private int orderId;
    private Long orderNum;//订单编号,无用

    private Long userId; //用户id
    private Long shopcarId;  //购物车id
    private String goodsName;   //货物名称
    private Long goodsId;
    private Long typeid;
    private String typeName;
    private int goodsNum;   //货物数量
    private double goodsPrice;//货物单价
    private double totalPrice;    //该订单的总价格--货物总价格
    private Long stateNum;//状态码.根据该数值来区分订单是在购物车中还是已经完成提交.
    private String indentNum;//订单号,在提交订单,状态码改变后悔给予一个唯一的订单号码

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public Long getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(Long orderNum) {
        this.orderNum = orderNum;
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

    public Long getTypeid() {
        return typeid;
    }

    public void setTypeid(Long typeid) {
        this.typeid = typeid;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public Long getStateNum() {
        return stateNum;
    }

    public void setStateNum(Long stateNum) {
        this.stateNum = stateNum;
    }

    public String getIndentNum() {
        return indentNum;
    }

    public void setIndentNum(String indentNum) {
        this.indentNum = indentNum;
    }
}
