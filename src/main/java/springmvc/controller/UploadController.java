package springmvc.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.sql.rowset.serial.SerialBlob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import springmvc.model.Image;
import springmvc.service.UserService;

@Controller
public class UploadController {

	@Autowired
	private UserService userService;

	private boolean imageUploaded = false;

	@ModelAttribute("images")
	public List<Image> getImages() {
		List<Image> images = new ArrayList<Image>();
		List<Image> list = userService.getAllImages();
		images.addAll(list); // Add images from the database
		return images;
	}

	@RequestMapping(value = "/gallery", method = RequestMethod.GET)
	public String showGallery(Model model) {
		model.addAttribute("name", "Utkarsh Kumar");
		model.addAttribute("imageUploaded", imageUploaded);
		return "uploadImage";
	}

	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public String uploadImageMethod(@RequestParam("url") CommonsMultipartFile file,
			@ModelAttribute("description") String description, Model model, HttpSession s) {
		model.addAttribute("name", "Utkarsh Kumar");
		System.out.println("Image file handler");
		System.out.println(file.getOriginalFilename());

		Image image = new Image();

		image.setDescription(description);
		byte[] imageBytes = file.getBytes();

		SerialBlob imageBlob;
		try {
			imageBlob = new SerialBlob(imageBytes);
			image.setImageBlob(imageBlob);

//			imageUploaded = true;

			String path = s.getServletContext().getRealPath("/") + "WEB-INF" + File.separator + "resources"
					+ File.separator + "images" + File.separator + "gallery" + File.separator
					+ file.getOriginalFilename();
			System.out.println(path);
			try (FileOutputStream fos = new FileOutputStream(path)) {
				if (imageBytes != null && imageBytes.length > 0) {
					fos.write(imageBytes);
					System.out.println("File uploaded in local successfully");
				} else {
					System.out.println("Image bytes are empty or null");
				}
			} catch (IOException e) {
				System.out.println("Error writing file: " + e.getMessage());
			}
			imageUploaded = true;
			model.addAttribute("imageUploaded", imageUploaded);
			System.out.println(imageUploaded);
			userService.uploadImage(image);
			System.out.println("File uploaded in db successfully");

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "redirect:/gallery";
	}
}
