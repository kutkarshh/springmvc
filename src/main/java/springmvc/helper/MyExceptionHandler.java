package springmvc.helper;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

// Can be used to handle any type of exception inside the whole application
@ControllerAdvice
public class MyExceptionHandler {
	// for handling NullPointer and NumberFormatException
	@ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR) // used to send the error status code like 500
	@ExceptionHandler({ NullPointerException.class, NumberFormatException.class })
	public String exceptionHandlerAllError() {
		return "error_page";
	}

	// for Handling Exception of generic type means any type of exception
	@ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR) // used to send the error status code like 500
	@ExceptionHandler(value = { Exception.class })
	public String exceptionHandlerGeneric() {
		return "error_page";
	}
}
