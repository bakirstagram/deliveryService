package uz.tuit.deliveryservice.services;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import uz.tuit.deliveryservice.models.User;
import uz.tuit.deliveryservice.models.enums.Role;
import uz.tuit.deliveryservice.repositories.UserRepository;

import java.security.Principal;
import java.util.*;
import java.util.stream.Collectors;

@Service
@Slf4j
@RequiredArgsConstructor
public class UserService {
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    public boolean createUser(User user) { // создание пользователя
        // получаем эл. почту из пользователя который отправил соответствующий запрос
        // храним в поле типа String чтобы не обращаться много раз
        String userEmail = user.getEmail();

        // проверяем базу данных на соответствие пришедшему эл. адресу
        if (userRepository.findByEmail(userEmail) != null) {
            // если есть пользователь с таким e-mail возвращаем false
            return false;
        }
        // активируем
        user.setActive(true);
        // присваиваем роль для пришедшего пользователя
        user.getRoles().add(Role.ROLE_USER);
        // зашифровываем пароль
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        // выведем информацию в лог
        log.info("Saving new user with email = {}", userEmail);
        // сохраняем в базу данных нового пользователя
        userRepository.save(user);
        // отправляем ответ для корректировки на шаблонизаторе
        return true;
    }

    public List<User> users() { // список пользователей для админа
        return userRepository.findAll();
    }

    public void banUser(Long id) { // метод для бана пользователей который используется админом
        User user = userRepository.findById(id).orElse(null);
        if (user != null) { // если пользователь существует
            if (user.isActive()) { // бан
                user.setActive(false);
                log.info("Ban user with id: {}, e-mail: {}", user.getId(), user.getEmail());
            } else { // разбан
                user.setActive(true);
                log.info("Unban user with id: {}, e-mail: {}", user.getId(), user.getEmail());
            }
        }
        userRepository.save(user); // обновляем данные в базе данных пересохраняя пользователя с отрицательной активностью
    }

    public void changeUserRoles(User user, Map<String, String> form) {
        Set<String> roles = Arrays.stream(Role.values())
                .map(Role::name)
                .collect(Collectors.toSet());
        user.getRoles().clear();

        for(String key : form.keySet()){
            if(roles.contains(key)){
                user.getRoles().add(Role.valueOf(key));
            }
        }
        userRepository.save(user);
    }
    public User getUserByPrincipal(Principal principal) {
        if (principal == null) return new User();
        return userRepository.findByEmail(principal.getName());
    }
//    public void saveUsersCustomOrders(Principal principal, CustomOrder customOrder){
//        User user = getUserByPrincipal(principal);
//        user.
//        ArrayList<CustomOrder> arrayList = user.getCustomOrders();
//        arrayList.add(customOrder);
//        user.setCustomOrders(arrayList);
//        userRepository.save(user);
//    }
}