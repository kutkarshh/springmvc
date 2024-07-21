package springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springmvc.dao.UserDao;
import springmvc.model.Feedback;
import springmvc.model.Image;
import springmvc.model.User;

@Service
public class UserService {

	@Autowired
	private UserDao userDao;

	public int createFeedback(Feedback feedback) {

		// calling saveFeedback() Method of UserDao class to create a new feedback for
		// the user
		return this.userDao.saveFeedBack(feedback);
	}

	// call getUser() Method of UserDao class to get the user
	public User getUserDetails(long id) {
		return this.userDao.getUser(id);
	}

	// call saveUser() Method of UserDao class to create a new user
	public long createUser(User user) {

		// calling saveUser() Method of UserDao class to create a new user
		return this.userDao.saveUser(user);
	}

	public long uploadImage(Image image) {

		// calling saveImage() Method of UserDao class to upload the image
		return this.userDao.saveImage(image);
	}

	public List<Image> getAllImages() {
		return this.userDao.getAllImages();
	}

}
