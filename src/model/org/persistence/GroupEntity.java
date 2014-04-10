package model.org.persistence;

import java.io.Serializable;

import javax.persistence.*;

/**
 * Entity correspondant à la table group_user
 * @author mickael
 *
 */
@Entity
@Table(name="group_user")
@NamedQueries
({
	//définition de requêtes
	@NamedQuery(name = "GroupEntity.findAll", query = "Select g From GroupEntity g"),
	@NamedQuery(name = "GroupEntity.findAllName", query = "Select g.name From GroupEntity g order by g.name"),
	@NamedQuery(name = "GroupEntity.findById", query= "Select g FROM GroupEntity g WHERE g.id = :id"),
	@NamedQuery(name = "GroupEntity.findByName", query= "Select g FROM GroupEntity g WHERE g.name = :name"),
	@NamedQuery(name = "GroupEntity.findAllByGroup", query= "Select g FROM GroupEntity g WHERE g.id_group_user = :idGroupUser")
})
public class GroupEntity implements Serializable
{
	//Serialization
	private static final long serialVersionUID = 1L;
	
	//Définition des colonnes de la table
	@Id
	@Column(name="id_group_user")
	private long id;
	@Column(name="name")
	private String name;
	
	/**
	 * Getters and Setters
	 */
	public long getId()
	{
		return id;
	}
	
	public void setId(long id) 
	{
		this.id = id;
	}
	
	public String getName() 
	{
		return name;
	}
	
	public void setName(String name) 
	{
		this.name = name;
	}
}
