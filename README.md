# ShopEase

ShopEase is a JSP e-commerce project with an HTML demo frontend and an initial MySQL schema for the server-backed version.

## Current state

- The HTML pages provide a browser-only shopping demo using `localStorage`.
- The JSP pages currently provide mostly static screens.
- `database/schema.sql` defines the first backend data model for users, products, orders, and order items.
- JSP authentication, JDBC repositories, sessions, admin CRUD, and payment gateway integration still need to be wired.

## Database setup

1. Install MySQL 8 or a compatible MariaDB version.
2. Open a MySQL client and run:

```sql
SOURCE C:/Users/ASUS/Desktop/ShopEase/database/schema.sql;
```

3. Copy `WEB-INF/jdbc.properties.example` to `WEB-INF/jdbc.properties` and set your local MySQL values. Keep `jdbc.properties` private.
4. Put MySQL Connector/J in Tomcat's `lib` folder so the JSP pages can load `com.mysql.cj.jdbc.Driver`.
5. The seeded admin row is a placeholder. Create the first admin through a controlled setup flow or replace `REPLACE_WITH_PBKDF2_HASH` with a hash produced by the shared helper before using it.
6. Do not commit database passwords or production credentials to the project.

## Planned server setup

The server-backed version should run on Apache Tomcat with the MySQL Connector/J driver. `register.jsp` and `login.jsp` now use the shared JDBC helper in `WEB-INF/jspf/db.jspf`, PBKDF2 password hashing, prepared statements, and HTTP sessions. Product CRUD and order persistence are the next backend slices.

## Important limitation

The schema alone does not make the current JSP pages persistent. The application still needs Java/JSP request handling and server-side validation before it is ready for real users.
