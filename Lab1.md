# **Lab1: KQL Database Creation, Data Ingestion and Exploration**

This Lab is organized into the following 4 Challenges:
| Challenge | Description | Est. Time |
|--|--|--|
| [Challenge 1](#challenge-1-create-a-kql-database)| Create a KQL Database | 5 Min|
| [Challenge 2](#challenge-2-ingest-data-from-azure-storage-account)| Load Data from Azure Storage| 30 Min|
| [Challenge 3](#challenge-3-starting-with-the-basics-of-kql)| Starting with the basics of KQL| 1 Hour|
| [Challenge 4](#challenge-4-explore-and-transform-data)| Explore and Transform Data | 45 min|

Each challenge has a set of tasks that need to be completed in order to move on to the next challenge. It is advisable to complete the challenges and tasks in the prescribed order.

- [Go to Fabric-KQL-Database-In-A-Day HomePage](https://github.com/Azure/Fabric-KQL-Database-in-a-Day)
## **Earn a digital badge!**

In order to receive the "KQL-Database-In-A-Day" digital badge, you will need to complete the tasks marked with ✅ in Lab 1 & Lab 2. Submit your answers for Lab 1 and Lab 2 quizzes in order to receive the "KQL Database in a Day" digital badge. You may edit your answers after or try again.

| :information_source: **Note**    |
|:---------------------------|
| **For Lab 1, please submit the results for the tasks marked with ✅ in the following link**: [Quiz KQL Database in A Day Lab 1](https://forms.office.com/r/qZ0yghDwyb) |

| :information_source: **Note**    |
|:---------------------------|
| **Please allow us 5 working days to issue the badge**|

![KQL Database in a day Badge](/assets/images/KQLDatabaseBadge.png "KQL Database in a day Badge")

---

## **Challenge 1: Create a KQL Database**

Assuming you already have Microsoft Fabric enabled workspace in your Power BI tenant, you can create KQL Database. Each database has tables. Then you can ingest data into a database so that you can run queries against it.

In this Challenge, you will create a KQL database. You will run simple KQL query in Fabric.

**Tasks:**

- [**Task 1:** Create a KQL Database](#challenge-1-task-1-create-a-kql-database)
- [**Task 2:** Query data in a KQL queryset](#challenge-1-task-2-query-data-in-a-kql-queryset)

**Expected Learning Outcomes:**

- Create and work with KQL database.

### **Challenge 1, Task 1: Create a KQL Database**

## Prerequisites

* A workspace with a Microsoft Fabric-enabled capacity

## Create a new KQL database

1. Select **New** > **KQL Database**.

   ![Create KQL Database](/assets/images/create-database.png "Create KQL Database")

1. Enter your database name, then select **Create**.

    ![New KQL Database](/assets/images/new-database.png "New KQL Database")

The KQL database has now been created within the context of the selected workspace.

## Database details

The main page of your KQL database shows an overview of the contents in your database. The following table lists the information you'll see.

![Database Details](/assets/images/database-dashboard.png "Database Database")

|Card | Item| Description|
|---|---|---|
|**Database details**|
| | Created by | User name of person who created the database.|
| | Region | Shows the region of the data and services.|
| | Created on | Date of database creation.|
| | Last ingestion | Date on which data was ingested last into the database.|
| | Query URI | URI that can be used for sending/ running queries.|
| | Ingestion URI | URI that can be used for programmatic ingestion.|
| | OneLake folder | OneLake folder path that can be used for creating shortcuts. You can also activate and deactivate data copy to OneLake.|
| **Size**|
| | Compressed| Total size of compressed data.|
| | Original size | Total size of uncompressed data.|
| | Compression ratio | Compression ratio of the data.|
|**Top tables**|  
| | Name | Lists the names of tables in your database. Select a table to see more information.|
| | Size | Database size in megabytes. The tables are listed in a descending order according to the data size.|
|**Most active users**|
| | Name | User name of most active users in the database.|
| | Queries run last month | The number of queries run per user in the last month.|
|**Recently updated functions**
| | |  Lists the function name and the time it was last updated.|
|**Recently used Querysets**|
| | | Lists the recently used KQL queryset and the time it was last accessed.|
|**Recently created data connections**
| | | Lists the data connection and the time it was created.|

## Access an existing KQL database

To access your existing KQL databases:

1. Select the **Workspaces** icon on the side navigation on the left. Then choose a workspace.

   ![Access Existing Database](/assets/images/access-existing-database-1.png "Access Existing Database")

1. Select **Filter** on the right side of the ribbon > **KQL Database**.

   ![Access Existing Database using Filter](/assets/images/access-existing-database-2.png "Access Existing Database using FIlter")

1. Select the desired database.
  
  
### **Challenge 1, Task 2: Query data in a KQL queryset**
  
***What is a Kusto query?***

Fabric provides a web experience that enables you to connect to your KQL Database and write and run Kusto Query Language queries. 

A *Kusto query* is a read-only request to process data and return results. The request is stated in plain text that's easy to read. A Kusto query has one or more query statements and returns data in a tabular or graph format.

In the next Challenge, we'll ingest data to the KQL Database, and then learn the most important concepts in KQL and write interesting queries. In this task, you will write a basic query to get an understanding of the environment.

In this example, you'll use the KQL queryset as a query editor.

The KQL Queryset is the item used to run queries, view, and customize query results on data from a KQL database.  Each tab in the KQL queryset can be associated with a different KQL database, and lets your save queries for later use or share with others to collaborate on data exploration. You can also change the KQL database associated with any tab, allowing you to run the same query on data in different states.

The KQL Queryset uses the Kusto Query language for creating queries, and also supports many SQL functions. For more information about the query language, see [Kusto Query Language overview](/azure/data-explorer/kusto/query/index?context=/fabric/context/context).

## Create a KQL queryset

The KQL Queryset exists within the context of a workspace. A new KQL queryset is always associated with the workspace you're using when you create it.

1. Browse to the desired workspace.
1. Select **+New** > **KQL Queryset**


    ![Create a KQL queryset](/assets/images/new-queryset.png "Screenshot of adding a new KQL queryset from workspace homepage.")

1. Enter a unique name. You can use alphanumeric characters, underscores, periods, and hyphens. Special characters aren't supported.

   ![Name a KQL queryset](/assets/images/queryset-name.png "Screenshot of adding name to queryset.")

    > You can create multiple KQL Querysets in a single workspace.

1. Select **Create**
1. Now you can write a simple KQL query:

    ```kql
       print "Hello World"
    ```
1. Highlight the line with the code and hit the **Run** button. The query will be executed and its result can be seen in the result grid at the bottom of the page.

   ![Hello world KQL query](/assets/images/Hello-world-query.png "Screenshot of Hello World KQL query.")
   
Kusto Query Language can also be used in other services that are built on-top of Kusto query Engine, like:

- [Azure Monitor Logs](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/data-platform-logs)
- [Azure Sentinel](https://learn.microsoft.com/en-us/azure/sentinel/overview)
- [Microsoft Defender for IoT](https://www.microsoft.com/en-us/security/business/endpoint-security/microsoft-defender-iot)
- [Microsoft Defender for Endpoint](https://www.microsoft.com/en-us/security/business/endpoint-security/microsoft-defender-endpoint)
- [Microsoft Defender for Cloud](https://www.microsoft.com/en-us/security/business/cloud-security/microsoft-defender-cloud)
- [Application Insights](https://learn.microsoft.com/en-us/azure/azure-monitor/app/app-insights-overview?tabs=net)
  

## **Challenge 2: Ingest data from Azure Storage Account**
  
Data ingestion to KQL Database is the process used to load data records from one or more sources into a table. Once ingested, the data becomes available for query.

KQL Database supports several ingestion methods, including Eventstream, Fabric Pipeline, and Fabric Dataflow. Also available with Azure Data Factory and Event Hubs.

**Tasks:**

- [**Task 1:** Create the raw table - logsRaw](#challenge-2-ingest-data-from-azure-storage-account)
- [**Task 2:** Use the “One-click” UI (User Interface) to ingest data from Azure blob storage](#challenge-2-task-2-use-the-one-click-ui-user-interface-to-ingest-data-from-azure-blob-storage)

**Expected Learning Outcomes:**

- Ingest data using one-click ingestion from Azure Blob Storage to your KQL Database.

### **Challenge 2, Task 1: Create the raw table - logsRaw**

1. Go to previously created KQL queryset and run the following command to create our table:

    ```kql
    .create table logsRaw(
        Timestamp:datetime, 
        Source:string, 
        Node:string, 
        Level:string, 
        Component:string, 
        ClientRequestId:string, 
        Message:string, 
        Properties:dynamic
    ) 
    ```

### **Challenge 2, Task 2: Use the “One-click” UI (User Interface) to ingest data from Azure blob storage**

You need to analyze the system logs for Contoso, which are stored in Azure blob storage.

1. Go back to the KQL Database, select the **Get Data** from the menu.
  
    ![Get data](/assets/images/IngestFromBlobContainer_rta.png "Screenshot of get data menu.")

3. Select the option **Existing table**.

   ![Get data](/assets/images/selectexistingtable.png "Screenshot of get existing table.")
  
    | :information_source: **Note**    |
    |:---------------------------|
    | We used an example table name as ``logsRaw`` here. You can give any name to your table but be sure to use it in all your queries going forward. |
  
5. Ingest from Storage:
Select **Blob container** as the **Source type** in the **Source** tab. As **Ingestion type** you can leave the default selection **One-Time**. For **Select source** you can use the default value **Add URL** because we will add a SAS Url next.

6. In the **Link to source**, paste the following SAS ([*Shared Access Signature*](https://learn.microsoft.com/en-us/shows/inside-azure-for-it/introduction-to-sas-shared-access-signature)) URL of the blob storage. SAS URL is a way to provide limited, time-bound access to Azure storage resources such as Blobs.

    ```kql
    https://logsbenchmark00.blob.core.windows.net/logsbenchmark-onegb/2014/?sp=rl&st=2022-08-18T00:00:00Z&se=2030-01-01T00:00:00Z&spr=https&sv=2021-06-08&sr=c&sig=5pjOow5An3%2BTs5mZ%2FyosJBPtDvV7%2FXfDO8pLEeeylVc%3D
    ```

7. In the list **Schema defining file** select a file. This file is used to determine the schema of the data. One file is autoselected unless you want to change that. In our example it does not matter which file you choose because all files have the same structure, so you can stick with the autoselected file and click **Next: Schema**.

    ![Ingest Data from storage](/assets/images/ingest_from_storage.png "Ingest Data from storage")

8. Under Data format, make sure you select **Keep current table schema** and deselect **Ignore the first record**. Click on **Next: Start ingestion**.
  
    ![Use schema from ingested data](/assets/images/ingest_from_storage_schema_rta.png "Use schema from ingested data")
  
9. Wait for the ingestion to be completed, and click **Close**.

    ![Ingestion in progress](/assets/images/ingestion_completed_rta.png "Ingestion in progress")
  
10. Go to previously created KQL queryset. Run the following KQL query to verify that data was ingested to the table.

    ```kql
      logsRaw
      | count 
    ```

    The ``logsRaw`` table should have 3,834,012 records.

## **Challenge 3: Starting with the basics of KQL**

In this challenge you’ll write queries in Kusto Query Language (KQL) to explore and gain insights from your data.

**Tasks:**

- [**Task 0:** Journey from SQL to KQL!](#challenge-3-task-0--journey-from-sql-to-kql)
- [**Task 1:** Basic KQL queries - explore the data](#challenge-3-task-1-basic-kql-queries---explore-the-data)
- [**Task 2:** Explore the table and columns](#challenge-3-task-2-explore-the-table-and-columns-):white_check_mark:
- [**Task 3:** Keep the columns of your interest](#challenge-3-task-3-keep-the-columns-of-your-interest-):white_check_mark:
- [**Task 4:** Filter the output](#challenge-3-task-4-filter-the-output-):white_check_mark:
- [**Task 5:** Sorting the results](#challenge-3-task-5-sorting-the-results-):white_check_mark:
- [**Task 6:** Data profiling](#challenge-3-task-6-data-profiling-):white_check_mark:
- [**Task 7:** Total number of records](#challenge-3-task-7-total-number-of-records-):white_check_mark:
- [**Task 8:** Aggregations and string operations](#challenge-3-task-8-aggregations-and-string-operations-):white_check_mark:
- [**Task 9:** Render a chart](#challenge-3-task-9-render-a-chart-):white_check_mark:
- [**Task 10:** Create bins and visualize time series](#challenge-3-task-10-create-bins-and-visualize-time-series-):white_check_mark:
- [**Task 11:** Shortcuts](#challenge-3-task-11-shortcuts)

**Expected Learning Outcomes:**

- Know how to write queries with KQL.
- Use KQL to explore data by using the most common operators.

***What is a Kusto query?***

A *Kusto query* is a read-only request to process data and return results. The request is stated in plain text that's easy to read, author, and automate. A Kusto query has one or more query statements and returns data in a tabular or graph format.

***What is a tabular statement?***

The most common kind of query statement is a tabular expression statement. Both its input and its output consist of tables or tabular datasets.

*Tabular statements* contain zero or more operators. Each operator starts with a tabular input and returns a tabular output. Operators are sequenced by a pipe (`|`). Data flows, or is piped, from one operator to the next. The data is filtered or manipulated at each step and then fed into the following step.

It's like a funnel, where you start out with an entire data table. Each time the data passes through another operator, it's filtered, rearranged, or summarized. Because the piping of information from one operator to another is sequential, the query's operator order is important. At the end of the funnel, you're left with a refined output.
Let's look at an example query:

```kql
logsRaw
| take 10 
```

This query has a single tabular expression statement. The statement begins with a reference to the table `logsRaw` and contains the operators `take`. Each operator is separated by a pipe.

**References:**

- [KQL cheat sheets](https://learn.microsoft.com/en-us/azure/data-explorer/kql-quick-reference)

### **Challenge 3, Task 0 : Journey from SQL to KQL!**

For all the SQL pros out there, KQL Database allows a subset of TSQL queries. Try running the following SQL query in web UI

```SQL
SELECT COUNT() FROM logsRaw
```

| :information_source: **Note**    |
|:---------------------------|
| Intellisense will not work for SQL queries.|

The primary language to interact with Kusto is KQL (Kusto Query Language). To make the transition and learning experience easier, you can use the `explain` operator to translate SQL queries to KQL.

```kql
explain SELECT MAX(Timestamp) AS MaxTimestamp FROM logsRaw WHERE Level='Error'
```

Output of the above query will be a corresponsing KQL query

```kql
logsRaw
| where (Level == "Error")
| summarize MaxTimestamp=max(Timestamp)
| project MaxTimestamp
```

**References:**

- [SQL to KQL cheat sheets - aka.ms/SQL2KQL](https://learn.microsoft.com/en-us/azure/data-explorer/kusto/query/sqlcheatsheet)

### **Challenge 3, Task 1: Basic KQL queries - explore the data**
  
In this task, you will see some KQL examples. For this task, we will use the table logsRaw, which has data we loaded in previous challenge from storage account.

1. Execute the queries and view the results. KQL queries can be used to filter data and return specific information. Now, you'll learn how to choose specific rows of data. The `where` operator filters results that satisfy a certain condition.

    ```kql
    logsRaw
    | where Level=="Error"
    | take 10
    ```

   The `take` operator samples any number of records from our table without any order. In the above example, we asked to provide 10 random records.

2. Find out how many records are in the table

    ```kql
    logsRaw
    | summarize count() // or: count
    ```

3. Find out the minimum and maximum Timestamp

    ```kql
    logsRaw
    | summarize min(Timestamp), max(Timestamp)
    ```

KQL Database provides a set of system data types that define all the types of data that can be stored.

Some data types for example are: `string`, `int`, `decimal`, `GUID`, `bool`, `datetime`.

Note, that the data type of the **Properties** column is `dynamic`. The `dynamic` data type is special in that it can take on any value of other data types, as well as arrays and property bags (dictionaries).

Our dataset has trace records written by Contoso's DOWNLOADER program (`| where Component == "DOWNLOADER"`), which downloads files from blob storage as part of its business operations.

This is how a typical *Properties* column looks like:

![A typical properties column](/assets/images/properties_column.png "A typical properties column")

The `dynamic` type is extremely beneficial when it comes to storing JSON data, since KQL makes it simple to access fields in JSON and treat them like an independent column: just use either the dot notation (`dict.key`) or the bracket notation (`dict["key"]`).

The `extend` operator adds a new calculated column to the result set, during query time. This allows for the creation of new standalone columns to the result set, from the JSON data in `dynamic` columns.

```kql
logsRaw
| where Component == "DOWNLOADER"
| take 100
| extend originalSize=Properties.OriginalSize, compressedSize=Properties.compressedSize
```

Note that although the dynamic type appears JSON-like, it can hold values that the JSON model does not represent because they don't exist in JSON (e.g., `long`, `real`, `datetime`, `timespan`, and `GUID`).

### **Challenge 3, Task 2: Explore the table and columns ✅**

After subscripting a dynamic object, it is necessary to cast (convert) the value to a simple type in order to utilize them (for example, if you want to summarize the sizes of all the `OriginalSize`, you should convert the `dynamic` type to a numeric type, like `long`).

1. Write a query to get the table that is shown in the image below (we want to convert the `OriginalSize` and `CompressedSize` columns to `long`).

    - ***Hint 1:*** Observe there are 2 new columns originalSize and compressedSize with datatype `long`
    - ***Hint 2:*** Accessing a sub-object of a dynamic value yields another dynamic value, even if the sub-object has a different underlying type.
    - ***Hint 3:*** After subscripting a dynamic object, you must cast the value to a simple type.

| :question: **Question 3.2**    |
|:---------------------------|
| What is the "Datatype" of "ColumnType = long ? |

**Example result:**

![Example result for Question 3.2](/assets/images/get_schema.png "Example result for Question 3.2")

**References:**

- [`extend` operator](https://docs.microsoft.com/en-us/azure/data-explorer/kusto/query/extendoperator)
- [`tolong()`](https://learn.microsoft.com/en-us/azure/data-explorer/kusto/query/tolongfunction)
- [`getschema` operator](https://docs.microsoft.com/en-us/azure/data-explorer/kusto/query/getschemaoperator)

### **Challenge 3, Task 3: Keep the columns of your interest ✅**

You are investigating an incident and wish to review only several columns of the dataset.

1. Write a query to get only specific desired columns: Timestamp, ClientRequestId, Level, Message. Take arbitrary 10 records.

| :question: **Question 3.3**    |
|:---------------------------|
| If we have to change ClientRequestId column from string to guid datatype, what is the function we should use? |

**Example result:**
![Example Result for Question 3.3](/assets/images/project.png "Example Result for Question 3.3")

**References:**

- [`project` operator - Microsoft Docs](https://docs.microsoft.com/en-us/azure/data-explorer/kusto/query/projectoperator)

### **Challenge 3, Task 4: Filter the output ✅**

You are investigating an incident that occurred within a specific time frame.

1. Write a query to get only specific desired columns: `Timestamp`, `ClientRequestId`, `Level`, `Message`. Take all the records between `2014-03-08 01:00` and `2014-03-08 10:00`.

    - ***Hint 1:*** In case you see 0 records, remember that operators are sequenced by a pipe (`|`). Data is piped, from one operator to the next. The data is filtered or manipulated at each step and then fed into the following step. By using the ‘Take’ operator, there is no guarantee which records are returned

| :question: **Question 3.4**    |
|:---------------------------|
| What is the count of records in this timeframe? |

**References:**

- [``datetime`` data type](https://learn.microsoft.com/en-us/azure/data-explorer/kusto/query/scalar-data-types/datetime)
- [``where`` operator](https://docs.microsoft.com/en-us/azure/data-explorer/kusto/query/whereoperator)
- [``between`` operator](https://learn.microsoft.com/en-us/azure/data-explorer/kusto/query/betweenoperator#filter-datetime)

### **Challenge 3, Task 5: Sorting the results ✅**

Your system generated an alert indicating a significant decrease in incoming data. You want to check the traces of the "INGESTOR_EXECUTER" [sic] component of the program.

1. Write a query that returns 20 sample records in which the `Component` column equals the word "INGESTOR_EXECUTER" [sic].

2. Once done, rewrite the query to take the top 1 records by the value of `rowCount` (for the "INGESTOR_EXECUTER" [sic] records).

    - ***Hint 1:*** Extract `rowCount` from `Properties` column

    - ***Hint 2:*** Think about the datatype and conversion

    - ***Hint 3:*** Note the "Executer" [sic] spelling

| :question: **Question 3.5**    |
|:---------------------------|
| What is the value of `rowCount` column of this record? |

**Example result:**

  ![Example result for question 3.5](/assets/images/top_10_rowCount.png "Example result for question 3.5")

**References:**

- [``sort`` operator](https://docs.microsoft.com/en-us/azure/data-explorer/kusto/query/sort-operator)
[top operator](https://docs.microsoft.com/en-us/azure/data-explorer/kusto/query/topoperator)

### **Challenge 3, Task 6: Data profiling ✅**

As part of the incident investigation, you want to extract `format` and `rowCount` from INGESTOR_EXECUTER [sic] component. Rename the calculated fields to fileFormat and rowCount respectively. Also, Make Sure `Timestamp`, `fileFormat` and `rowCount` are the first 3 columns.

| :question: **Question 3.6**    |
|:---------------------------|
| How many different file formats are present in this data? |

**Example result:**

  ![Example Result for Question 3.6](/assets/images/rename_reorder.png "Example Result for Question 3.6")

**References:**

- [`distinct` operator](https://learn.microsoft.com/en-us/azure/data-explorer/kusto/query/distinctoperator)
- [`extend` operator](https://docs.microsoft.com/en-us/azure/data-explorer/kusto/query/extendoperator)
- [`project-rename` operator](https://docs.microsoft.com/en-us/azure/data-explorer/kusto/query/projectrenameoperator)
- [`project-reorder` operator](https://docs.microsoft.com/en-us/azure/data-explorer/kusto/query/projectreorderoperator)

### **Challenge 3, Task 7: Total number of records ✅**

The system comprises of several "components", but you don't know their names or how many records were generated by each.

1. Write a query to find out how many records were generated by each component. Use the `Component` column.

| :question: **Question 3.7**    |
|:---------------------------|
| What is the count of "DATAACCESS" component? |

**References:**

- [`count` aggregation function](https://learn.microsoft.com/en-us/azure/data-explorer/kusto/query/count-aggfunction)

### **Challenge 3, Task 8: Aggregations and string operations ✅**

You assume that the incident being investigated has a connection to the ingestion process run by Contoso's program.

1. Write a query to find out how many records contain the string `'ingestion'` in the `Message` column. Aggregate the results by `Level`.

| :question: **Question 3.8**    |
|:---------------------------|
| What is count of "Error" records?|

**Example result:**

  ![Example Result for Question 3.8](/assets/images/count_by.png "Example Result for Question 3.8")

**References:**

- [String operators](https://docs.microsoft.com/en-us/azure/data-explorer/kusto/query/datatypes-string-operators)

- [``summarize`` operator](https://docs.microsoft.com/en-us/azure/data-explorer/kusto/query/summarizeoperator)

### **Challenge 3, Task 9: Render a chart ✅**

1. Write a query to find out how many total records are present per `Level` (aggregated by `Level`) and render a piechart.

| :question: **Question 3.9**    |
|:---------------------------|
| What is the "Warning" %? |

**Example result:**

 ![Example result for Question 3.9](/assets/images/pie.png "Example result for Question 3.9")

**References:**

- [``render`` operator](https://docs.microsoft.com/en-us/azure/data-explorer/kusto/query/renderoperator?pivots=azuredataexplorer)

### **Challenge 3, Task 10: Create bins and visualize time series ✅**

1. Write a query to show a timechart of the number of records in 30 minute bins (buckets). Each point on the timechart represent the number of logs in that bucket.

| :question: **Question 3.10**    |
|:---------------------------|
| What is the count of records on March 8th, 10:30 ?|

**Example result:**

 ![Example result for question 3.10](/assets/images/timeseries.png "Example result for question 3.10")

**References:**

- [`bin()` - KQL Scalar functions](https://docs.microsoft.com/en-us/azure/data-explorer/kusto/query/binfunction)
- [`summarize` operator](https://docs.microsoft.com/en-us/azure/data-explorer/kusto/query/summarizeoperator)

### **Challenge 3, Task 11: Shortcuts**

Purpose of this task is to expose some cool productivity features of KQL Databse Web Interface. This task is not evaluated.

There are many keyboard shortcuts available in KQL Databse Web UI and Kusto Explorer to increase productivity while working with KQL.

Below are a few examples

- You don't have to select a block of code. Based on current cursor position, code that is separated by empty lines is considered a single block of code.

    ![Two code blocks considered as one](/assets/images/code_block.png "Two code blocks considered as one")

- You can execute a block of code using `Shift`+`Enter`
- You can directly insert filters based on data cells selections using `Ctrl`+`Shift`+`Space`

  ![Insert filters based on data cells](/assets/images/add_as_filters.gif "Insert filters based on data cells")

**References:**

- [Kusto Web UI shortcuts | Microsoft Docs](https://learn.microsoft.com/en-us/azure/data-explorer/web-ui-query-keyboard-shortcuts)

- [Kusto Explorer shortcuts | Microsoft Docs](https://learn.microsoft.com/en-us/azure/data-explorer/kusto/tools/kusto-explorer-shortcuts)

## **Challenge 4: Explore and Transform Data**

In this challenge we will explore 3 capabilities of Data Explorer

- **User-defined functions** are reusable KQL subqueries that can be defined as part of the query itself (ad-hoc functions), or persisted as part of the database metadata (stored functions - reusable KQL query, with the given name). Stored functions are invoked through a name, are provided with zero or more input arguments (which can be scalar or tabular), and produce a single value (which can be scalar or tabular) based on the function body.

- **Update Policy** is like an internal ETL. It can help you manipulate or enrich the data as it gets ingested into the source table (e.g. extracting JSON into separate columns, creating a new calculated column, joining the newly ingested records with a static dimension table that is already in your database, etc). For these cases, using an update policy is a very common and powerful practice.
  
  Each time records get ingested into the source table, the update policy's query (which we'll define in the update policy) will run on them (**only on newly ingested records** - other existing records in the source table aren’t visible to the update policy when it runs), and the results of the query will be appended to the target table. This function's output schema and target table schema should exactly match.

  ![How an update policy works](/assets/images/Update_policy.png "How an update policy works")

**Tasks:**

- [**Task 1:** User defined Function (Stored Functions)](#challenge-4-task-1-user-defined-function-stored-functions-) :white_check_mark:
- [**Task 2:** Create an update policy](#challenge-4-task-2-create-an-update-policy-) :white_check_mark:

**Expected Learning Outcomes:**

- Create user defined functions to use repeatable logic
- Create an update policy to transform the data at ingestion time

For the next task, we will use the `logsRaw` table.

### **Challenge 4, Task 1: User defined Function (Stored Functions) ✅**

1. Create a stored functions, named `ManiputatelogsRaw`, that will contain the code below. Make sure the function works.

    ```kql
    logsRaw
    | where Component in (
      'INGESTOR_EXECUTER', 
      'INGESTOR_GATEWAY', 
      'INTEGRATIONDATABASE',
      'INTEGRATIONSERVICEFLOWS', 
      'INTEGRATIONSERVICETRACE', 
      'DOWNLOADER')
    ```

| :question: **Question 4.1**    |
|:---------------------------|
| What is property used when creating function that is used for UI functions categorization? |

**References:**

- See the [`create function`](https://learn.microsoft.com/en-us/azure/data-explorer/kusto/management/create-function) article.

### **Challenge 4, Task 2: Create an update policy ✅**

In this task, we will use an `update policy` to filter the raw data in the `logsRaw` table (the source table) for ingestion logs, that will be ingested into the new table `ingestionLogs` that we’ll create.

1. Build the target table

    ```kql
    .create table ingestionLogs (
      Timestamp: datetime, 
      Source: string,
      Node: string, 
      Level: string, 
      Component: string, 
      ClientRequestId: string, 
      Message: string, 
      Properties: dynamic)
    ```

2. Create a function for the update policy

    ```kql
    **Use the function created in Task 1**
    ```

3. Create the update policy(Fill in the blanks) ✅

      ```kql
      .alter table ...... 
          policy update 
          @'[{ "IsEnabled": true, 
                "Source": "....", 
                "Query": ".....", 
                "IsTransactional": true, "PropagateIngestionProperties": false}
            ]'
      ```

4. Update policy can transform and move the data from source table from the time it is created. It cannot look back at already existing data in source table. We will ingest new data into logsraw table and see new data flowing into ingestionLogs table

    ```kql
    // Note: execute the below commands one after another => Using operationId(output of each command), 
    //check the status and execute a new command only after the previous one is completed

    .ingest async into table logsRaw (
      h'https://logsbenchmark00.blob.core.windows.net/logsbenchmark-onegb/2014/03/08/00/data.csv.gz?sp=rl&st=2022-08-18T00:00:00Z&se=2030-01-01T00:00:00Z&spr=https&sv=2021-06-08&sr=c&sig=5pjOow5An3%2BTs5mZ%2FyosJBPtDvV7%2FXfDO8pLEeeylVc%3D') 
      with (format='csv',   
            creationTime='2014-03-08T00:00:00Z');

    .ingest async into table logsRaw (
      h'https://logsbenchmark00.blob.core.windows.net/logsbenchmark-onegb/2014/03/08/01/data.csv.gz?sp=rl&st=2022-08-18T00:00:00Z&se=2030-01-01T00:00:00Z&spr=https&sv=2021-06-08&sr=c&sig=5pjOow5An3%2BTs5mZ%2FyosJBPtDvV7%2FXfDO8pLEeeylVc%3D') 
      with (format='csv', 
            creationTime='2014-03-08T01:00:00Z');

    .ingest async into table logsRaw (
      h'https://logsbenchmark00.blob.core.windows.net/logsbenchmark-onegb/2014/03/08/02/data.csv.gz?sp=rl&st=2022-08-18T00:00:00Z&se=2030-01-01T00:00:00Z&spr=https&sv=2021-06-08&sr=c&sig=5pjOow5An3%2BTs5mZ%2FyosJBPtDvV7%2FXfDO8pLEeeylVc%3D') 
      with (format='csv', 
            creationTime='2014-03-08T02:00:00Z');

    .ingest async into table logsRaw (
      h'https://logsbenchmark00.blob.core.windows.net/logsbenchmark-onegb/2014/03/08/03/data.csv.gz?sp=rl&st=2022-08-18T00:00:00Z&se=2030-01-01T00:00:00Z&spr=https&sv=2021-06-08&sr=c&sig=5pjOow5An3%2BTs5mZ%2FyosJBPtDvV7%2FXfDO8pLEeeylVc%3D') 
      with (format='csv', 
            creationTime='2014-03-08T03:00:00Z');

    .ingest async into table logsRaw (
      h'https://logsbenchmark00.blob.core.windows.net/logsbenchmark-onegb/2014/03/08/04/data.csv.gz?sp=rl&st=2022-08-18T00:00:00Z&se=2030-01-01T00:00:00Z&spr=https&sv=2021-06-08&sr=c&sig=5pjOow5An3%2BTs5mZ%2FyosJBPtDvV7%2FXfDO8pLEeeylVc%3D') 
      with (format='csv', 
            creationTime='2014-03-08T04:00:00Z');
    ```

    | :information_source: **Note**    |
    |:---------------------------|
    | The above command does not complete immediately. Because we used the `async` parameter, the output of the above query will be `operationIds`. The progress of the query can be checked by used the below command |

5. Check progress of the commands

    ```kql
      .show operations <operationId>
    ```

6. Make sure the data is transformed correctly in the destination table

    ```kql
    ingestionLogs
    | count
    ```

    Check if the count of ingestionLogs table is 93,648.

    | :information_source: **Note**    |
    |:---------------------------|
    | If the count is not matching for ingestionLogs table, it means that one of the above `.ingest` commands have throttled or failed.  |

7. Please run the following command to clean ingestionLogs table

    ```kql
    .clear table ingestionLogs data
    ```

8. You can then run the above `.ingest` commands one by one and this will result in 93,648 count in ingestionLogs table.

    - ***Hint 1:*** Remember we have already ingested data into logsRaw in Challenge 2. We need the count of records from latest ingestion only.
    - ***Hint 2:*** `ingestion_time()` is a hidden column that stores ingested datetime of extents.
    - ***Hint 3:*** Use [`ago()`](https://learn.microsoft.com/en-us/azure/data-explorer/kusto/query/agofunction) to filter for latest records inserted.

9. What is the count of records that were ingested into `ingestionLogs(target)` table with this update policy?

| :question: **Question 4.2**    |
|:---------------------------|
| Calculate the ratio => `ingestionLogs count / logsRaw count` (Only the latest ingestion). Consider 4 digits after decimal points in the output. |

**References:**

- [Kusto update policy - Microsoft Docs](https://docs.microsoft.com/en-us/azure/data-explorer/kusto/management/updatepolicy)
- [Kusto Ingest from Storage - Microsoft Docs](https://learn.microsoft.com/en-us/azure/data-explorer/kusto/management/data-ingestion/ingest-from-storage)

🎉 Congrats! You've completed KQL Database in a Day Lab 1. Keep going with [**Lab 2: Advanced KQL, Policies and Visualization**](https://github.com/Azure/KQL-Database-in-a-Day-Lab2)
