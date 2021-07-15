package kr.hs.study.model.dto;

public class MusicDTO {
	private String song_title;
	private String song_singer;
	private String song_genre;
	private String song_price;
	private String song_passwd;
	public String getSong_title() {
		return song_title;
	}
	public void setSong_title(String song_title) {
		this.song_title = song_title;
	}
	public String getSong_singer() {
		return song_singer;
	}
	public void setSong_singer(String song_singer) {
		this.song_singer = song_singer;
	}
	public String getSong_genre() {
		return song_genre;
	}
	public void setSong_genre(String song_genre) {
		this.song_genre = song_genre;
	}
	public String getSong_price() {
		return song_price;
	}
	public void setSong_price(String song_price) {
		this.song_price = song_price;
	}
	public String getSong_passwd() {
		return song_passwd;
	}
	public void setSong_passwd(String song_passwd) {
		this.song_passwd = song_passwd;
	}
}
