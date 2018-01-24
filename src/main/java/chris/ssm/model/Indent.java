package chris.ssm.model;


//订单
public class Indent extends Basepo {
    private Long indentId;//订单id值
    private Long userId;
    private String indentNum;//订单号
    private double price ;//订单总价格
    private String name ;//订单人
    private String address;//订单送货地址
    private int state;//状态码

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public Long getIndentId() {
        return indentId;
    }

    public void setIndentId(Long indentId) {
        this.indentId = indentId;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getIndentNum() {
        return indentNum;
    }

    public void setIndentNum(String indentNum) {
        this.indentNum = indentNum;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
