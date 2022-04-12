package jdbc;

public class FeedDTO {
	private String id, content, ts, imgs;

	public String getImgs() {
		return imgs;
	}



	public String getId() {
		return id;
	}

	public String getContent() {
		return content;
	}

	public String getTs() {
		return ts;
	}

	public FeedDTO(String id, String content, String ts, String imgs) {
		super();
		this.id = id;
		this.content = content;
		this.ts = ts;
		this.imgs = imgs;
	}

}
