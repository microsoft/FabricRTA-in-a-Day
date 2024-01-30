# Lab 3 - Eventstreams

## Overview
This lab covers streaming data using Eventstreams in Microsoft Fabric Real-time Analytics. We'll use a PySpark Notebook in Fabric as a simulator for our stream app, Eventstream as our stream processor and KQL DB as our destination. The dataset we'll stream happens to be sitting on blob storage and its the same log sample dataset used for Labs 1 & 2. In this lab we'll stream the data in small chuncks, instead of ingesting in batches as covered in Labs 1 & 2.

## Steps
1. If you skipped Lab1 & 2, this lab requires creating the kqldb first, see _challenge 1 - create kqldb_ in [lab1](Lab1.md)
2. run first script in [Lab3.kql](Lab3.kql) queryset to create logsRaw table if it does not exist
3. create eventstream artifact
4. create custom app source, copy connectionstrings
5. create new notebook, import [LogStreamSimulator.ipynb](./assets/LogStreamSimulator.ipynb) from the [assets](./assets) folder in this repo.
6. paste the connection string of your custom app source.
7. click Run All button, verify last code cell is ingesting. If either of the last code cells in step 4 fail with error file does not exist, then **refresh the browser page** and **click stop session** to get a new session (not reconnect to existing session), **then click Run All** again. 
8. open eventstream artifact, preview the data stream
9. create destination kqldb to exting table logsRaw
10. complete the ingestion wizard mapping (multijson)
11. run remaining scripts in [Lab3.kql](Lab3.kql) queryset to check count of rows ingested is continously increasing
12.  proceed to [Lab4.md](Lab4.md)

**Note:** This lab is work-in-progress, screenshots are pending. :)
Enjoy!



### 🎉 Congrats! You've completed Fabric RTA in a Day Lab 3. 
▶️ Keep going! Proceed to [**Lab 4: Data Activator**](Lab4.md)
