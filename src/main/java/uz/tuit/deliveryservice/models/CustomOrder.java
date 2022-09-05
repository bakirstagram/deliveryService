package uz.tuit.deliveryservice.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.List;
import java.util.ArrayList;

@Entity
@Table(name = "customOrders")
@Data
@EqualsAndHashCode(exclude = "user")
@AllArgsConstructor
@NoArgsConstructor
public class CustomOrder implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @Column(name = "adress")
    private String adress;
    @Column(name = "goods")
    private String goods;
    @Column(name = "city")
    private String city;
    @Column(name = "description", columnDefinition = "text")
    private String description;
    @Column(name = "phone_number")
    private String phoneNumber;
    @Column(name = "weight")
    private double weight;

    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.LAZY)
    @JoinColumn
    private User user;
    private LocalDateTime createdDate;



    @PrePersist
    public void init(){
        createdDate = LocalDateTime.now();
    }
}
