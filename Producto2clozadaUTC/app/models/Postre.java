package models;

import java.util.*;
import javax.persistence.*;

import com.avaje.ebean.Model;
import play.data.format.*;
import play.data.validation.*;

import com.avaje.ebean.*;


@Entity 
public class Postre extends Model {

    private static final long serialVersionUID = 1L;

	@Id
    public Long id;
    
    @Constraints.Required
    public String name;
    
    @Constraints.Required
    public String descripcion;


    @Constraints.Required
    public String calorias;

     
    public static Find<Long,Postre> find = new Find<Long,Postre>(){};
    
    
    
    
}

