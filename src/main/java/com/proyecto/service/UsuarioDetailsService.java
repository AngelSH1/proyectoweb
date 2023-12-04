package com.proyecto.service;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

public interface UsuarioDetailsService {
    public UserDetails 
        loadUserByUsername(String username)
                throws UsernameNotFoundException;
        ///este es el pluggin que permite manejar los roles nadamas, es un plugging de seguridad
}
