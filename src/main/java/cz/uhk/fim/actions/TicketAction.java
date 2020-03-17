package cz.uhk.fim.actions;

import com.opensymphony.xwork2.ActionSupport;
import lombok.extern.log4j.Log4j2;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.stereotype.Component;

@ParentPackage("struts-thymeleaf")
@Component
@Log4j2
public class TicketAction extends ActionSupport {

    @Override
    public String execute() throws Exception {

        return SUCCESS;
    }
}
