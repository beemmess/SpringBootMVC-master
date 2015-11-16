package project.persistence.entities.Events;

/**
 * Created by hlingunnlaugsdottir on 28/10/15.
 */
import org.json.JSONException;
import project.persistence.entities.Data.EventData;

import java.io.IOException;
import java.text.ParseException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;

/**
 * Created by hlingunnlaugsdottir on 28/10/15.
 */

public class Sports {
    public String tournament;
    public LocalDate date;
    public Date time;

    public Sports(){
    }

    public Sports(String keppni, LocalDate dagur, Date timi) {
        tournament = keppni;
        date = dagur;
        time = timi;
    }

    public String getTournament(){
        return tournament;
    }

    public LocalDate getDate() {
        return date;
    }

    public Date getTime() {
        return time;
    }

    public void setTournament(String keppni){
        tournament = keppni;
    }

    public void setDate(LocalDate dagur) {
        date = dagur;
    }

    public void setTime(Date timi) {
        time = timi;
    }

    /*
    public static Sports[] getSports() throws JSONException, ParseException {
        String a = "football";
        EventData data = new EventData(a);
        Sports[] ithrottir = new Sports[1];
        ithrottir = data.createEvent();
        return ithrottir;
    }
    */

    public static void main(String args[]) throws JSONException, ParseException, IOException {
    }
}
