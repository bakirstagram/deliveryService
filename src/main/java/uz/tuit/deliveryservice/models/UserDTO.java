package uz.tuit.deliveryservice.models;

import lombok.Data;
import uz.tuit.deliveryservice.models.enums.Role;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Data
public class UserDTO {

    private Long id;

    private String email;

    private String phoneNumber;

    private String name;

    private boolean active;

    private Image avatar;

    private List<Product> products = new ArrayList<>();

    private Set<CustomOrder> orders = new HashSet<>();

    private String password;

    private Set<Role> roles = new HashSet<>();

    private LocalDateTime dateOfCreated;

}
