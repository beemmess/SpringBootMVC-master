package project.persistence.entities.Data;

import project.persistence.entities.Events.Football;
import project.persistence.entities.Events.Sports;

import java.util.Date;

/**
 * Created by audurgudjons on 28/10/15.
 */
public class EventData {
    public String eventType;

    public EventData(String atburdur){
        eventType = atburdur;
    }

    public static void main(String args[]) {
        String heimalid = "Víkingur Ó";
        String utilid = "KFG";
        int teljari = 3;
        String stadsetning = "Álftanes";
        String keppni = "Innimót - Úrslitakeppni mfl. karla";
        Date dagur = 2015-01-15;
        //Date timi = 19:30;


        Football fotboltaleikur = new Football(heimalid, utilid, teljari, stadsetning, keppni, dagur, timi);

    }
}
