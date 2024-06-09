package ba.sum.fpmoz.budgetmanagement.controllers;

import ba.sum.fpmoz.budgetmanagement.models.Category;
import ba.sum.fpmoz.budgetmanagement.models.Item;
import ba.sum.fpmoz.budgetmanagement.models.User;
import ba.sum.fpmoz.budgetmanagement.services.CategoryService;
import ba.sum.fpmoz.budgetmanagement.services.CustomUserDetails;
import ba.sum.fpmoz.budgetmanagement.services.CustomUserDetailsService;
import ba.sum.fpmoz.budgetmanagement.services.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class BudgetController {

    private final CustomUserDetailsService userService;
    private final ItemService itemService;
    private final CategoryService categoryService;

    @Autowired
    public BudgetController(CustomUserDetailsService userService, ItemService itemService, CategoryService categoryService) {
        this.userService = userService;
        this.itemService = itemService;
        this.categoryService = categoryService;
    }

    @PostMapping("/adjustBudget")
    public String adjustBudget(@RequestParam Double budget) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String currentPrincipalName = authentication.getName();
        CustomUserDetails userDetails = (CustomUserDetails) userService.loadUserByUsername(currentPrincipalName);
        User currentUser = userDetails.getUser();
        currentUser.setTotal_budget(budget);
        userService.save(currentUser); // assuming you have a save method in your userService
        return "redirect:/"; // redirect to home page after adjusting the budget
    }

    @GetMapping("/")
    public String home(Model model) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String currentPrincipalName = authentication.getName();
        CustomUserDetails userDetails = (CustomUserDetails) userService.loadUserByUsername(currentPrincipalName);
        User currentUser = userDetails.getUser();
        List<Item> userItems = itemService.getItemsByUser(currentUser.getId());
        List<Category> categories = categoryService.getAllCategories();
        model.addAttribute("categories", categories);
        model.addAttribute("user", currentUser);
        model.addAttribute("items", userItems);
        return "home";
    }
}
