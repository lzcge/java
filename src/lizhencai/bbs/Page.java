package lizhencai.bbs;

import java.util.List;

public class Page {
	private List<Message> list;
	private Integer firstPage =1;
	private Integer priorPage;
	private Integer currentPage;
	private Integer nextPage;
	private Integer totalPage;//总页数 末页
	private Integer count; //总条数
	private Integer pageSize;//每页多少条
	public List<Message> getList() {
		return list;
	}
	public void setList(List<Message> list) {
		this.list = list;
	}
	public Integer getFirstPage() {
		return firstPage;
	}
	public void setFirstPage(Integer firstPage) {
		this.firstPage = firstPage;
	}
	public Integer getPriorPage() {
		return priorPage;
	}
	public void setPriorPage(Integer priorPage) {
		this.priorPage = priorPage;
	}
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public Integer getNextPage() {
		return currentPage+1>this.getTotalPage()?this.getTotalPage():currentPage+1;
	}
	public void setNextPage(Integer nextPage) {
		this.nextPage = nextPage;
	}
	public Integer getTotalPage() {
		return count%pageSize!=0?count/pageSize+1:count/pageSize;
	}
	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	

}
