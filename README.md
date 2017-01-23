Discovery
---------

This is a simple iOS app to demonstrate MVC design pattern. This design further improves MVC design by separating network connections and services. The app makes a get call nearby events for the [discovery API of *Ticketmaster*](http://developer.ticketmaster.com/products-and-docs/apis/discovery/v2/) which returns the required number of nearby events. It has the following design

**Protocols**

> The protocols which enable callback

**Service**  

> Services which pass the required data Network connections and process the data obtained from network

**Application** 

> The basic files required for the app

***Controller***

> Controller files which interact with model and view

***Model***

> Data which needs to be populated on view

***View*** 

> User interface files such as .xib files

**Supporting files**

> The main method