package org.cainiao.scaffold;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class ScaffoldApplication {

    public static void main(String[] args) {
        new SpringApplication(ScaffoldApplication.class).run(args);
    }
}
