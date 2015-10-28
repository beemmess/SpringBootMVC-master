package project.persistence.entities.Data;

import project.persistence.entities.Events.Football;
import project.persistence.entities.Events.Sports;

<<<<<<< Updated upstream
import java.text.ParseException;
=======
>>>>>>> Stashed changes
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by audurgudjons on 28/10/15.
 */
public class EventData {
    public String eventType;

    public EventData(String atburdur){
        eventType = atburdur;
    }

    public static void main(String args[]) throws ParseException {
        String heimalid = "Víkingur Ó";
        String utilid = "KFG";
        int teljari = 3;
        String stadsetning = "Álftanes";
        String keppni = "Innimót - Úrslitakeppni mfl. karla";
<<<<<<< Updated upstream
        String dagurStr = "2015-01-15";
        SimpleDateFormat date = new SimpleDateFormat("yyyy-mm-dd");
        Date dagur = date.parse(dagurStr);
        String timiStr = "19:15";
        SimpleDateFormat time = new SimpleDateFormat("HH:mm");
        Date timi = time.parse(timiStr);

        Football fotboltaleikur = new Football(heimalid, utilid, teljari, stadsetning, keppni, dagur, timi);

        String awayTeam = fotboltaleikur.getAwayTeam();

        System.out.println(awayTeam);

    }
}
