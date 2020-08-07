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
public class ShowPage extends ActionSupport {

    @Autowired
    private TicketService ticketService;
    @Autowired
    private HallService hallService;


    List<Hall> hallList;
    List<Ticket> ticketList;

    @Override
    public String execute() throws Exception {
        return SUCCESS;
    }

    public String listTickets() {
        ticketService.loadAllTickets();
        ticketList = ticketService.loadAllTickets();
        return SUCCESS;
    }

    public String listHalls() {
        initHalls();
        hallService.loadAllHalls();
        hallList = hallService.loadAllHalls();
        return SUCCESS;
    }

    private void initHalls() {
        if (hallService.loadAllHalls().size() == 0) {
            Hall j2 = new Hall();
            j2.setId(1);
            j2.setCapacity(100);
            j2.setName("J2");
            Hall j3 = new Hall();
            j3.setId(2);
            j3.setCapacity(100);
            j3.setName("J3");

            hallService.createHall(j2);
            hallService.createHall(j3);
        }
    }

    public List<Hall> getHallList() {
        return hallList;
    }

    public void setHallList(List<Hall> hallList) {
        this.hallList = hallList;
    }

    public List<Ticket> getTicketList() {
        return ticketList;
    }

    public void setTicketList(List<Ticket> ticketList) {
        this.ticketList = ticketList;
    }
}
