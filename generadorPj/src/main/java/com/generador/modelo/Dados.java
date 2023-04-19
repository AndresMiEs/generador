package com.generador.modelo;

import java.util.Random;

import org.springframework.stereotype.Component;
@Component
public class Dados {

    private static final Random random = new Random();

    private Dados() {
       
    }

    public static int tirada(int numDados, int numCaras) {
        int totalTirada = 0;
        for (int i = 0; i < numDados; i++) {
            totalTirada += random.nextInt(numCaras) + 1;
        }
        return totalTirada;
    }
}
