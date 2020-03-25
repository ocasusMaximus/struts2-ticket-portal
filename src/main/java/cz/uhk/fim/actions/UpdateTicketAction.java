package cz.uhk.fim.actions;


import com.opensymphony.xwork2.ActionSupport;
import cz.uhk.fim.db.TicketService;
import cz.uhk.fim.model.Hall;
import cz.uhk.fim.model.Ticket;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class UpdateTicketAction extends ActionSupport {


    private Ticket ticket;
    private Hall updatedHall = new Hall();
    private int id;


    @Autowired
    private TicketService ticketService;


    public String update() {

//            <s:hidden name="%{id}"/>
//            <tr>
//                <s:select class="form-field" name="ticket.movie"
//        list="{'Star Wars: Pomsta sithů','Avengers: Endgame','Pulp Fiction', 'John Wick'}"
//        headerKey=""
//        label="Film"/>
//            </tr>
//            <tr>
//                <s:select class="form-field" name="ticket.language" list="{'Angličtina','Čeština'}"
//        headerKey=""
//        label="Jazyk"/>
//            </tr>
//            <tr>
//                <s:select class="form-field" name="ticket.hall" list="{'J2','J3'}"
//        headerKey=""
//        label="Sál"/>
//            </tr>
//            <tr>
//                <s:textfield class="form-field" name="ticket.numberOfSeats" type="number" min="1" label="Počet Míst"/>
//            </tr>
//            <s:submit class="button_a" value="Odeslat"/>
//            <s:reset class="button_a" value="Reset"/>
        Ticket dbTicket = ticketService.loadTicketById(this.ticket.getId());
        dbTicket.setMovie(ticket.getMovie());
        dbTicket.setLanguage(ticket.getLanguage());
        dbTicket.setHall(ticket.getHall());
        dbTicket.setNumberOfSeats(ticket.getNumberOfSeats());
        ticketService.updateTicket(dbTicket);

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
}




