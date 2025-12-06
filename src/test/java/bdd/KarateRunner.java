package bdd;

import com.intuit.karate.junit5.Karate;

public class KarateRunner {
    @Karate.Test
    Karate testSystemProperty() {
        return Karate.run("classpath:bdd")
                .tags("@sesion1");
                //.karateEnv("e2e")
                //.systemProperty("foo", "bar");
    }

}
