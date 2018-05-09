package com.igt;

import java.security.Principal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
                static ResultSet rs;

                @RequestMapping(value = "/")
                public String welcome(Model model) {
                                model.addAttribute("name", "Home Page");
                                model.addAttribute("description", "unsecured page !");
                                return "login";

                }

                @RequestMapping("/index")
                public <HttpResponse> String admin(Authentication authentication, Model model, Principal principal)
                                                throws SQLException {

                                String loggedInUserName = principal.getName();
                               
                                model.addAttribute("user", loggedInUserName);
                                model.addAttribute("name", "Spring Security Custom Login Demo");
                                model.addAttribute("description", "Protected page !");

                                List<SimpleGrantedAuthority> authList = (List<SimpleGrantedAuthority>) authentication.getAuthorities();
                                String role = "";
                                for (SimpleGrantedAuthority authority : authList) {
                                                role = authority.getAuthority();
                                }
                                model.addAttribute("role",role);
                                return "index";
                }

                @RequestMapping(value = "/login", method = RequestMethod.GET)
                public String login(ModelMap model) {

                                return "login";

                }

                @RequestMapping(value = "/logout", method = RequestMethod.GET)
                public String logout(ModelMap model) {

                                model.addAttribute("message", "You have successfully logged off from application !");
                                return "logout";

                }

                @RequestMapping(value = "/loginError", method = RequestMethod.GET)
                public String loginError(ModelMap model) {
                                model.addAttribute("error", "true");
                                return "login";

                }

                @RequestMapping("/presprint")
                public String presprint(Model model) {

                                return "presprint";

                }
                @RequestMapping("/presprint2")
                public String presprints(Model model) {

                                return "presprint2";

                }
                @RequestMapping("/postsprint")
                public String postsprint(Model model) {

                                return "postsprint";

                }
                @RequestMapping("/duringsprint")
                public String multiplecheckbox(Model model) {

                                return "duringsprint";

                }

}

