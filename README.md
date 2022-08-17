# Java Springboot demo: simple http server
- skeleton java 18 code generated with [spring intializr](https://start.spring.io)
- java 18 is the only dependency

- run with maven springboot plugin (no compile necessary)
    ```sh
    ./mvnw spring-boot:run
    ```

- use maven to package as a jar 
    ```sh
    ./mvnw package
    ```

- run the jar
    ```sh
    java -jar target/spring-boot-0.0.1-SNAPSHOT.jar
    ```

- hit the endpoint
    ```sh
    curl localhost:8080/blinky
    ```