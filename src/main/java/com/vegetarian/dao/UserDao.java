package com.vegetarian.dao;

import com.vegetarian.entity.User;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

import java.util.Set;

public interface UserDao{
    User getUserByEmailL(String email);
    User getUserByUserName(String username);
    User getUserByPhone(String phone);
    boolean insertUser(User user);
    boolean updateUser(User user);
    int[] insertAuthorizeUser(String username,Set<SimpleGrantedAuthority> grantedAuthorities);
    Set<SimpleGrantedAuthority> getAuthorizesByUserName(String username);

}