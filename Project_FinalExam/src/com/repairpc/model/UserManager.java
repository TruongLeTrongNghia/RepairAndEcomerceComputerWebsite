package com.repairpc.model;

import java.util.List;

public class UserManager {

	private List<User> users;

	public UserManager() {
		loadUsers();
	}

	private void loadUsers() {
		this.users = (List<User>) JDBIConnector.getJdbi().withHandle(h -> {
			return h.createQuery("SELECT * FROM USERS").mapToBean(User.class).list();
		});
	}

	public List<User> getUsers() {
		return this.users;

	}

	public User findUser(String username) {

		for (User user : users) {
			if (user.getUsername().equalsIgnoreCase(username)) {
				return user;
			}
		}
		return null;

	}

	public void setUser(List<User> users) {
		this.users = users;
	}
}
