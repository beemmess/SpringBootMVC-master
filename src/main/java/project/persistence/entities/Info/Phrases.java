package project.persistence.entities.Info;

import javax.persistence.*;


/**
 * Created by hrabby on 4.11.2015.
 */
@Entity
@Table(name = "phrases")
public class Phrases {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String type;
    private String english;
    private String icelandic;

    public Phrases() {
    }

    public Phrases(String type, String english, String icelandic) {
        this.type = type;
        this.english = english;
        this.icelandic = icelandic;
    }


    public Long getId() { return id;}
    public void setId(Long id) { this.id = id;}

    public String getType() { return type;}
    public void setType(String type) { this.type = type;}

    public String getEnglish() { return english;}
    public void setEnglish(String english) { this.english = english;}

    public String getIcelandic() { return icelandic;}
    public void setIcelandic(String icelandic) {this.icelandic = icelandic;}


    // This is for easier debug.
    @Override
    public String toString() {
        return String.format(
                "Phrases[type=%s, english=%s, icelandic=%s]",
                type,english,icelandic);
    }
}
