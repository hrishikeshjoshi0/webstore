package com.openappengine.model.website;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.TableGenerator;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.openappengine.model.cms.Content;


/**
 * The persistent class for the prod_product_price database table.
 * 
 */
@Entity
@Table(name="website_article")
public class Article implements Serializable {
	
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.TABLE, generator="seqGenerator")  
	@TableGenerator(name="seqGenerator", table="ad_table_sequences",pkColumnName="TS_SEQUENCE_NAME",valueColumnName="TS_SEQUENCE_VALUE",
	                allocationSize=1 // flush every 1 insert  
	)
	@Column(name="WEBSITE_ARTICLE_ID", unique=true, nullable=false)
	private int articleId;
	
	@Column(name="WEBSITE_ARTICLE_TITLE", length=255)
	private String title;
	
	@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="WEBSITE_ARTICLE_CONTENT_ID")
	private Content content;

    @Temporal( TemporalType.DATE)
	@Column(name="WEBSITE_ARTICLE_POSTED_DATE", nullable=false)
	private Date postedDate = new Date();

    public Article() {
    }

	public int getArticleId() {
		return articleId;
	}

	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Content getContent() {
		return content;
	}

	public void setContent(Content content) {
		this.content = content;
	}

	public Date getPostedDate() {
		return postedDate;
	}

	public void setPostedDate(Date postedDate) {
		this.postedDate = postedDate;
	}
}