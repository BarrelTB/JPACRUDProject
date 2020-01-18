## JPA CRUD PROJECT: Baby Supplies

### OVERVIEW

The purpose of this project is to give a user the ability to Create, Read, Update, and Delete from the specified connected database. This is implemented through a WebBrowser Front end interface.

The idea of the project came from my current life circumstances, being that my wife and I are about to have a child due at the end of Feb 2020. Buying supplies for a new child is quite expensive, and the standard is to reach out to friends and family for their leftover/saved baby items they no longer need. The idea behind this application is to facilitate that on a broader scale. The future of this app will allow a regular user to host items via their own user inventory added to the database, as well as search for items they are in need of. There would be organizational users as well which can host multiple inventories for their specific locations assuming they span multiple locations. The organizations would also be able to purchase the discounted items from users to bolster their stock, delaying the host/sale time of a regular user, allowing a regular user to cash out faster. Items can also be hosted for free if users so choose.

#### Implementation:

Built first was the one table database (for the purposes of the class project; the database will be expanded soon) the table being an item and the fields being its various properties. Next I implemented a JPA Gradle project within eclipse to successfully map out an entity reflecting the table (item) as well as being the backbone of the full application. The third implementation was the SpringBoot Gradle project, which included the JPA project as a dependency. Within the SpringBoot project I implemented a Database Accessor Object to Create, Read, Update, and Delete from the database. Then adding a Controller to connect the backend to the front end JSPs.


### TECHNOLOGIES
- Java
- Eclipse/Spring Tool Suit
- SpringBoot
- Atom
- GitHub
- Shell
- JPA
- JPQL
- Gradle
- HTML/CSS/JSP
- Modification of a W3Schools template
- Chrome/Developer Console
- SQL/MYSQL
- MYSQL WorkBench
- MAMP


### FUTURE FUNCTIONALITY
- User Account Functionality
- Image hosting
- Categories
- Online Purchase/Shipping Facilitation
- Expand Database as Needed

### NEEDS IMPROVEMENT
- Front End / HTML/CSS/JSPs

### LESSONS LEARNED
- Implementing ENUM Types in Database Tables
- CRUD creation/Implementation
- Spring Boot Application/JPA Application
