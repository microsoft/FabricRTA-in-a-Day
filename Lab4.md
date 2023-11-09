# Lab 4: Data Activator. Reflex

This Lab is organised into the following 3 challenges:
|Challenge | Description | Est. Time|
|--|--|--|
| [Challenge 13](#challenge-11-create-reflex-item)| Create Reflex Item| 5 Min|
| [Challenge 14](#challenge-12-get-data-from-eventstreams)| Get Data From Eventstreams| 10 Min|
| [Challenge 15](#challenge-13-create-data-activator-objects)| Create Data Activator Objects| 10 Min|
| [Challenge 16](#challenge-14-create-data-activator-triggers)| Create Data Activator Triggers| 10 Min|

- ◀️ [Return to Homepage](readme.md)

- ## Challenge 13: Create Reflex Item

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

- ## Challenge 14: Get Data From Eventstreams

### Connect your Eventstream item to Data Activator

To connect your Eventstream item to data activator:

1. Open your Eventstream item from Lab 3
2. Add a destination to your Eventstream item, of type *Reflex*
 
![Open your Eventstream item](/assets/images/Lab4-select-reflex-destination.png "Screenshot of reflex event stream item.")

4. In the side panel, select an existing reflex item from previous Challenge then select *Add.*
  
5. Open your reflex item. You see the data flowing from your Eventstream item in the data pane.

 ![Open your reflex item](/assets/images/Lab4-select-reflex-destination2.png "Screenshot of selecting reflex item.")
 
 Data preview at the bottom:
 
 ![Data Preview](/assets/images/Lab4_DataPreview.png "Screenshot of Data Preview.")
 
 - ## Challenge 15: Create Data Activator Object

### Assign data to objects in Data Activator

   Once data is flowing into Data Activator, the next step is to assign your events to objects. You assign events to objects in **Data Mode**, which you can access from the tab at the bottom of the screen. 

## Assign data to a new object

To create an object, pick the events that you wish to monitor, then select **Assign your data** in the ribbon in the data pane. Data Activator prompts you for an Object name and a Key Column. Choose Enginenode as an object name. The Key Column must be a column in your events that uniquely identifies the objects being monitored. In our case it's "Node" Column. Then choose *Assign Properties* and select "Level" Column.

![Assign Data to a new Object](/assets/images/Lab4_CreateReflexDataObject.png "Screenshot of Create new Data Object.")

When you create an object, you're switched to **Design mode** with the event stream for the new object selected. The preview in the following image shows you the events that were received split out by the unique values from the ID column.

![Engine events](/assets/images/Lab4_EngineEvents.png "Screenshot of EngineEvents.")

By default the events for five random instances for the previous 24 hours are displayed in the chart. You can change this using the population selector and time selectors above the card.

 - ## Challenge 16: Create Data Activator Trigger
