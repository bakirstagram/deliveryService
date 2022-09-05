package uz.tuit.deliveryservice.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import uz.tuit.deliveryservice.models.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);

}
