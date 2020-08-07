package cz.uhk.fim.actions;


import com.opensymphony.xwork2.ActionSupport;
import cz.uhk.fim.db.HallService;
import cz.uhk.fim.db.TicketService;
import cz.uhk.fim.model.Hall;
import cz.uhk.fim.model.Ticket;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class DeleteTicketAction extends ActionSupport {


    private int id;


    @Autowired
    private HallService hallService;


    @Autowired
    private TicketService ticketService;


    public String delete() {
        Ticket dbticket = ticketService.loadTicketById(id);
        int tickNoS = dbticket.getNumberOfSeats();
        int idOfHall = hallService.getIdOfHall(dbticket);
        Hall updatedHall = hallService.loadHallById(idOfHall);
        int capacity = updatedHall.getCapacity() + tickNoS;
        ticketService.removeTicket(dbticket);
        updatedHall.setCapacity(capacity);
        hallService.createHall(updatedHall);
        ticketService.loadAllTickets();
        return SUCCESS;
    }

    public String deleteAllTickets() {

        for (Ticket ticket : ticketService.loadAllTickets()) {

            int tickNoS = ticket.getNumberOfSeats();
            int idOfHall = hallService.getIdOfHall(ticket);
            Hall updatedHall = hallService.loadHallById(idOfHall);
            int capacity = updatedHall.getCapacity() + tickNoS;
            updatedHall.setCapacity(capacity);
            hallService.createHall(updatedHall);
        }
        ticketService.deleteAllTickets();
        return SUCCESS;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}




