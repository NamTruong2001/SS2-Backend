
# SS2 FIT HANU PROJECT


## Requirements

For building and running the application you need:

- [JDK 1.8](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html) or [JDK 11](https://www.oracle.com/java/technologies/downloads/#java11)

## Running the application locally

- First, go to `pom.xml` download all dependencies
- Second, set up your mysql database configuration, change the mysql username and password to use at your machine, you can also change the database name if you want
- Third, go to `SS2-backend/src/main/java/com/ss2fit/ss2backend/Ss2BackendApplication.java` and run the main application, spring jpa will make all tables for you
- Go to /src/main/sql/all2.sql to load all the data to your database
- Go to http://localhost:8080/swagger-ui/index.html to see all the api 

## Account (username : password):
- truongAdmin : truong123 (admin)
- truong : truong123 (user)
- khanh : 12345 (user)
- thai : 12345 (user)
