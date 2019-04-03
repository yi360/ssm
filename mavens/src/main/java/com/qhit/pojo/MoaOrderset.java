package com.qhit.pojo;

import java.util.Date;

/**
 * 
 * 
 * @author wcyong
 * 
 * @date 2019-03-12
 */
public class MoaOrderset {
    private Integer id;

    private Integer cookbookId;

    private String dish;

    private Integer maxcount;

    private Integer nowcount;

    private String createBy;

    private Date createDate;

    private String updateBy;

    private Date updateDate;

    private String remarks;

    private String delFlag;
    
    /*private MoaCookbook moaCookBook;
    
    

    public MoaCookbook getMoaCookBook() {
		return moaCookBook;
	}

	public void setMoaCookBook(MoaCookbook moaCookBook) {
		this.moaCookBook = moaCookBook;
	}*/

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCookbookId() {
        return cookbookId;
    }

    public void setCookbookId(Integer cookbookId) {
        this.cookbookId = cookbookId;
    }

    public String getDish() {
        return dish;
    }

    public void setDish(String dish) {
        this.dish = dish == null ? null : dish.trim();
    }

    public Integer getMaxcount() {
        return maxcount;
    }

    public void setMaxcount(Integer onemaxcount) {
        this.maxcount = onemaxcount;
    }

    public Integer getNowcount() {
        return nowcount;
    }

    public void setNowcount(Integer nowcount) {
        this.nowcount = nowcount;
    }

    public String getCreateBy() {
        return createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy == null ? null : createBy.trim();
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getUpdateBy() {
        return updateBy;
    }

    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy == null ? null : updateBy.trim();
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }

    public String getDelFlag() {
        return delFlag;
    }
	public void setDelFlag(String delFlag) {
        this.delFlag = delFlag == null ? null : delFlag.trim();
    }
	 @Override
		public String toString() {
			return "MoaOrderset [id=" + id + ", cookbookId=" + cookbookId
					+ ", dish=" + dish + ", maxcount=" + maxcount + ", nowcount="
					+ nowcount + ", createBy=" + createBy + ", createDate="
					+ createDate + ", updateBy=" + updateBy + ", updateDate="
					+ updateDate + ", remarks=" + remarks + ", delFlag=" + delFlag
					+ "]";
		}
}