


# Library Management System (Java)

## Introduction

This is a simple Library Management System implemented in Java using IntelliJ IDEA. The system uses MySQL as the database to store information about books, authors, and users.

## Setup Instructions

### 1. Import the Database

- Locate the `database` folder in the project.
- Import the provided SQL file (`admin2.sql`) into your MySQL server to create the necessary database and tables.

### 2. Configure Database Connection

- Open the project in IntelliJ IDEA.
- Navigate to the `src/db.java` file.
- Update the following fields in the `db.java` file with your MySQL server details:
  ```java
  String url = "jdbc:mysql://your_database_url:your_port/databasename";
  String username = "your_username";
  String password = "your_password";
  ```

### 3. Set Up the Project in IntelliJ IDEA

- Open IntelliJ IDEA.
- Navigate to `File` > `Open` and select the project folder.
- Ensure that you have the necessary SDK installed. Configure the SDK in the project settings if needed.

### 4. Locate the Main Class

- Open the `src/mainpage.java` file.

### 5. Run the Application

- Right-click on the `mainpage.java` file and select "Run mainpage.main()".
- The Library Management System should start, and you can interact with it through the  GUI.

## Features

- **Book Management**: Add, remove, and update book information.
- **Author Management**: Manage information about authors.
- **User Management**: Keep track of library users.

## Contributors

- Abdul Hannan



