package springmvc.model;

import java.sql.SQLException;
import java.util.Base64;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.sql.rowset.serial.SerialBlob;

@Entity
public class Image {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;

	@Lob
	private SerialBlob url;
	private String description;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public SerialBlob getUrl() {
		return url;
	}

	public void setImageBlob(SerialBlob imageBlob) {
		this.url = imageBlob;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "Image [id=" + id + ", url=" + url + ", description=" + description + "]";
	}

	public byte[] getImageBytes() {
		try {
			return url.getBytes(1, (int) url.length());
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public String getImageBytesAsBase64() {
		byte[] imageBytes = getImageBytes();
		return Base64.getEncoder().encodeToString(imageBytes);
	}

}