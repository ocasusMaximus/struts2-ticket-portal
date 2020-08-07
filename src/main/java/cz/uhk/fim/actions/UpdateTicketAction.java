package cz.uhk.fim.actions;


import com.opensymphony.xwork2.ActionSupport;
import cz.uhk.fim.db.HallService;
import cz.uhk.fim.db.TicketService;
import cz.uhk.fim.model.Hall;
import cz.uhk.fim.model.Ticket;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class UpdateTicketAction extends ActionSupport {


    private Ticket ticket;
    private int id;


    @Autowired
    private TicketService ticketService;
    @Autowired
    private HallService hallService;


    public String update() {
        Ticket dbTicket = ticketService.loadTicketById(id);
        int oldTicketNoS = dbTicket.getNumberOfSeats();

        int oldIdOfHall = hallService.getIdOfHall(dbTicket);
        int idOfHall = hallService.getIdOfHall(ticket);

        Hall oldHall = hallService.loadHallById(oldIdOfHall);
        Hall updatedHall = hallService.loadHallById(idOfHall);

        int capacity;
        if (oldHall.getId() != updatedHall.getId()) {
            capacity = updatedHall.getCapacity();
        } else {
            capacity = oldHall.getCapacity() + oldTicketNoS;
        }

        if (capacity >= ticket.getNumberOfSeats()) {

            ticket.setId(id);
            ticketService.updateTicket(ticket);

            if (oldHall.getId() != updatedHall.getId()) {
                int oldCapacity = oldHall.getCapacity() + oldTicketNoS;
                oldHall.setCapacity(oldCapacity);
                hallService.createHall(oldHall);
            }

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




