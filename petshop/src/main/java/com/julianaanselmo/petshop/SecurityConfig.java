package com.julianaanselmo.petshop;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class SecurityConfig {

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http
            // Desabilita CSRF (necessário para testes com Postman)
            .csrf(csrf -> csrf.disable())

            // Habilita CORS
            .cors(cors -> {})

            // Configuração de autorização
            .authorizeHttpRequests(auth -> auth
                // Libera acesso sem login
                .requestMatchers("/api/categorias/**", "/api/produtos/**").permitAll()

                // Qualquer outra rota precisa de autenticação
                .anyRequest().authenticated()
            );

        return http.build();
    }

    // Criptografia de senha
    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
}