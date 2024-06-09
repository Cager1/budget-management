package ba.sum.fpmoz.budgetmanagement.controllers;

import ba.sum.fpmoz.budgetmanagement.models.*;
import ba.sum.fpmoz.budgetmanagement.services.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ItemController {

    private final ItemService itemService;
    private final CategoryService categoryService;
    private final CustomUserDetailsService userService;

    @Autowired
    public ItemController(ItemService itemService, CategoryService categoryService, CustomUserDetailsService userService) {
        this.itemService = itemService;
        this.categoryService = categoryService;
        this.userService = userService;
    }

    // delete item
    @PostMapping("/deleteItem")
    public String deleteItem(@RequestParam Long id) {
        Item item = itemService.getItemById(id);
        User user = item.getUser();
        user.setTotal_budget(user.getTotal_budget() + item.getCost());
        itemService.delete(id);
        return "redirect:/"; // redirect to home page after deleting item
    }

    @PostMapping("/newItem")
    public String newItem(@ModelAttribute Item item) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String currentPrincipalName = authentication.getName();
        CustomUserDetails userDetails = (CustomUserDetails) userService.loadUserByUsername(currentPrincipalName);
        User currentUser = userDetails.getUser();

        item.setUser(currentUser);
        // adjust budget of current user
        currentUser.setTotal_budget(currentUser.getTotal_budget() - item.getCost());
        itemService.save(item);
        return "redirect:/"; // redirect to home page after assigning item to category and user
    }
}
