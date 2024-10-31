package demoblaze;

import com.intuit.karate.junit5.Karate;

public class ApiRunner {

    @Karate.Test
    Karate signupRunner(){
        return Karate.run("signup.feature").relativeTo(getClass());
    }

    @Karate.Test
    Karate loginRunner(){
        return Karate.run("login.feature").relativeTo(getClass());
    }
}