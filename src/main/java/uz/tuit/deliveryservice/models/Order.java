package uz.tuit.deliveryservice.models;

import lombok.Data;

import javax.persistence.*;
import java.time.LocalDateTime;

//@Entity
//@Table(name = "orders")
//@Data
//public class Order {
//
//    @Id
//    @GeneratedValue(strategy = GenerationType.AUTO)
//    private Long id;
//    @OneToOne(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
//    private Product product;
//    @Column(name = "created_date", nullable = false)
//    private LocalDateTime createdDate;
//    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.LAZY)
//    @JoinColumn
//    private User user;
//    @PrePersist
//    public void init(){
//        createdDate = LocalDateTime.now();
//    }
//}
