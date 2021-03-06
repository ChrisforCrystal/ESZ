package chris.ssm.model;

import java.util.List;

///
public class PageBean {
    private List list;  //列表
    private int totalrecord;    //总记录数
    private int pagesize;   //一个页面的记录数

    private int totalpage;  //总页面个数
    private int currentpage;    //当前页面

    private int previouspage;   //前一页
    private int nextpage;   //后一页

    private int[] pagebar;  //页码条

    public List getList() {
        return list;
    }

    public int getTotalrecord() {
        return totalrecord;
    }

    public void setTotalrecord(int totalrecord) {
        this.totalrecord = totalrecord;
    }

    public int getPagesize() {
        return pagesize;
    }

    public void setPagesize(int pagesize) {
        this.pagesize = pagesize;
    }

    public int getTotalpage() {

        this.totalpage= (this.totalrecord+this.pagesize-1) / this.pagesize;

        return totalpage;
    }


    public int getCurrentpage() {
        return currentpage;
    }

    public void setCurrentpage(int currentpage) {
        this.currentpage = currentpage;
    }

    public int getPreviouspage() {
        if(this.currentpage<=1){
            this.previouspage  = this.currentpage;
        }else{
            this.previouspage=this.currentpage - 1;
        }

        return previouspage;
    }



    public int getNextpage() {

        if (this.currentpage>=this.totalpage){
            this.nextpage=this.currentpage;
        }else{
            this.nextpage=this.currentpage + 1;
        }
        return nextpage;
    }



    public int[] getPagebar() {

        int startpage;
        int endpage;
        int pagebar[] = null;
        if(this.totalpage<10){
            pagebar = new int[this.totalpage];
            startpage=1;
            endpage = this.totalpage;
        }else{
            startpage = this.currentpage-4;
            endpage = this.currentpage+5;
            if(startpage<=1){
                startpage = 1;
                endpage = 10;
            }
            if(endpage>=this.totalpage){
                startpage = this.totalpage-9;
                endpage = this.totalpage;
            }
        }

        for(int i=startpage;i<=endpage;i++){
            pagebar[i-startpage]=i;
        }

        this.pagebar = pagebar;
        return pagebar;
    }

    public void setPagebar(int[] pagebar) {
        this.pagebar = pagebar;
    }

    public void setList(List list) {
        this.list = list;
    }
}
