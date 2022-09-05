package uz.tuit.deliveryservice.controllers;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import uz.tuit.deliveryservice.models.CustomOrder;
import uz.tuit.deliveryservice.models.User;
import uz.tuit.deliveryservice.services.CustomOrderService;
import uz.tuit.deliveryservice.services.UserService;

import java.security.Principal;

@Controller
public class DeliveryController {

    @Autowired
    private  UserService userService;
    @Autowired
    private CustomOrderService customOrderService;

    @GetMapping("/delivery")
    public String getDeliveryPage(Model model, Principal principal) {
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        return "delivery";
    }

    @PostMapping("/delivery/order/create")
    public String createOrder(CustomOrder customOrder, Model model, Principal principal) {

        model.addAttribute("user", userService.getUserByPrincipal(principal));
        customOrderService.saveOrder(principal,customOrder);
        return "redirect:/";
    }

    @GetMapping("/delivery/orders")
    public String getOrders(Model model, Principal principal){
        User user = userService.getUserByPrincipal(principal);
        model.addAttribute("user", customOrderService.getUserByPrincipal(principal));
//        model.addAttribute("orders", customOrderService.listOrders());
        model.addAttribute("orders", user.getOrders());
        return "my-orders";
    }

}
