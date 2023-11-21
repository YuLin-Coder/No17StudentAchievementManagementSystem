package edu.ccut.computer.software.model;


/**
 * @author duwenbo
 *
 */
public class Score implements java.io.Serializable {
	private ScoreId id;
	private Integer score;
	private Integer credit;

	public Score() {
	}

	public Score(ScoreId id) {
		this.id = id;
	}

	public Score(ScoreId id, Integer score, Integer credit) {
		this.id = id;
		this.score = score;
		this.credit = credit;
	}

	public Integer getCredit() {
		return credit;
	}

	public ScoreId getId() {
		return id;
	}

	public Integer getScore() {
		return score;
	}

	public void setCredit(Integer credit) {
		this.credit = credit;
	}

	public void setId(ScoreId id) {
		this.id = id;
	}

	public void setScore(Integer score) {
		this.score = score;
	}

}