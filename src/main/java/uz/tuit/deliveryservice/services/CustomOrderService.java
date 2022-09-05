package uz.tuit.deliveryservice.services;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import uz.tuit.deliveryservice.models.CustomOrder;
import uz.tuit.deliveryservice.models.User;
import uz.tuit.deliveryservice.repositories.CustomOrderRepository;
import uz.tuit.deliveryservice.repositories.UserRepository;

import java.security.Principal;
import java.util.List;

@Service
@RequiredArgsConstructor
public class CustomOrderService {


    private final CustomOrderRepository customOrderRepository;

    private final UserRepository userRepository;

    public List<CustomOrder> listOrders() {
        return customOrderRepository.findAll();
    }
    public void saveOrder(Principal principal, CustomOrder customOrder){
        customOrder.setUser(getUserByPrincipal(principal));
        customOrderRepository.save(customOrder);
    }
    public List<CustomOrder> findUsersCustomOrders(Long id){
        return customOrderRepository.findCustomOrdersByUserId(id);
    }

    public User getUserByPrincipal(Principal principal) {
        if (principal == null) return new User();
        return userRepository.findByEmail(principal.getName());
    }
    public CustomOrder getOrderById(Long id) {
        return customOrderRepository.findById(id).orElse(null);
    }
}
