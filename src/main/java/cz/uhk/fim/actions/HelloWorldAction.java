package cz.uhk.fim.actions;

import com.opensymphony.xwork2.ActionSupport;

import org.apache.struts2.convention.annotation.*;
import org.springframework.stereotype.Component;


//@ParentPackage("struts-thymeleaf")
@Component

public class HelloWorldAction extends ActionSupport {


    private String message;

    @Action(value = "helloD", results = {@Result(name = "success", location = "/templates/index.html")})
  //  @Override
    public String helloS() throws Exception {
        message = "Hello, this is a Thymeleaf example!";
        return SUCCESS;
    }
    public String getMessage() {
        return message;
    }
}
