package project.persistence.entities.User.Validator;

import java.beans.PropertyEditorSupport;

/**
 * Created by hrabby on 21.11.2015.
 */
public class UserEmailEditor extends PropertyEditorSupport {

    @Override
    public void setAsText(String email) throws IllegalArgumentException{
        if (email.contains("@")) {
            setValue(email);
        }

    }



}
