package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MySQLUsersDao implements Users{


	@Override
	public User findByUsername(String username) {
		String query = "SELECT * FROM users WHERE username = ? LIMIT 1";
		try {
			PreparedStatement statement = connection.preparedStatement(query);
			statement.setString(1, username);
			ResultSet rs = statement.executeQuery();
			if (rs.next()) {
				return new User(
						rs.getLong("id"),
						rs.getString("username"),
						rs.getString("email"),
						rs.getString("password")
				);
			}

		} catch (SQLException e) {
			throw new RuntimeException("Error finding user by username " + username + ".", e);
		}
		return null;
	}

	@Override
	public Long insert(User user) {
		String sqlQuery = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";
		try {

			PreparedStatement statement = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
			statement.setString(1, user.getUsername());
			statement.setString(2, user.getEmail());
			statement.setString(3, user.getPassword());

			statement.executeUpdate();

			ResultSet rs = statement.getGeneratedKeys();


			if (rs.next()) {
				return rs.getLong(1);
			}

		} catch (SQLException e) {
			throw new RuntimeException("Error creating a new ad.", e);
		}
		return -1L;
	}
}
