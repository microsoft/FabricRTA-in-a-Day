# Fabric Real-Time Analytics in a Day

Welcome to a One Day, Hands-on workshop on Microsoft Fabric Real-Time Analytics. Microsoft is delighted to present this challenge based, discover by doing experience divided into 2 labs of 4 Hours each, a total of 8 hours.

## After the workshop, you'll better understand how to
- Create **KQL database** in your Fabric enabled Power BI workspace
- Ingest data into KQL Database from storage or **Eventstreams**
- Run powerful KQL queries to explore the data via **KQL Queryset**
- Manage KQL Database using control commands and policies
- Visualize data in Fabric **Real Time Dashboards** or **Power BI Reports**
- Monitor & Alert using **Data Activator** (Reflex)


[**Lab 1: Database Creation, Data Ingestion and Exploration**](./Lab1.md)
This Lab will focus on enabling the participants to Create a KQL database, and ingest data into the KQL database table - One click ingestion of historic data , update policy to perform ETL and write some KQL queries. 

[**Lab 2: Advanced KQL, Policies, and Visualization**](./Lab2.md)
This Lab will focus on enabling the participants to write Kusto queries to explore and analyze the data stored in the KQL database. Participants will also create cool visualizations. It is recommended to complete the Lab 1 before beginning with Lab 2.

[**Lab 3: Eventstreams**](./Lab3.md)
This Lab focuses on enabling participants by creating Eventstreams, simulate streaming data using a Custom App via Fabric PySpark Notebook. With the streaming data stored in the KQL database participants will also leverage the ingestion wizard and query the data. It is recommended to complete the Lab 1 before starting Lab 3.

[**Lab 4: Data Activator**](./Lab4.md)
This Lab focuses on alerts using Data Activator (code name: Reflex). Participants leverage Eventstreams from Lab 3 to create a Reflex destination, create a Model in reflex and Actions. It is recommended to complete Lab 1 & 3 prior to starting Lab 4.

---

### What is Fabric Real Time Analytics and when is it a good fit?

Microsoft Fabric Real-Time Analytics is a fully managed, high-performance, big data analytics platform that makes it easy to analyze high volumes of data in near real time. The Microsoft Fabric Real-Time Analytics toolbox gives you an end-to-end solution for data ingestion, query, visualization, and management.

By analyzing structured, semi-structured, and unstructured data across time series, and by using Machine Learning, Microsoft Fabric Real-Time Analytics makes it simple to extract key insights, spot patterns and trends, and create forecasting models. Microsoft Fabric Real-Time Analytics is scalable, secure, robust, and enterprise-ready, and is useful for log analytics, time series analytics, IoT, and general-purpose exploratory analytics.

**Note**: KQL Databse exists as both a Standalone offering (Azure Data Explorer) and part of Microsoft Fabric (KQL Database). The content will apply to KQL Databse offering in Microsoft Fabric. More about differences between Real-Time Analytics and Azure Data Explorer [here](https://learn.microsoft.com/fabric/real-time-analytics/realtime-analytics-compare).

KQL Databse capabilities are extended by other services built on its powerful query language, including [Azure Monitor logs](https://docs.microsoft.com/en-us/azure/log-analytics/), [Application Insights](https://docs.microsoft.com/en-us/azure/application-insights/), [Time Series Insights](https://docs.microsoft.com/en-us/azure/time-series-insights/), and [Microsoft Defender for Endpoint](https://docs.microsoft.com/en-us/microsoft-365/security/defender-endpoint/microsoft-defender-endpoint)


![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/4984616/7b943c15-5b12-4474-9916-81c3ee03e4de)


### Scenario 

Contoso is an enterprise services company that deals with data extraction, transformation, and load scenarios for it's customers who are using Azure native services like Azure Storage, Azure data factory, Azure SQL database.
Constoso also maintains audit traces,  system logs and telemetry from Azure services and data ETL processes. One customer recently approached Contoso asking to create a dashboard they can use to monitor their Azure SQL Database logs in a single place. Customer has agreed to provide a sample dataset to Contoso.

Contoso is planning to perform exploratory data analysis on the SQL DB logs. It is looking for a suitable analytics platform that provides out of the box integration with Azure services such as storage account for historical load and perform data analysis . Contoso is developing a SaaS application that will allow its customers to trace and monitor their system logs. Contoso wants to offer out of the box visualizations with interactive capabilities to enable its customers to drill-in/drill-out of the data and offer blazing fast loading of visualizations to its customers.

This workshop walks through the steps in designing, creating, and configuring KQL database keeping in mind these requirements. Once the KQL database is created, this workshop enlists the steps to ingest data into KQL database and tables using One Click ingestion.

### Pre-requisites
- Provisioned Fabric environment or Trial.
- See https://aka.ms/fabric-trial or [Provision Fabric Trial Tenant](/assets/ProvisionFabricTrialTenant.md). 

### How to start with KQL Database
Generally, when starting with KQL Database in Fabric, you will follow the following steps (Fabric RTA Workshop Labs will cover all these steps):
1. **Create database**: Create KQL Database in Fabric Real-Time Analytics. 
2. **Ingest data**: Load data into database tables so that you can run queries against it. KQL Database supports several ingestion methods.
3. **Query data**: KQL Database uses the Kusto Query Language, which is an expressive, intuitive, and highly productive query language. It offers a smooth transition from simple one-liners to complex data processing scripts, and supports querying structured, semi-structured, and unstructured (text search) data. Use the web application to run, review, and share queries and results. You can also send queries programmatically (using an SDK) or to a REST API endpoint. 
4. **Visualize results**: Use different visual displays of your data in the native KQL Database Dashboards. You can also display your results using connectors to some of the leading visualization services, such as Power BI and Grafana. 

### Ready to go? Click on the below links to start the challenges
- [**Lab 1: Database Creation, Data Ingestion and Exploration**](./Lab1.md)
- [**Lab 2: Advanced KQL, Policies, and Visualization**](./Lab2.md)
- [**Lab 3: Eventstreams**](./Lab3.md)
- [**Lab 4: Data Activator**](./Lab4.md)

| :information_source: **Note**    |
|:---------------------------|
| The labs will also touch-up on features such as Power BI, Fabric Lakehouse, OneLake availability, Fabric Notebooks, and Fabric Pipelines |

## Contributing

This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit https://cla.opensource.microsoft.com.

When you submit a pull request, a CLA bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., status check, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## Trademarks

This project may contain trademarks or logos for projects, products, or services. Authorized use of Microsoft 
trademarks or logos is subject to and must follow 
[Microsoft's Trademark & Brand Guidelines](https://www.microsoft.com/en-us/legal/intellectualproperty/trademarks/usage/general).
Use of Microsoft trademarks or logos in modified versions of this project must not cause confusion or imply Microsoft sponsorship.
Any use of third-party trademarks or logos are subject to those third-party's policies.
