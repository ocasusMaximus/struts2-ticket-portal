package cz.uhk.fim.db;


import cz.uhk.fim.model.Hall;
import cz.uhk.fim.model.Ticket;
import org.springframework.web.bind.annotation.ModelAttribute;

import java.util.List;

public interface HallService {

    Hall createHall(Hall hall);

    Hall loadHallById(int id);

    void removeHallById(int id);

    void removeHall(Hall hall);

    void deleteAllHalls();

    List<Hall> loadAllHalls();

    int getIdOfHall(Ticket ticket);
}
