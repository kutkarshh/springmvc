package springmvc.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import springmvc.model.Feedback;
import springmvc.model.Image;
import springmvc.model.User;

@Repository
public class UserDao {

//	@Autowired
//	private HibernateTemplate hiberTemplate;

	@Autowired
	private SessionFactory sessionFactory;

	// @Transactional is used to enable the write feature for hibernate
	@Transactional
	public int saveFeedBack(Feedback feedback) {
		Session session = sessionFactory.getCurrentSession();
		int id = (int) session.save(feedback);
		return id;
	}

	@Transactional
	public User getUser(long id) {
		// return (User) session.get(User.class, id);
		Session session = sessionFactory.getCurrentSession();
		User user = session.get(User.class, id);
		return user;
	}

	@Transactional
	public long saveUser(User user) {
		Session session = sessionFactory.getCurrentSession();
		long id = (long) session.save(user);
		return id;
	}

	@Transactional
	public long saveImage(Image image) {
		Session session = sessionFactory.getCurrentSession();
		long id = (long) session.save(image);
		return id;
	}

	@Transactional
	public List<Image> getAllImages() {
		Session session = sessionFactory.getCurrentSession();
		List<Image> images = session.createQuery("from Image", Image.class).getResultList();
		return images;
	}
}
