# Lab 4: Data Activator. Reflex

This Lab is organised into the following 3 challenges:
|Challenge | Description | Est. Time|
|--|--|--|
| [Challenge 13](#challenge-13-create-reflex-item)| Create Reflex Item| 5 Min|
| [Challenge 14](#challenge-14-get-data-from-eventstreams)| Get Data From Eventstreams| 10 Min|
| [Challenge 15](#challenge-15-create-data-activator-object)| Create Data Activator Object| 10 Min|
| [Challenge 16](#challenge-16-create-and-test-data-activator-trigger)| Create and Test Data Activator Trigger| 10 Min|

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

| :information_source: **Note**    |
|:---------------------------|
| If you get an error saying the Reflex does not exist, it may not be activated/enabled yet. Try opening the Reflex and click Get Data using the Sample Simulator Package shipment to enable the reflex with a data model. Then go back to the notebook to simulate the stream again from Lab3 with a new session and your Reflex destination should say Ingesting. If not try deleting the Reflex destination from your Eventstream and readding it to the existing reflex in your workspace. Confirm your Log data is streaming to reflex under the Data tab you should have a new table at the top, plus 3 others regarding the package shipment sample. |
 
 - ## Challenge 15: Create Data Activator Object

### Assign data to objects in Data Activator

   Once data is flowing into Data Activator, the next step is to assign your events to objects. You assign events to objects in **Data Mode**, which you can access from the tab at the bottom of the screen. 

## Assign data to a new object

To create an object, pick the events that you wish to monitor, then select **Assign your data** in the ribbon in the data pane. Data Activator prompts you for an Object name and a Key Column. Type EngineNode as an object name. The Key Column must be a column in your events that uniquely identifies the objects being monitored. In our case it's a "Node" Column. Then choose *Assign Properties* and select a "Level" Column.

![Assign Data to a new Object](/assets/images/Lab4_CreateReflexDataObject.png "Screenshot of Create new Data Object.")

When you create an object, you're switched to **Design mode** with the event stream for the new object selected. The preview in the following image shows you the events that were received split out by the unique values from the ID column.

![Engine events](/assets/images/Lab4_EngineEvents24hours.png "Screenshot of EngineEvents.")

By default the events for five random instances for the previous 24 hours are displayed in the chart. You can change this using the population selector and time selectors above the card.

 - ## Challenge 16: Create and Test Data Activator Trigger

Triggers are where you specify the values you want to select from events, the conditions you want to detect, and the actions you want Data Activator to take. 

### Step 1: Make a new trigger

You use the **New trigger** button in the ribbon to create a new trigger. You can give it a name by clicking the name of the trigger and editing it.

![creating a new trigger](/assets/images/data-activator-create-triggers-design-mode-01.png "Screenshot of creating a new trigger.")

### Step 2: Select your data

The next step is to select the value for the trigger. You can either choose from a column from an event, or from a property you’ve already defined. 
Let's select level property for the trigger.

![selecting data for the trigger](/assets/images/data-activator-create-triggers-design-mode-03.png "Screenshot of selecting the data for the trigger.")

Once you select a column or property, you see a preview of the values for a sample of the instances of the object.

![selecting data for the trigger](/assets/images/Lab4_data-activator-create-triggers-property_values.png "Screenshot of selecting the data for the trigger.")

### Step 3: Define the condition to detect

Next, you choose the type of condition that you want to detect. You can use conditions that check when a numeric value goes above/below a threshold (for example, Temperature is greater than 30), when a logical true/false value changes (for example, HasFault becomes True), or when a string value changes (for example, Status changes from InCompliance).

In our case, the conditions are met when Level property value changes from "Information" to "Warning".

![selecting trigger condition](/assets/images/data-activator-create-triggers-design-mode-04.png "Screenshot of a choosing the trigger condition.")

The **Detect** card then shows two charts:

The first shows, for the five sampled Engine Nodes instances, when the condition was detected. 

The second chart show the total number of times the trigger would have fired, for all instances that Data Activator is tracking. There are spikes, where the alert was fired. These might not be from the 5 instances sampled in the other charts.

### Step 4: Define the action to take

Finally, the act card lets you choose what to do when the condition is detected.

![selecting an action when a condition is detected](/assets/images/data-activator-create-triggers-design-mode-06.png "Screenshot of selecting an action when a condition is detected.")

Different action types have different parameters, such as the email address you want to send to, the workflow you want to start, subject line or additional information etc.

![sending a message when a condition is detected](/assets/images/Lab4_send_teams_msg_when_triger_cond_met.png "Screenshot of sending a message when a condition is detected.")

## Test your trigger

After you have created a trigger, you can test it by selecting *Send me a test alert*. This finds a past event for which the trigger activation is true, then send you an alert so that you can see what the alert would have looked like for that event. Note that:

* The test alert will always go to you, regardless of the recipient field in the *Act* card
* The *Send me a test alert* option is only enabled if you have had at least one past event for which the trigger condition is true.

![testing a trigger](/assets/images/Lab4_test_trigger.jpg "Screenshot of testing a trigger.")

## Start and stop your trigger

Triggers are created in a 'Stopped' state. This means they're not being evaluated as data flows into the system, and won't take any actions as a result. You also need to select Start from the toolbar for Data Activator to start running the trigger and taking action. 

![starting a trigger](/assets/images/Lab4_start_trigger.jpg "Screenshot of starting a trigger.")

Once started, you'll see *Running* appears in the title area of the property.

The toolbar changes to allow you to Stop the trigger. If you make changes to the trigger (for example changing the condition it looks for), you need to select Update in the toolbar to make sure that the running trigger uses the new values.

![teams message](/assets/images/Lab4_TeamsMessage.png "Screenshot of teams message.")

When you delete a trigger (or Object), it can take up to 5 minutes for any back-end processing of data to complete. This means your trigger may continue to monitor data, and take actions accordingly, for a few minutes after it has been deleted.



## 🎉 Congrats! You've completed Fabric RTA in a Day Lab 4. 

## Continue your learning journey
Learn more about Microsoft Fabric at https://aka.ms/fabric-learn 

Learn and get hands on experience with a full blown ADX cluster and advanced ADX topics like Materialized Views, scaling, security, geo mapping and more.

- [Azure Data Explorer Microhack](https://github.com/Azure/azure-kusto-microhack)

 ![ADX Microhack badge](/assets/images/microhack_badge.png "ADX Microhack badge")

- Become a detective and solve some puzzles using Kusto Query Langugage! You can reuse the same free cluster that you have used to complete ADX-in-a-Day challenges.
[Kusto Detective Agency](https://detective.kusto.io)

 ![Kusto Detective Agency Badge](/assets/images/kda_badge.png "Kusto Detective Agency Badge")


<details>
<summary><b>Contributing</b></summary><br>

This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit https://cla.opensource.microsoft.com.

When you submit a pull request, a CLA bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., status check, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.
</details>
  
<details>
<summary><b>Trademarks</b></summary><br>

This project may contain trademarks or logos for projects, products, or services. Authorized use of Microsoft 
trademarks or logos is subject to and must follow 
[Microsoft's Trademark & Brand Guidelines](https://www.microsoft.com/en-us/legal/intellectualproperty/trademarks/usage/general).
Use of Microsoft trademarks or logos in modified versions of this project must not cause confusion or imply Microsoft sponsorship.
Any use of third-party trademarks or logos are subject to those third-party's policies.
</details>
