package uz.tuit.deliveryservice.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import uz.tuit.deliveryservice.models.CustomOrder;

import java.util.List;
public interface CustomOrderRepository extends JpaRepository<CustomOrder, Long> {
    List<CustomOrder> findCustomOrdersByUserId(Long id);
}
