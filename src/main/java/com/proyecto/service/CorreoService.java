package com.proyecto.service;

import jakarta.mail.MessagingException;//plugging para crear un correo

public interface CorreoService {//esta lo que hace es enviar un correo 
    public void enviarCorreoHtml(
            String para, 
            String asunto, 
            String contenidoHtml) 
            throws MessagingException;
}