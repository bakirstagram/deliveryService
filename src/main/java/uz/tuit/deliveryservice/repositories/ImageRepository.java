package uz.tuit.deliveryservice.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import uz.tuit.deliveryservice.models.Image;

public interface ImageRepository extends JpaRepository<Image, Long> {
}
