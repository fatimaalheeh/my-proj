package com.axsos.logandreg.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.view.RedirectView;

import com.axsos.logandreg.models.Pet;
import com.axsos.logandreg.models.User;
import com.axsos.logandreg.services.UserService;
import com.axsos.logandreg.validation.UserValidator;

@Controller
public class UserController {
	private final UserService userService;
	private final UserValidator userValidator;

	public UserController(UserService userService, UserValidator userValidator) {
		this.userService = userService;
		this.userValidator = userValidator;
	}

	@RequestMapping("")
	public String registerForm(@ModelAttribute("user") User user) {
		return "home.jsp";
	}

	@RequestMapping(value = "/registration", method = RequestMethod.POST)
	public String registerUser(@Valid @ModelAttribute("user") User user, BindingResult result, Model model,
			HttpSession session) {
		userValidator.validate(user, result);

		if (result.hasErrors())
			return "home.jsp";
		if (userService.findByEmail(user.getEmail()) != null) {
			model.addAttribute("error", "This email already exist!!");
			return "home.jsp";
		}
		userService.registerUser(user);
		return "redirect:/";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginUser(@ModelAttribute("user") User user, @RequestParam("email") String email,
			@RequestParam("password") String password, Model model, HttpSession session) {
		if (userService.authenticateUser(email, password)) {
			session.setAttribute("userId", userService.findByEmail(email).getId());
			return "redirect:/home";
		} else {
			model.addAttribute("error", "Invalid User name or Password");
			return "home.jsp";
		}
	}

	// for second page
	@RequestMapping("/home")
	public String home(HttpSession session, Model model) {
		// get user from session, save them in the model and return the home page
		if (session.getAttribute("userId") == null)
			return "redirect:/";
		Long Id = (Long) session.getAttribute("userId");
		User u = userService.findUserById(Id);
		model.addAttribute("user", u);
		return "welcome.jsp";

	}

	// logout
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		// invalidate session
		// redirect to login page
		session.invalidate();
		return "redirect:/";
	}

	@RequestMapping("/profile/{id}")
	public String profile(@PathVariable("id") Long Id, Model model, HttpSession session) {
		if (session.getAttribute("userId") != null) {
			Long idd = (Long) session.getAttribute("userId");
			User user1 = userService.findUserById(idd);
			model.addAttribute("user", user1);
			return "profile.jsp";
			
		}
		return "redirect:/home";

	}
	
	
	
	@RequestMapping("/addpet")
	public String createPet(@Valid @ModelAttribute("pet") Pet pet, BindingResult result,Model model , HttpSession session) {
		
		return "add.jsp";
		
	}
	
	
	
	@PostMapping("/pet/new")
    public String addpet( @Valid @ModelAttribute("pet") Pet pet, BindingResult result,Model model , HttpSession session) {
        if(result.hasErrors()){
        	System.out.println(result.toString());
            return "add.jsp";

        }
        else {
        	System.out.println(pet.toString());
        	userService.createpet(pet);
            return "redirect:/home";
        }
   
	}
	
	
	@RequestMapping("/contact")
	public String contact() {
		
		return "contact.jsp";
		
	}
	
	
	
}
	


