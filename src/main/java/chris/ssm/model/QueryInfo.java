package chris.ssm.model;

public class QueryInfo {

    private int currentpage = 1;//用户的当前页码
    private int pagesize = 5;   //用户看的页面的大小
    private int  startindex ;   //用户看的所在数据库的起始位置

    public int getCurrentpage() {
        return currentpage;
    }

    public void setCurrentpage(int currentpage) {
        this.currentpage = currentpage;
    }

    public int getPagesize() {
        return pagesize;
    }

    public void setPagesize(int pagesize) {
        this.pagesize = pagesize;
    }

    public int getStartindex() {
       this.startindex = (this.currentpage-1)*this.pagesize;
        return startindex;
    }


}
