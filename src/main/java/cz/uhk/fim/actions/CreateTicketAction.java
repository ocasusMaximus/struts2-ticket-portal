package cz.uhk.fim.actions;


import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import cz.uhk.fim.db.HallService;
import cz.uhk.fim.db.TicketService;
import cz.uhk.fim.model.Hall;
import cz.uhk.fim.model.Ticket;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class CreateTicketAction extends ActionSupport {



    private Ticket ticket = new Ticket();
    private   Hall updatedHall = new Hall();

    private  int id;

    @Autowired
    private TicketService ticketService;
    @Autowired
    private HallService hallService;


    public String create() {

        int idOfHall = hallService.getIdOfHall(ticket);
        updatedHall = hallService.loadHallById(idOfHall);
        int capacity = hallService.loadHallById(idOfHall).getCapacity();

        if (capacity >= ticket.getNumberOfSeats()) {
            ticketService.createTicket(ticket);
            updatedHall.setCapacity(capacity - ticket.getNumberOfSeats());
            hallService.createHall(updatedHall);

            return SUCCESS;

        } else {
            return ERROR;
        }

    }



    public Ticket getTicket() {
        return ticket;
    }

    public Hall getUpdatedHall() {
        return updatedHall;
    }

    public void setUpdatedHall(Hall updatedHall) {
        this.updatedHall = updatedHall;
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
}


