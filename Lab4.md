# Lab 4: Data Activator. Reflex

This Lab is organised into the following 3 challenges:
|Challenge | Description | Est. Time|
|--|--|--|
| [Challenge 11](#challenge-11-create-reflex-item)| Create Reflex Item| 5 Min|
| [Challenge 12](#challenge-12-get-data-from-eventstreams)| Get Data From Eventstreams| 15 Min|
| [Challenge 13](#challenge-7-going-more-advanced-with-kql)| Create Objects and Triggers| 15 Min|

- ◀️ [Return to Homepage](readme.md)

- ## Challenge 11: Create Reflex Item

### Get started with Data Activator

The first step in using Data Activator is for your administrator to enable Data Activator for your organization. The following image shows where to enable Data Activator in the Admin portal.

![Get Started with Data Activator](/assets/images/data-activator-get-started-04.png "Screenshot of enabling data activator in the admin portal.")

Next, select the Data Activator experience in Microsoft Fabric, then select it from the menu at the bottom of the screen to tailor your Fabric experience to Data Activator.

![Get Started with Data Activator](/assets/images/data-activator-get-started-01.png "Get Started with Data Activator")


### Create a reflex item

As with all Fabric experiences, you begin using Data Activator by creating an item in a Fabric Workspace. Data Activator’s items are called *reflexes.*

A reflex holds all the information necessary to connect to data, monitor for conditions, and act. You'll typically create a reflex for each business process or area you’re monitoring.

To get started, you create a reflex item in your Fabric workspace. From the New menu in the workspace, choose the **Reflex** item.

![Create Reflex Item](/assets/images/data-activator-get-started-03.png "Screenshot of selecting a new data activator reflex item.")

### Navigate between data mode and design mode

When you open a reflex, you see two tabs at the bottom of the screen that switch between **data mode** and **design mode**. In data mode, you can see your incoming data and assign it to objects. In design mode, you build triggers from your objects. At first, these will be empty; the next step after creating a reflex is to populate it with your data.

![Get Started with Data Activator](/assets/images/data-activator-get-started-02.png "Screenshot of data activator switch between data mode and design mode.")

- ## Challenge 12: Get Data From Eventstreams

### Connect your Eventstream item to Data Activator

To connect your Eventstream item to data activator:

1. Open your Eventstream item from Lab 3
2. Add a destination to your Eventstream item, of type *Reflex*
 
![Open your Eventstream item](/assets/images/Lab4-select-reflex-destination.png "Screenshot of reflex event stream item.")

4. In the side panel, select an existing reflex item from previous Challenge then select *Add.*
  
5. Open your reflex item. You see the data flowing from your Eventstream item in the data pane.

 ![Open your reflex item](/assets/images/Lab4-select-reflex-destination2.png "Screenshot of selecting reflex item.")
    
   

