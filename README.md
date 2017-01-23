Discovery
---------

simple iOS app to demonstrate MVC design pattern. This design further improves MVC design by separating network connections and services. The app makes a GET call to nearby events for the [discovery API of *Ticketmaster*](http://developer.ticketmaster.com/products-and-docs/apis/discovery/v2/) which returns the required number of nearby events. It has the following design

**Protocols**

The protocols which enable callback

> **DidGetResponse :**  Service Delegates NetworkConfig to handle GET and POST requests
> **DidGetResponseFromService :**  ViewController delegates Service to pass the required data to network and handle the response from network


**NetworkConfig**

Network files that perform GET and POST requests

> **doGet :**  performs GET request
> **doPost :** performs POST request

**Service**  

Services which pass the required data Network connections and process the data obtained from network

> **getAllNearbyEvents** **:** performs GET request by passing Ticketmaster Discovery API url 

**Application** 

The basic files required for the app

***Controller***

Controller files which interact with model and view

> **InitialViewController :** Displays the logo and animates activity indicator until the required data is obtained from the API
> **TableViewController :** Populates data obtained from API in a simple TableView. A click on each cell, will perform segue to the webView where event ticket can be purchased
> **WebView :** Displays Ticketmaster interface to purchase selected event ticket

***Model***

Data which needs to be populated on view

> **Event :** class which contains three strings to contain on click url, picture url and title
> **EventModel :** class containing array of events which is populated in the tableview

***View*** 

User interface files such as .xib files

**Supporting files**

Contains the main method

**Pods**
Dependency frameworks injected by Cocoapods 

> **[SDWebImage :](https://github.com/rs/SDWebImage)** This library provides an async image downloader with cache support.

**Screenshots**

![](http://www-scf.usc.edu/~raokarth/4.png)
![](http://www-scf.usc.edu/~raokarth/5.png)
![](http://www-scf.usc.edu/~raokarth/6.png)

