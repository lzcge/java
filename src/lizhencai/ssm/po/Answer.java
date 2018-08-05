package lizhencai.ssm.po;

public class Answer {
    private Integer id;

    private String username;

    private Integer articleId;

    private String answercont;
    
    private Article article;
    
    private String time;

    public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public Integer getArticleId() {
        return articleId;
    }

    public void setArticleId(Integer articleId) {
        this.articleId = articleId;
    }

    public String getAnswercont() {
        return answercont;
    }

    public void setAnswercont(String answercont) {
        this.answercont = answercont == null ? null : answercont.trim();
    }
}