package chris.ssm.model;

/**
 * Created by Chris on 2017/11/22
 */
public class Picture extends  Basepo{
    private Long pid;
    //1是图片
    private int type;
    //数据资源地址
    private String url;
    private Long userid;

    public Long getUserid() {
        return userid;
    }

    public void setUserid(Long userid) {
        this.userid = userid;
    }

    public Long getPid() {
        return pid;
    }

    public void setPid(Long pid) {
        this.pid = pid;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String  getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
