package com.example.demo.controller;

import org.springframework.web.bind.annotation.RestController;

import com.example.demo.entity.ApiResponse;
import com.example.demo.domain.User;
import com.example.demo.service.UserService;

import java.util.List;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/")
    public String getHomePage(Model model) {
        model.addAttribute("message", "Hello, World222!");
        model.addAttribute("datnv", "Nguyen Van Dat");
        // List<User> arrUsers = this.userService.getAllUsers();
        // System.out.println(arrUsers);
        List<User> userByName = this.userService.getUsersByFullName("dat", "4444");
        System.out.println(userByName);
        return "hello";
    }

    @RequestMapping("/admin/user") // GET
    public String getUserPage(Model model) {
        List<User> users = this.userService.getAllUsers();
        model.addAttribute("users", users);
        return "admin/user/list";
    }

    @RequestMapping("/admin/user/{id}") // GET
    public String getUserDetailPage(Model model, @PathVariable Long id) {
        User users1 = this.userService.getUserById(id);
        model.addAttribute("id", id);
        model.addAttribute("users1", users1);
        return "admin/user/view";
    }

    @RequestMapping("/admin/user/update/{id}") // GET
    public String updateUserDetailPage(Model model, @PathVariable Long id) {
    User currentUser = this.userService.getUserById(id);
    model.addAttribute("newUser", currentUser); // Truyền user thực tế vào form
    return "admin/user/update";
    }

    @PostMapping("/admin/user/update") // POST
    public String postUpdateUserPage(Model model, @ModelAttribute("newUser") User datnv) {
        User currentUser = this.userService.getUserById(datnv.getId());
        if(currentUser != null){
            currentUser.setPhone(datnv.getPhone());
            currentUser.setAddress(datnv.getAddress());
            currentUser.setFullName(datnv.getFullName());
            this.userService.updateUser(currentUser, datnv.getId());
        }
        // redirect đường link url về trang danh sách
        return "redirect:/admin/user";
    }
    
    @RequestMapping("/admin/user/create") // GET
    public String createUserPage(Model model) {
        model.addAttribute("userForm", new User());
        return "admin/user/create";
    }

    @GetMapping("/admin/user/delete/{id}") // GET
    public String deleteUserPage(Model model, @PathVariable Long id) {
        model.addAttribute("id", id);
        return "admin/user/delete";
    }

    @PostMapping("/admin/user/delete/{id}") // POST
    public String postDeleteUserPage(Model model, @PathVariable Long id) {
        this.userService.deleteUser(id);
        // redirect đường link url về trang danh sách
        return "redirect:/admin/user";
    }

    // @RequestMapping("/admin/users") // GET - User list page
    // public String getUserListPage(Model model) {
    // List<User> users = this.userService.getAllUsers();
    // model.addAttribute("users", users);
    // return "admin/user/list";
    // }

    @RequestMapping(value = "/admin/user/create", method = RequestMethod.POST)
    public String postUserPage(Model model, @ModelAttribute("userForm") User user) {
        this.userService.createUser(user);
        System.out.print("run here" + user);
        // redirect đường link url về trang danh sách
        return "redirect:/admin/user";
    }
}

// @RestController
// public class UserController {

// // DI: Dependency Injection
// private final UserService userService;

// public UserController(UserService userService) {
// this.userService = userService;
// }

// @GetMapping("/users")
// public ResponseEntity<ApiResponse<List<User>>> getAllUsers() {
// List<User> result = userService.getAllUsers();
// ApiResponse<List<User>> response = new ApiResponse<>("success", "Fetched all
// users", result, null);
// return ResponseEntity.ok(response);
// }

// @PostMapping("/users")
// public User createUser(@RequestBody User user) {
// User result = userService.createUser(user);
// return result;
// }

// @GetMapping("/users/{id}")
// public User detailUser(@PathVariable Long id) {
// User result = userService.getDetail(id);
// return result;
// }

// @PutMapping("/users/{id}")
// public ResponseEntity<ApiResponse<User>> updateUser(@PathVariable Long id,
// @RequestBody User user) {
// User existingUser = userService.getDetail(id);
// if (existingUser != null) {
// User updatedUser = userService.updateUser(id, user);
// ApiResponse<User> response = new ApiResponse<>("success", "User updated
// successfully", updatedUser, null);
// return ResponseEntity.ok(response);
// } else {
// ApiResponse<User> response = new ApiResponse<>("error", "User not found",
// null, "USER_NOT_FOUND");
// return ResponseEntity.status(404).body(response);
// }
// }

// @DeleteMapping("/users/{id}")
// public ResponseEntity<ApiResponse<Void>> deleteUser(@PathVariable Long id) {
// User existingUser = userService.getDetail(id);
// if (existingUser != null) {
// userService.deleteUser(id);
// ApiResponse<Void> response = new ApiResponse<>("success", "User deleted
// successfully", null, null);
// return ResponseEntity.ok(response);
// } else {
// ApiResponse<Void> response = new ApiResponse<>("error", "User not found",
// null, "USER_NOT_FOUND");
// return ResponseEntity.status(404).body(response);
// }
// }
// }
