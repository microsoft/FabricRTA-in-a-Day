
![image](https://github.com/nataliarodri906/FabricRTA-in-a-Day/assets/130388388/59a3359b-234a-452a-adb6-e4526433ffb0)
  
# Fabric Real-Time Analytics In-A-Day  
## Hands-on and fundamentals learning sessions on Fabric RTA

### Table of Contents  

 1. Fabric Real-Time Analytics In-A-Day   
 2. What are the expectations from a Proctor?
 3. Setting the Stage
 4. Start with a Presentation
 5. Hands-on Labs  
 6. Frequently Asked Questions (FAQ)  
    a. Program related  
    b. Technical Questions    
7. Contribution to the Program  
8. Useful Resources   
   a. Presentation and intro video  
   b. Important links  
   c. Answers  

   
# Fabric Real-Time Analytics In-A-Day  

Fabric RTA-In-A-Day is a hands-on, learning session aimed to provide Fabric RTA knowledge to participants having minimal or no prior exposure to the product. The topics covered in these hands-on sessions are fundamental topics relating to ADX and Kusto Query Language (KQL). The Learning sessions are divided into 2 labs meant to be delivered in any of the 2 following styles.

- 2 days of 4 Hours each (Day 1 – Lab 1 and Day 2 – Lab 2) - Recommended (OR)
- 1 day of 8 Hours (Day 1 – Lab 1 and Lab 2)
  
In case of fully remote or hybrid deliveries, we highly recommend to deliver it over 2 half days.

This document is created to help proctors to successfully deliver Fabric RTA-In-A-Day to audience and make the content self-sufficient.  Proctors are encouraged to complete the labs prior to their delivery to have an end-to-end knowledge on topics, challenges, and tasks. Read further to get help on - Setting the stage for audience and their expectations, presentation, lab structure, FAQ, contribution to the content.  Instructors who complete delivery of at least one Fabric RTA-In-A-Day session will be issued a ‘Special’ Fabric RTA-In-A-Day Instructor badge.

** Fabric RTA-In-A-Day Instructor badge place holder **

# What are the expectations from Proctor?  

Being an instructor/proctor means that we are fully aware of entire program and can help participants achieve success in completing the challenges, learning RTA fundamentals, working with KQL queries and earning Fabric RTA-In-A-Day.  Instructor are expected to:

- Block calendars to completely dedicate 8 hours’ time to Fabric RTA-In-A-Day.  
- Be able to do presentation on the content.  
- Prior completion of challenges.  
- Keep the sessions interactive by using questionnaires and polls.  
- Unblock any individual or group with task specific guidance.  
- Ensuring maximum tasks and feedback completion rate. Ex: Be sure to mention that participants completing all challenges will be issued a 'Fabric RTA-In-A-Day' completion badge from Credly.
  
  	![image](https://github.com/nataliarodri906/FabricRTA-in-a-Day/assets/130388388/02ace8f4-8e99-4156-9dcd-4fe2d4e4bb03)


- Improve the program by taking the feedback from participants back to Product Group.  
- Improve the program by raising pull requests for bug fixes/content enhancement.  

# Setting the Stage

Make sure you keep the audience’s best ineterests in mind when delivering the sessions. Follow a similar path that is given below for initial 20 min.

1. Spend 2 min on introduction of Fabric RTA-In-A-Day sessions.  
2. Spend 10 min on personal and team(other instructors on the call) introduction.  
3. Spend 5 min to talk through the sessions Agenda and talk through the plan.  
   
**Agenda**

   | Day 1 | Lab 1 |
   |:------|:------
   | 15 min | **Kick-off / Team introduction** | 
   | 45 min | **Presentation Part 1 – Fabric Introduction, RTA Overview, KQL Introduction** | 
   | 60 min | **[Challenge 1 – Create a KQL Database](https://github.com/microsoft/FabricRTA-in-a-Day/blob/main/Lab1.md#challenge-1-create-a-kql-database) & [Challenge 2 – Load Data from Azure Storage](https://github.com/microsoft/FabricRTA-in-a-Day/blob/main/Lab1.md#challenge-2-ingest-data-from-azure-storage-account)** |
   | 15 min | **Break** | 
   | 15 min | **Presentation Part 1 – KQL, Schemas, Update policies** |
   | 30 min | **[Challenge 3 – Starting with the basics of KQL](https://github.com/microsoft/FabricRTA-in-a-Day/blob/main/Lab1.md#challenge-3-starting-with-the-basics-of-kql)** | 
   | 60 min | **[Challenge 4 – Explore and Transform Data](https://github.com/microsoft/FabricRTA-in-a-Day/blob/main/Lab1.md#challenge-4-explore-and-transform-data)** | 

   | Day 2 | Lab 2 |  
   |:------|:------ 
   | 15 min | **Day one feedback** |  
   | 45 min | **Presentation Part 2 – Advanced KQL, Policies Visualization** |  
   | 60 min | **[Challenge 5 – Caching and retention Policies](https://github.com/microsoft/FabricRTA-in-a-Day/blob/main/Lab2.md#challenge-5-how-long-will-my-data-be-kept---caching-and-retention-policies) & [Challenge 6 – Control commands](https://github.com/microsoft/FabricRTA-in-a-Day/blob/main/Lab2.md#challenge-6-metadata-objects-handling-using-control-commands)** |  
   | 15 min | **Break** |  
   | 15 min | **[Challenge 7 – Advanced KQL](https://github.com/microsoft/FabricRTA-in-a-Day/blob/main/Lab2.md#challenge-7-going-more-advanced-with-kql)** | 
   | 30 min | **[Challenge 8 - Visualization](https://github.com/microsoft/FabricRTA-in-a-Day/blob/main/Lab2.md#challenge-8-task-1--find-the-anomaly-value-)** |  
   | 60 min | **Q&A and Closing discussions** |  

4. Keep the sessions interactive. Start by spending 3-4 min to  
   a. Get current mood/ excitement of audience  
   b, Ask audience about their expectations from the sessions  
   c. Are they familiar with Fabric RTA already? Completely new? Did they use KQL in other Azure products like Log Analytics or App Insights?  
   d. What roles are the audience majorly from? (Internal/External, Sellers/CSAs/GBBs/Customers/Partners)
   
Tip: Use Polls, Reactions or a similar feature to drive interaction and collect data.

# Start with a Presentation:  

On both Day 1 and Day 2, Partcipants will spend 45 min at the start to learn certain Fabric RTA and Kusto Query Language concepts listed below. Fabric RTA-In-A-Day presentation is meant to be delivered in the following style.

- Day 1 : 45 min followed by a 15 min Q&A – Presentation will include
  	- Introduction to Fabric
  	- Value proposition and observational analytics
  	- Overview of Fabric Real-Time Analytics.
  	- Relevacy to all verticals
  	- Highlighted industry scenarios
  	- RTA high level end-to-end Architecture (Eco system for ingestion, query and consumption)
  	- RTA Fundamentals E2E Short Demo 1
  	- Enterprise ready features
  	- KQL Database, KQL Queryset, Event Streams, Real-Time Dashboards, Power BI
  	- RTA Data Activator & PBI Demo 2
  	- Introduction to Data Activator
  	- RTA Data Activator & Eventstream Demo 3
  	- Resources
  	- Kusto Query Language introduction, concepts and basic operators  
  	- SQL and KQL
  	- Schema
  	- Stored Functions & Update policies
  	  
- Day 2 : 30 min followed by a 15 min Q&A – Presentation will include
  	- Let statements & Parsing
  	- Time series Analysis
  	- ML capabilities

# Hands-on Labs:  

Participants are required to complete 2 labs in the hands-on session to earn digital badge. Each lab is divded into 4 challenges and each challenge has a set of tasks. Some tasks are aimed at introducing the capability while others are requirements that need to be fulfilled to earn the badge. Tasks that require pasting queries in the answer sheets are marked with a ‘graduation hat’ 🎓next to the task header. Answer sheet for each lab is linked at the start of lab on the respective GitHub pages. Participants only need to paste the queries relating to tasks in the respective sections in answer sheets.

The Learning sessions are divided into 2 Labs – Lab 1 and Lab 2. 

## Lab 1:

![image](https://github.com/nataliarodri906/FabricRTA-in-a-Day/assets/130388388/f4f7062f-0699-4d85-b6c0-70b5d8b1ea86)

## Lab 2:  

![image](https://github.com/nataliarodri906/FabricRTA-in-a-Day/assets/130388388/d95b5086-f877-47b8-b24c-c97b0de65b30)

# Frequently Asked Questions (FAQ):

## Program related:  

*Q:* *What are the eligibility criteria for badge?*    
**A:** There are a total of 8 challenges and tasks under each challenge. Any task that is marked with a ‘graduation hat’ 🎓 is a mandatory question. Submitting all such marked tasks in the answer sheet makes you eligible for badge.  

*Q:* *What do I paste in the answer sheet?*  
**A:** Each task in GitHub is numbered as “Challenge x, Task y”. The answer sheets have the same text for each question. Paste the appropriate KQL queries in the given space. Submit the answer sheet only after you have completed all the tasks in a lab.  

*Q:* *How many hours can I spend on each challenge?*  
**A:** We have marked estimated duration to complete against each challenge in Lab 1 and Lab 2 Git Hub pages. While you are allowed to take time, it is recommended to avail help and complete the challenges in planned duration so that you can complete all challenges in 8 Hours sessions duration. Including introductions, presentations and break time, total hands-on time is approximately 6 hours.  

*Q:* *Can I take more than 8 Hours/ Complete the Labs after the sessions?*  
**A:** It is recommended to complete all challenges during the session.  

*Q:* *Am I allowed to discuss the questions/queries with peers?*  
**A:** Yes, collaborative learning is encouraged but make sure you do not just copy paste the queries from a group discussion. Understand both the task and resulting query.  

*Q:* *Can I take proctors help on tasks?*  
**A:** Yes, ask questions, get clarity, and avail help from proctors if you have been blocked with certain tasks. We encourage you to share you screen while this discussion to help all the participants in the call.  

*Q:* *Is it mandatory to submit the feedback form?*    
**A:** No, but we encourage you to submit the feedback, so it helps us to continuously improve the program.  

*Q:* *I am Interested to a be an instructor/proctor for further sessions. What do I do?*    
**A:** Please use the relevant field in feedback form to express your interest. We will contact you to collaborate.  

*Q:* *I have completed ADX-In-A-Day. What can I do to get deep technical knowledge and hands-on about Azure Synapse Data Explorer.*   
**A:** You can request for a 12 Hour hands on session (in open hack style) on ADX – ADX Microhack 
Or you can try a challenging yet fun game to solve some real world puzzles using KQL – Kusto Detective Agency  

*Q:* *Where can I nominate my team/customer/partner for the program?*    
**A:** For Microsoft employees , you can use the request form – Learning sessions request form  
For Customer or Partners, please write to us at adxcse@microsoft.com  

## Technical Questions:
A dedicated document will be created for Fabric RTA technical questions.

# Contribution to the Program:
Fabric RTA-In-A-Day is a learning program accessible to everyone. To continuously improve the program, we encourage the instructors/proctors to take active part in contributing to the program. We encourage you to contribute using any of the following approaches.

- Raise a pull request on git hub pages with modifications/corrections/additions/removal of the content.
- Bring participants feedback to the product group.
- Discuss new ideas with product group to improve the program.
- Test new content/changes and features and provide feedback.

# Useful Resources:

The following resources will be useful to successfully deliver Fabric RTA-In-A-Day

## Presentation and intro video
**placeholder **

## Important links

- [Fabric Real-Time Analytics in a Day Landing/Home Page](https://github.com/microsoft/FabricRTA-in-a-Day#fabric-real-time-analytics-in-a-day)
- [Fabric RTA-In-A-Day Lab 1](https://github.com/microsoft/FabricRTA-in-a-Day/blob/main/Lab1.md#lab1-kql-database-creation-data-ingestion-and-exploration)
- [Fabric RTA-In-A-Day Lab 2](https://github.com/microsoft/FabricRTA-in-a-Day/blob/main/Lab2.md#lab-2-advanced-kql-policies-and-visualization)

- [Lab 1 - Quiz](https://forms.office.com/r/bV9RCiLVuJ)  
- [Lab 2 - Quiz](https://forms.office.com/r/fpSN0r7QLt)  
- [Feedback Form]

- [Credly Badge site](https://www.credly.com/org/microsoft-azure-data-explorer/badge/azure-data-explorer-in-a-day)

## Answers

 

