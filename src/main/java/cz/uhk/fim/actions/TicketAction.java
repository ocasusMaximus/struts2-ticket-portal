package cz.uhk.fim.actions;


import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import cz.uhk.fim.db.TicketService;
import cz.uhk.fim.model.Ticket;
import cz.uhk.fim.model.User;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;



@ParentPackage("struts-thymeleaf")
@Component

public class TicketAction extends ActionSupport implements ModelDriven<Ticket> {

    private Ticket ticket = new Ticket();
    private User user = new User("Franta");
    @Autowired
    private TicketService ticketService;

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public  String message;
    public String execute() throws Exception {

        return SUCCESS;
    }

    public String hello(){
        message = "Hello I'm Thymeleaf!";
        return SUCCESS;
    }
    public String create(){
        ticketService.createTicket(ticket);
        ticketService.loadAllTickets();
        return SUCCESS;
    }
    public String delete(){
        ticketService.removeTicket(ticket);
        return SUCCESS;
    }
    public String update(){
        ticketService.updateTicket(ticket);
        return SUCCESS;
    }


    public Ticket getModel() {
        return ticket;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
