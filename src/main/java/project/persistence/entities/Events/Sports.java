package project.persistence.entities.Events;

/**
 * Created by hlingunnlaugsdottir on 28/10/15.
 */
import java.util.Date;

/**
 * Created by hlingunnlaugsdottir on 28/10/15.
 */

public class Sports {
    public String tournament;
    public Date date;
    public Date time;

    public Sports(String keppni, Date dagur, Date timi) {
        tournament = keppni;
        date = dagur;
        time = timi;
    }

    public String getTournament(){
        return tournament;
    }

    public Date getDate() {
        return date;
    }

    public Date getTime() {
        return time;
    }

    public void setTournament(String keppni){
        tournament = keppni;
    }

    public void setDate(Date dagur) {
        date = dagur;
    }

    public void setTime(Date timi) {
        time = timi;
    }
}
