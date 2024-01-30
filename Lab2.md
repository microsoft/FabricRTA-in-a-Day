8z4DQ04eXH# Lab 2: Advanced KQL, Policies, and Visualization

This Lab is organised into the following 4 challenges:
|Challenge | Description | Est. Time|
|--|--|--|
| [Challenge 5](#challenge-5-how-long-will-my-data-be-kept---caching-and-retention-policies)| Caching and retention policies| 30 Min|
| [Challenge 6](#challenge-6-metadata-objects-handling-using-control-commands)| Control commands| 30 Min|
| [Challenge 7](#challenge-7-going-more-advanced-with-kql)| Advanced KQL operators| 45 Min|
| [Challenge 8](#challenge-8-task-1--find-the-anomaly-value-)| Visualization| 45 Min |

- ◀️ [Return to Homepage](readme.md)

## **Earn a digital badge!**

In order to receive the "Fabric RTA in a Day" digital badge, you will need to complete the tasks marked with ✅ in [Lab 1](Lab1.md) & Lab 2. Submit your answers for [Lab 1](https://forms.office.com/r/bV9RCiLVuJ) and Lab 2 quizzes in order to receive the "Fabric RTA in a Day" digital badge. You may edit your answers after or try again.

| :information_source: **Note**    |
|:---------------------------|
|**For Lab 2, please submit the results for the tasks marked with ✅ in the following link**: [Quiz Fabric RTA in a Day Lab 2](https://forms.office.com/r/fpSN0r7QLt) |

| :information_source: **Note**    |
|:---------------------------|
| **Please allow us 5 working days to issue the badge**|

![KQL Database in a day](/assets/images/KQLDatabaseBadge.png "KQL Database in a day")

## Challenge 5: How long will my data be kept? - Caching and Retention Policies

Among the different policies you can set to the KQL Database, two policies are of particular importance:

- Retention policy (retention period)
- Cache policy (cache period)

First, a policy is used to enforce and control the properties of the KQL Database.
  
- The **retention** policy: the time span, in days, for which it’s guaranteed that the data is kept available for querying. The time span is measured from the time that the records are ingested. When the period expires, the records  will not be available for querying any more.

  In other words, the retention policy defines the period during which data is retained and available to query, measured since ingestion time. Note that a large retention period may impact the cost.

- The **cache** policy: the time span, in days, for which to keep recently ingested data (which is usually the frequently queried data) available in the hot cache rather than in long term storage (this is also known as cold tier. Specifically, it is Azure blob storage). Data stored in the hot cache is actually stored in local SSD or the RAM of the machine, very close to the compute nodes.

  Therefore, more readily available for querying. The availability of data in the hot cache improves query performance but can potentially increase the cluster cost (as more data is being stored, more VMs are required to store it). In other words, the caching policy defines the period during which data is kept in the hot cache.

  All the data is always persisted in the cold tier, for the duration defined in the retention policy. Any data whose age falls within the hot cache policy will also be stored in the hot cache. If you query data from cold cache, it’s recommended to target a small specific range in time (“point in time”) for the queries to be efficient.

**Tasks:**

- [**Task 1:** Change the retention policy via commands](#challenge-5-task-1-change-the-retention-policy-via-commands-):white_check_mark:

### Challenge 5, Task 1: Change the retention policy via commands ✅

Database policies can be overridden per table using a KQL control command.
A database cache and retention policies can be edited from the Fabric UI. Tables policies can be managed via a KQL command.

**References:**

- [`.alter KQL Database retention policy` via UI](https://learn.microsoft.com/en-us/fabric/real-time-analytics/data-retention-policy)

You can always use KQL commands to alter the policies of the entire Database/tables. Table level policy takes precedence over database level which takes precedence over cluster level.

````kql
.alter table ingestionLogs policy retention 
```
{ 
    "SoftDeletePeriod": "10:12:00:00",
    "Recoverability": "Enabled"
}
```
````

| :question: **Question 5.1**    |
|:---------------------------|
| How many total hours is the retention policy of ingestionLogs table after running the above query? |

**References:**

- [`.alter table retention policy` command](https://learn.microsoft.com/en-us/azure/data-explorer/kusto/management/alter-table-retention-policy-command)

## Challenge 6: Metadata objects handling using Control Commands

**Tasks:**

- [**Task 1:** .show/diagnostic logs/Insights](#challenge-6-task-1-showdiagnostic-logsinsights)
- [**Task 2:** Use .show queries](#challenge-6-task-2-use-show-queries-):white_check_mark:
- [**Task 3:** Use .journal commands](#challenge-6-task-3-use-journal-commands-):white_check_mark:
- [**Task 4:** Use .show commands](#challenge-6-task-4-use-show-commands-) :white_check_mark:
- [**Task 5:** Table details and size](#challenge-6-task-5-table-details-and-size-):white_check_mark:

### Challenge 6, Task 1: .show/diagnostic logs/Insights

Control commands are requests to the service to retrieve information that is not necessarily data in the database tables, or to modify the service state, etc. In addition, they can be used to manage Azure Data Explorer.
The first character of the KQL text determines if the request is a control command or a query. Control commands must start with the dot (.) character, and no query may start with that character.

- The `.show queries` command returns a list of queries that have reached a final state, and that the user invoking the command has access to see.
- The `.show commands` command returns a table of the admin commands that have reached a final state.  The TotalCpu column is the value of the total CPU clock time (User mode + Kernel mode) consumed by this command.
- The `.show journal` command returns a table that contains information about metadata operations that are done on the Azure Data Explorer database. The metadata operations can result from a control command that a user executed, or internal control commands that the system executed, such as drop extents by retention
- The `.show tables details` command returns  a set that contains the specified table or all tables in the database with a detailed summary of each table's properties.

**References:**

- [Management (control commands) overview](https://docs.microsoft.com/en-us/azure/data-explorer/kusto/management/)

### Challenge 6, Task 2: Use .show queries ✅

As part of an incident investigation, you need to find out how many queries were executed in the past 3 hours.

Write a command to count the number of queries that were run, in the past 3 hours.

| :question: **Question 6.2**    |
|:---------------------------|
| Which column in `.show queries` has information related to user or app that has run the queries? |

| :triangular_flag_on_post: **Hint**    |
|:---------------------------|
|The column shows email of users who ran the queries.|

**References:**

- [`.show queries`](https://docs.microsoft.com/en-us/azure/data-explorer/kusto/management/queries)

### Challenge 6, Task 3: Use .journal commands ✅

Write a command to show the details of the function that you created earlier?

| :question: **Question 6.3**    |
|:---------------------------|
| What is the `Event` column value for records which shows the details of function creation? |

| :triangular_flag_on_post: **Hint**    |
|:---------------------------|
|You can either create a new function and check the latest `.show journal` entry or look for record that was created as a part of Challenge 4, Task 1|

**References:**

- [`.show journal`](https://docs.microsoft.com/en-us/azure/data-explorer/kusto/management/journal)

### Challenge 6, Task 4: Use .show commands ✅

Write a command to show the details of commands that you ran, in the past 4 hours.

| :question: **Question 6.4**    |
|:---------------------------|
| What is the "AuthorizationScheme" for commands issued by you? |

| :triangular_flag_on_post: **Hint**    |
|:---------------------------|
|Authorization details are available in `ClientRequestProperties` column in `.show commands` output|

**References:**

- [`.show commands`](https://docs.microsoft.com/en-us/azure/data-explorer/kusto/management/commands)

### Challenge 6, Task 5: Table details and size ✅

Write a control command to show details on ingestionLogs tables in the database.

| :question: **Question 6.4**    |
|:---------------------------|
| How many days is the "DataHotSpan" for ingestionLogs table?  |

| :triangular_flag_on_post: **Hint**    |
|:---------------------------|
|Details about cache policy can be extracted from `CachingPolicy` column. |

**References:**

- [`.show table details`](https://docs.microsoft.com/en-us/azure/data-explorer/kusto/management/show-table-details-command)
  
## Challenge 7: Going more advanced with KQL

| :information_source: **Note**    |
|:---------------------------|
|**Use ingestionLogs table for all the challenge 7 tasks.** |

**Tasks:**

- [**Task 1:** Declaring variables and using 'let' statements](#challenge-7-task-1-declaring-variables-and-using-let-statements-):white_check_mark:
- [**Task 2:** Use the search operator](#challenge-7-task-2-use-the-search-operator-):white_check_mark:
- [**Task 3:** Parse Key-Value pairs strings into separate columns](#challenge-7-task-3-parse-key-value-pairs-strings-into-separate-columns-):white_check_mark:
- [**Task 4:** Nulls are important in timeseries analysis (Compare summarize and make-series)](#challenge-7-task-4-nulls-are-important-in-timeseries-analysis-compare-summarize-and-make-series-):white_check_mark:
- [**Task 5:** Anomaly detection](#challenge-7-task-5-anomaly-detection-):white_check_mark:

### Challenge 7, Task 1: Declaring variables and using 'let' statements ✅

You can use the  `let` statement to set a variable name equal to an expression or a function, or to create views (virtual, temporary, tables based on the result-set of another KQL query). 

`let` statements are useful for:

- Breaking up a complex expression into multiple parts, each represented by a variable.
- Defining constants outside of the query body for readability. 
- Defining a variable once and using it multiple times within a query.

For example, you can use 2 `let` statements to create `LogType` and `TimeBucket` variables with the following values:

- `LogType = 'Warning'`
- `TimeBucket = 1m`

And then craft a query that performs a count of "Warning" by 1 minute Timestamp buckets (bins).

- Remember to include a `;` at the end of your let statement.

| :triangular_flag_on_post: **Hint**    |
|:---------------------------|
|Try to fill in the blanks |

```kql
let LogType= .....;
let TimeBucket= .....;
ingestionLogs
| where Level==....
| summarize count() by bin(Timestamp,...)
```

| :question: **Question 7.1**    |
|:---------------------------|
| What is the `count_` at `2014-03-08 00:00:00.0000` ? |

**References:**

- [`let`](https://docs.microsoft.com/en-us/azure/data-explorer/kusto/query/letstatement#examples)
- [`bin()`](https://learn.microsoft.com/en-us/azure/data-explorer/kusto/query/binfunction)

### Challenge 7, Task 2: Use the search operator ✅

You received an alert early in the morning regarding multiple Timeouts in your system. You want to quickly search the traces without using specific columns or table names.

| :question: **Question 7.2**    |
|:---------------------------|
| Write a query to "search" for `Exception=System.Timeout` string in the entire database.|

**References:**

- [`search` operator](https://learn.microsoft.com/en-us/azure/data-explorer/kusto/query/searchoperator?pivots=azuredataexplorer)

### Challenge 7, Task 3: Parse Key-Value pairs strings into separate columns ✅

As part of an incident investigation, you need to look at the `INGESTOR_GATEWAY` records (`Component == 'INGESTOR_GATEWAY'`).

You need to use the _Message_ column, which contains the message of the trace, representing the information in a key/value form.

An example of a typical message would be:

```kql
$IngestionCommand table=scaleEvents format=json
```

You want to analyze all the message strings, by extracting the `Message` text into 2 calculated separate columns: `table` and `format`.

Let's extract that to discover the number of records per format.

| :question: **Question 7.3**    |
|:---------------------------|
|What is the count of json format?|

| :triangular_flag_on_post: **Hint**    |
|:---------------------------|
|Use `summarize` to `count()` by format |

**References:**

- [`parse-kv`](https://learn.mFicrosoft.com/en-us/azure/data-explorer/kusto/query/parse-kv-operator)

---

### Timeseries Analytics and Machine Learning with Azure Data Explorer

Many interesting use cases use machine learning algorithms and derive interesting insights from telemetry data. Often, these algorithms require a strictly structured dataset as their input. The raw log data usually doesn't match the required structure and size. We will see how we can use the make-series operator to create well curated data (time series).

Then, we can use built in functions like [`series_decompose_anomalies`](https://docs.microsoft.com/en-us/azure/data-explorer/kusto/query/series-decompose-anomaliesfunction). Anomalies/Outliers will be detected by the Kusto service and highlighted as red dots on the time series chart.

**Time series - What is it?**

A time series is a collection of observations of well-defined data items obtained through repeated measurements over time and listed in time order. Most commonly, the data points are consistently measured at equally spaced intervals. For example, measuring the temperature of the room each minute of the day would comprise a time series. Data collected irregularly is not a time series.

**What is time series analysis?**

Time series analysis comprises methods for analyzing time series data in order to extract meaningful statistics and other characteristics of the data. Time series forecasting, for example, is the use of a model to predict future values based on previously observed values.

**What is time series decomposition?**

Time series decomposition involves thinking of a series as a combination of 4 components:

- **trends** increasing or decreasing value in the series
- **seasonality** repeating short-term cycle in the series
- **baseline** the predicted value of the series, which is the sum of seasonal and trend components
- **noise** the residual random variation in the series.
  
We can use built in functions, that uses time series decomposition to forecast future metric values and/or detect anomalous values.

**Why should you use make-series instead of the summarize operator?**

The summarize operator does not add "null bins" — rows for time bin values for which there's no corresponding row in the table. It's a good idea to "pad" the table with those bins. Advanced built in ML capabilities like anomaly detection need the data points to be **consistently measured at equally spaced intervals**.

The `make-series` operator can create such a “complete” series.

---

### Challenge 7, Task 4: Nulls are important in timeseries analysis (Compare summarize and make-series) :white_check_mark:

In this task, calculate the average size of data ingested per 30 min by the node 'Engine000000000378'. Use Component as 'INGESTOR_EXECUTER'. File size is available in the 'Properties' column. Render it as a timechart.

| :triangular_flag_on_post: **Hint**    |
|:---------------------------|
|Complete the following query |

```kql
let TimeBuckets = ....;
ingestionLogs 
| where Component == "INGESTOR_EXECUTER" and Node == "Engine000000000378"
| extend Size = ....
| make-series MySeries=round(avg(Size),2) on Timestamp step TimeBuckets by Level
| render ....
```

| :question: **Question 7.4**    |
|:---------------------------|
|What is the file size value (y axis) at `2014-03-08 02:30:00.000` ?|

**Example Output:**

![Example Output for Question 7.4](/assets/images/Challenge7-Task4-Part2-Pic1.png "Example Output for Question 7.4")

**Why should you use make-series instead of the summarize operator?**

The summarize operator does not add "null bins" — rows for time bin values for which there's no corresponding row in the table. It's a good idea to "pad" the table with those bins. Advanced built in ML capabilities like anomaly detection need the data points to be consistently measured at equally spaced intervals. The **make-series** can create such a “complete” series.

**References:**

- [extend operator](https://docs.microsoft.com/en-us/azure/data-explorer/kusto/query/extendoperator)
- [tolong()](https://learn.microsoft.com/en-us/azure/data-explorer/kusto/query/tolongfunction)
- [make-series](https://learn.microsoft.com/en-us/azure/data-explorer/kusto/query/make-seriesoperator)
- [Time series analysis](https://learn.microsoft.com/en-us/azure/data-explorer/time-series-analysis)

### Challenge 7, Task 5: Anomaly detection ✅

Anomaly detection lets you find outliers/anomalies in the data.

Let's find out any file size anomalies by summarizing the average of file sizes in 1-minute intervals.

Can you spot red dots indicating outliers/anomalies i.e.,spikes in file size on the chart?

| :triangular_flag_on_post: **Hints**    |
|:---------------------------|
|Use `series_decompose_anomalies` to render anomaly chart. |
|Fill in the blanks to complete the query.

```kql
let TimeBuckets = 1m;
ingestionLogs
| extend Size = tolong(Properties.size)
| make-series ActualSize=round(avg(Size),2) on .... step ....
| extend anomaly = series_decompose_anomalies(....)
| render anomalychart with(anomalycolumns=...., title='Ingestion Anomalies')
```

| :question: **Question 7.5**    |
|:---------------------------|
|What is the anomaly value (y axis) at `2014-03-08 04:24:00:000?` ?|

**Example result:**

![Example Result for Question 7.5](/assets/images/anomalies.png "Example Result for Question 7.5")

**References:**

- [ADX Anomaly Detection](https://docs.microsoft.com/en-us/azure/data-explorer/anomaly-detection#time-series-anomaly-detection)
- [Series Decompose Anomalies](https://learn.microsoft.com/en-us/azure/data-explorer/kusto/query/series-decompose-anomaliesfunction)

| :information_source: **Note**    |
|:---------------------------|
|The following explanation in this task is for your understanding and does not count for the challenge. |

**How to display the anomalies in a tabular format?**

The `series_decompose_anomalies` function returns the following respective series:

- `ad_flag`: A three-part series containing the values (+1, -1, 0) marking up/down/no anomaly respectively
- `ad_score`: Anomaly score (using Tukey's fence test. Anomaly scores above 1.5 or below -1.5 indicate a mild anomaly rise or decline respectively. Anomaly scores above 3.0 or below -3.0 indicate a strong anomaly)
- `baseline`: The predicted value of the series, according to the decomposition

To get a tabular format of the detected anomalies, you can use the `mv-expand` operator to expand the multi-value dynamic array of the anomaly detection component (AnomalyFlags, AnomalyScore, PredictedUsage) into multiple match records, and then filter by positive and negative deviations from expected usage (where AnomalyFlags != 0).

**Example:**

```kql
ingestionLogs
| where Component == "INGESTOR_EXECUTER"
| extend fileSize=tolong(Properties.size)
| make-series ActualSize=avg(fileSize) on Timestamp step 1min // Creates the time series, listed by data type
| extend(AnomalyFlags, AnomalyScore, PredictedSize) = series_decompose_anomalies(ActualSize, -1) // Scores and extracts anomalies based on the output of make-series 
| mv-expand ActualSize to typeof(double), Timestamp to typeof(datetime), AnomalyFlags to typeof(double),AnomalyScore to typeof(double), PredictedSize to typeof(long) // Expands the array created by series_decompose_anomalies()
| where AnomalyFlags != 0  // Returns all positive and negative deviations from expected usage
| project Timestamp,ActualSize = format_bytes(ActualSize, 2),PredictedSize = format_bytes(PredictedSize, 2), AnomalyScore, AnomalyFlags // Defines which columns to return 
| sort by abs(AnomalyScore) desc // Sorts results by anomaly score in descending ordering
```

![Logs ordered by absolute Anomaly Score](/assets/images/anomalies_table.png "Logs ordered by absolute Anomaly Score")

Looking at the query results, you can see that the query:

- Calculates an expected sum (of the file size) for each bucket.
- Compares actual size to expected size.
- Assigns an anomaly score to each data point, indicating the extent of the deviation of actual size from expected size.
- Identifies positive (1) and negative (-1) anomalies.

## Challenge 8: Visualization

| :information_source: **Note** |
|:------------------------------|
| This feature is not yet available in Fabric. **Challenge 8 is not required.**|

Realtime Dashboards in Fabric are not publicly available yet. However, to build one, they use the same concepts as Realtime Dashboards in ADX Web UI. You may skip this lab considering the feature is not yet in Fabric, or proceed to build a realtime dashboard using [ADX Web UI](https://aka.ms/adx.try) as part of this learning excercise. Leverage the outputs of the 3 queries below (using ingestionLogs table) connected to your Fabric KQL DB uri. 

Alternatively, you may also proceed to create the visuals using Power BI Reports (which is less speciallized for telemetry types of data) from the output of the 3 queryies below in your QuerySet. Caution that the anomalychart must be refactored to a linechart power bi visual and manually display the anomalies in Power BI. However, the anomalychart will function as instructed below using Realtime Dashboards in ADX Web UI or Fabric RTA (once available). 

![Create a new dashboard](/assets/images/Challenge8-goto-dashboard.png "Create a new dashboard")

After you provide dashboard name and click "Next", click on "+ Add tile" next. You will be prompted to add a data source. Click on "+ Data source"

![Define Dashboard Datasource](/assets/images/Challenge8-dashboard-datasource.png "Define Dashboard Datasource")

Use the cluster URI of your free cluster as the data source.

![URI of the free cluster](/assets/images/free_cluster_uri.png "URI of the free cluster")

**Try this!**

Create a Timechart using following query. Observe that we used `_startTime?` and `_endTime`. These 2 are parameters from TimeRange filter in ADX Dashboard with which we can filter the minimum and maximum time of our data.

```kql
ingestionLogs
| where Timestamp between (todatetime(_startTime) .. todatetime(_endTime))
| summarize count() by bin(Timestamp, 10m), Component
```

- Use the above example query as reference to add Timestamp filter with `_startTime` and `_endTime` filter to queries in task 1 and task 2.
- The following 2 tasks use the timefilter between `2014-03-08T00:00:00` and `2014-03-08T10:00:00`

**Tasks:**

- [**Task 1:** Find the anomaly value](#challenge-8-task-1--find-the-anomaly-value-):white_check_mark:
- [**Task 2:** Find the warning percentage](#challenge-8-task-2--find-the-warning-percentage-):white_check_mark:

### Challenge 8, Task 1 : Find the anomaly value ✅

Parameterize (add Timefilter) and render an Anomaly chart using the following Anomaly detection query. The chart should show values between 2014-03-08T00:00:00 and 2014-03-08T10:00:00.

| :question: **Question 8.1**    |
|:---------------------------|
|What is the anomaly value (y axis) at exactly `04:28` on x axis?|

```kql
let TimeBuckets = 1m;
ingestionLogs 
| <Add Timefilter parameters>
| make-series MySeries=count() on Timestamp step TimeBuckets
| extend anomaly = series_decompose_anomalies(MySeries)
```

### Challenge 8, Task 2 : Find the warning percentage ✅

Parameterize (add Timefilter) and render a Piechart using the following query. The chart should show values between `2014-03-08T00:00:00` and `2014-03-08T10:00:00`.

| :question: **Question 8.2**    |
|:---------------------------|
|What is the warning % on the piechart?|

```kql
ingestionLogs
| <Add Timefilter parameters>
| summarize count() by Level
```

You can directly add a query from query window to an existing dashboard.

| :triangular_flag_on_post: **Hint**    |
|:---------------------------|
|In the query window, explore the **Share** menu.|
  
  ![Share menu in query window](/assets/images/Challenge8-Task1-Pic1.png "Share menu in query window")

**References:**

- [Visualize data with the Azure Data Explorer dashboard](https://docs.microsoft.com/en-us/azure/data-explorer/azure-data-explorer-dashboards)
- [Parameters in Azure Data Explorer dashboards](https://docs.microsoft.com/en-us/azure/data-explorer/dashboard-parameters)

| :information_source: **Note**    |
|:---------------------------|
|Below is just an example dashboard.|

  ![Example Dashboard](/assets/images/Challenge8-Task1-dashboard-v2.png "Example Dashboard")

**Up for more challenges?**

## Challenge 9: Prepare management PowerBI Report with Fabric

Visualize the outputs of any 2 queries in PowerBI using the DirectQuery mode by clicking _Build Power BI report_

There are multiple ways to connect KQLDB and PowerBI depending on the use case.

**References:**
- [Visualize data in a Power BI report](https://learn.microsoft.com/fabric/real-time-analytics/create-powerbi-report)
- [Visualize data using the Azure Data Explorer connector for Power BI](https://docs.microsoft.com/en-us/azure/data-explorer/power-bi-connector)
- [Visualize data using a query imported into Power BI](https://docs.microsoft.com/en-us/azure/data-explorer/power-bi-imported-query)

## Proceed to [Lab 3](Lab3.md) ▶️ on Eventstreams
