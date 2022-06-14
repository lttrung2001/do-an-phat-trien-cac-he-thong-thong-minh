package fashion_shop.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Role")
public class Role {
	@Id
	@Column(name = "ID")
	private Integer IdRole;
	
	@Column(name = "Name")
	private String nameRole;
	
	@OneToMany(mappedBy = "role", fetch = FetchType.EAGER)
	private Collection<Account> accounts;

	public Integer getIdRole() {
		return IdRole;
	}

	public void setIdRole(Integer idRole) {
		IdRole = idRole;
	}

	public String getNameRole() {
		return nameRole;
	}

	public void setNameRole(String nameRole) {
		this.nameRole = nameRole;
	}

	public Collection<Account> getAccounts() {
		return accounts;
	}

	public void setAccounts(Collection<Account> accounts) {
		this.accounts = accounts;
	}
}