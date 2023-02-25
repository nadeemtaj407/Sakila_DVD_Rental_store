# Sakila_DVD_Rental_store
## Sakila DVD rental store Business intelligence (BI) Analysis  
The Sakila Database contains information about a DVD rental firm. I queried the database for this project to acquire a better understanding of the client base
The database presents a nicely normalized schema modelling a DVD rental store, featuring information such as films, actors, film-actor relationships, and a central inventory table that connects film, stores, and rental.

This database gave a better understanding of data, and how to query the client base dataset, how to compare the performance of different stores and cities.

### Local Environmental Setup 
Follow the step to provide below to setup the environment in your local machine with MySQL and database
 
### Step.1 Downloading MySQL
First, we will need to download the MySQL installer on your local machine.
The instructions below provide a detailed description of the steps we need to take.
Installing MySQL For windows/Mac
https://dev.mysql.com/downloads/installer/

Install a MySQL installer on your PC. 
While installing you need to select custom install and select below options only.
- MySQL server 8.0.30
- MySQL workbench 8.0.30
- MySQL Shell 8.0.30 

### Step. 2 Downloading Sakila Database 
Once MySQL installed. We need to download sakila database for DVD store

Visit on this https://www.sqliz.com/sakila/installation/  
Scroll down and you will find a “Sakila database download” which is written in bold. Below that you will find this https://downloads.mysql.com/docs/sakila-db.zip
Zip file will be downloaded named as sakila-db,zip

### Step.3 Importing Database in MySQL Workbench

We applied two different method to importing the file
- 1.   Command line
First of all, Go to Start menu<>search bar type “Cmd”<> right click on command prompt “run as administrator”<> change the directory Cmd to mysql bin<> cd C:\Program Files\MySQL\MySQL Server 8.0\bin<>mysql –u root –p<>password: enter your root password while you set installing the MySQL <> source path( C:\xyz.sql) you need add extension otherwise you may face error.
- 2.   Direct from MySQL Workbench
Start menu<> Search Bar type “MySQL Workbench” <> select server from tool bar<>scroll down select “import Data” <>select import data from self-contained file<>select folder where Sakila database is<> scroll down and select start import<>Done
Step.  

### Business Problems
We understand the complete schema of DVD rental store and tried to discuss some business problems and solve it through the SQL queries.




### Genre based analysis

-	Name the category which rented the most 
-	which category generated more revenue
-	top 3 films of each genera of revenue/frequency. 
- Insight: To recommend the customer about our most popular category and movie

### film based analysis:
-	list the movies that generate more revenue
-	Which movie rented the most? (Frequency)

- Insight: we can identify which movie is getting popular and make sure to keep it always in stock.

### Actor based analysis 
-	How many actors are available in each category?
-	Name an actor who is the most preferable in industry, 
-	write how many films he has done?
- Insight: Which Actor is the best for specific genre 

### City based analysis 

-	Top 5 cities we get maximum revenue
-	Five lowest cities generating minimum revenue
- Insight: To have strategic marketing campaign to increase the revenue in lower generating cities



### Customer based analysis:
-	Top three Customers and from which city they belong?
-	Top 5 customers who paid the maximum amount of money?

- Insights: To give them special discounts in our upcoming campaign

