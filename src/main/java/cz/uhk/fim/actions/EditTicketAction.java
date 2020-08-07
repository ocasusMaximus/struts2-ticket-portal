package cz.uhk.fim.actions;


import com.opensymphony.xwork2.ActionSupport;
import cz.uhk.fim.db.HallService;
import cz.uhk.fim.db.TicketService;
import cz.uhk.fim.model.Hall;
import cz.uhk.fim.model.Ticket;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class EditTicketAction extends ActionSupport {


    private Ticket ticket;
    private int id;
    List<Hall> hallList;

    @Autowired
    private HallService hallService;


    @Autowired
    private TicketService ticketService;


    public String edit() {
        hallList = hallService.loadAllHalls();
        ticket = ticketService.loadTicketById(id);
        return SUCCESS;
    }


    public Ticket getTicket() {
        return ticket;
    }

    public void setTicket(Ticket ticket) {
        this.ticket = ticket;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public List<Hall> getHallList() {
        return hallList;
    }
}




