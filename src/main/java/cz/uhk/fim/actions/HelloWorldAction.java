package cz.uhk.fim.actions;

import com.opensymphony.xwork2.ActionSupport;
import lombok.extern.log4j.Log4j2;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.stereotype.Component;

//@Namespace("/")
@ParentPackage("struts-thymeleaf")
@Component
@Log4j2
public class HelloWorldAction extends ActionSupport {

    private static final long serialVersionUID = 7475177902802386554L;
    private String message;

    @Override
    public String execute() throws Exception {
        message = "Hello, this is a Thymeleaf example!";
        return SUCCESS;
    }
    public String getMessage() {
        return message;
    }
}
