package by.nc.teamone.entities.enums;

public enum UserRole {

    ADMIN("ROLE_ADMIN"),
    USER("ROLE_USER"),
	LANDLORD("ROLE_LANDLORD");

    private String role;

    UserRole(String columnName) {
        this.role = columnName;
    }

    public String getRole() {
        return role;
    }
}
