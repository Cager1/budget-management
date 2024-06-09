package ba.sum.fpmoz.budgetmanagement.controllers;

import ba.sum.fpmoz.budgetmanagement.models.User;
import ba.sum.fpmoz.budgetmanagement.services.CustomUserDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AuthController {

    private CustomUserDetailsService userService;
    private BCryptPasswordEncoder passwordEncoder;

    @Autowired
    public void RegistrationController(CustomUserDetailsService userService, BCryptPasswordEncoder passwordEncoder) {
        this.userService = userService;
        this.passwordEncoder = passwordEncoder;
    }

    @GetMapping("/register")
    public String showRegistrationForm(Model model) {
        model.addAttribute("user", new User());
        return "register";
    }

    @PostMapping("/register")
    public String register(@ModelAttribute User user, @RequestParam String confirmPassword, Model model) {
        if (!user.getPassword().equals(confirmPassword)) {
            model.addAttribute("error", "Passwords do not match");
            return "register";
        }
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        userService.register(user);
        return "redirect:/login";
    }
}
