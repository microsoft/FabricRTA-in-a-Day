# Provisioning Fabric Trial Tenant
## Value Based Delivery resources
January 2024

### Contents
1. Document Purpose
2. Technical Design
3. Limitation with Fabric deployment per region
4. Procedure
   1. Global Email Account Creation
   2. Create the Microsoft 365 E5 Trial Tenant
   3. Create M365 users
   4. Configure the Fabric Tenant
   5. Enable Fabric Trial Licenses
   6. Provision Fabric Workspaces
   7. Sharing credentials to workshop users
   8. Activating Users environment
5. Optimizing Microsoft Fabric Trial Capacities distribution

## 1.	Document Purpose
Value Based Delivery (VDB) engagement related to Microsoft Fabric can require Trial Tenant for customer readiness especially for “Upskilling Execution” deliveries.

Creating Trial Tenant allows bypassing security and governance applicable to the customer environment. The procedure described in this document should be executed before the delivery to offer the best experience to the workshop attendees.

## 2.	Technical Design
As the [CDX](https://cdx.transform.microsoft.com/) platform is not designed to support Customer Training activities, this environment is not mentioned in this document.

The procedure described hereafter is based on the Microsoft Developer program which allows us to create an M365 Trial Tenant with 25 E5 licenses (which represents the maximum number of users you can simultaneously host at the same time during the workshop).

As the lifetime of the trial tenant is limited to 30 days, the tenant should not be configured too much in advance before the workshop (5 to 10 days before the workshop is a good choice).

As only 10 Fabric Trial Licenses can be enabled per tenant, the technical strategy is the following:
1. Create a new dedicated email address
2. Create the Microsoft 365 E5 Trial Tenant
3. Create user accounts and assign E5 Licenses
4. Configure the Fabric Tenant
5. Enable Fabric Trial Licenses
6. Provision Fabric Workspaces and assign role for other users to the Workspace
7. Share credentials to workshop users

![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/4984616/4acf31f3-77b8-4940-b403-c3742fd0207d)

It is also possible to use a Microsoft 365 developer sandbox subscription, which allows to keep the tenant for 90 days. 

![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/4984616/ab3fb6a2-bd86-4737-96ad-a49f1812501c)

However, this program has some specific limitations, in particular the fact that the same phone number cannot be used multiple times to confirm the identity of the subscription creator.

![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/4984616/63e79a1b-72b7-45f8-847d-86700da34cc0)


## 3.	Limitation with Fabric deployment per region

Microsoft Fabric is available in the following region (January 2024):

![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/130388388/1c2e9e71-b9af-4e8a-9673-634f735548b4)

[Fabric region availability - Microsoft Fabric | Microsoft Learn](https://learn.microsoft.com/en-us/fabric/admin/region-availability)

![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/130388388/daef1313-43bd-4c31-b3d5-2dbce92af2a9)


## 4. Procedure
### 4.1	Global Email Account Creation

Creating an M365 Trial Tenant using the Developer Program requires work or school email address.
⚠️The email address can be used to only create one tenant, so it is required to create a dedicated email address before each new tenant creation.

Create a new email Outlook email address.

![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/4984616/b7959513-ed72-46a2-8967-606e4118f454)

Type the new email address.

![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/4984616/7f88e2d5-5f8d-4587-8e8b-c97fba6881e8)
 
Make sure the inbox is accessible.

![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/4984616/0bed201c-a9e9-4fa4-841a-4a87baa43a5a)


### 4.2	Create the Microsoft 365 E5 Trial Tenant
Use the following link to create the new tenant: https://aka.ms/testM365E5
 
Type the email address created in the previous step.

![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/4984616/8709126d-cffb-48e4-8eee-30e0d521963c)

Validate the selected email address and set up the account.

![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/4984616/84e6325c-5296-4740-84ae-89b30e0992c2)

Fill-up the form to complete the creation.

![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/4984616/4903c95c-a635-4b32-a38b-30b5ccf12f50)

Configure the account will be Global Administrator (this account will be used to execute most of the administrative tasks before opening the tenant to the workshop attendees).

![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/4984616/07b664b0-0c9e-4e59-823a-bcf554a3c864)

Sign in using the previously created email address. 

![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/4984616/1b5cf3fb-42bd-4797-9e38-df13985a2b5c)

Confirm the Tenant creation to proceed.

![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/4984616/7ba9d964-5a3d-4a87-9ef4-2fe86b90b2cc)
 
Click on Continue to enable Microsoft 365 applications.

![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/4984616/12ca37a7-2bea-49d0-99ee-9bdcce9044b2)

Select the proposed domain name and click on Use this domain.
 
![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/4984616/482adfcc-2a10-4a5d-a154-b48ee74199df)

You can create a first set of users with assigned E5 licenses. Other users can be created later.

![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/4984616/9d3efe8f-f579-4cd5-853c-44d964c42d6d)

![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/4984616/9e280ef6-eccb-4f30-b214-9394127ebd13)

Click on Continue to finalize the tenant creation with the proposed domain name.
 
![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/4984616/133c6417-dd40-43ed-bcb8-2710ce222afa)

Click on Go to the admin center.

![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/4984616/6d442e9c-adce-48b9-b89c-fd270fd19e1e)


### 4.3	Create M365 users
Go to the [Microsoft 365 Admin Center](https://admin.microsoft.com/AdminPortal) and go to the Active users layout.

![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/4984616/466c7285-1d47-457f-82b9-38520fd79c87)


Use the Add multiple users and configure usernames.

![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/4984616/ac764a4a-e2c5-4498-85d3-ae4623236263)
 
Assign a M365 E5 license for each created user.

![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/4984616/f0cd517a-831e-4a32-bb21-09298cbdacfc)

Click on Download user details to obtain temporary user password (should be shared to workshop attendees).
 
![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/4984616/1aebfbc1-7340-48b6-931e-36d71d8a329a)

![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/4984616/42033f76-fae3-487c-99e9-89ea02adb525)


### 4.4	Configure the Fabric Tenant
Go to the [Power BI portal](https://app.powerbi.com) and click on the gear icon and select Admin Portal.

![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/4984616/5b3d0075-ca02-47ae-96f5-a4855cef38e1)

On the Admin Portal, go to the Tenant-setting panel. Select Enabled for the Users can Create Fabric items.	
 
![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/4984616/f9d994be-dcdd-45de-930f-7331662b7d9c)

Select Enabled for the Users can try Microsoft Paid features.

![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/4984616/9ebb3bd0-06e3-4909-915c-ad6ed2b8fd89)
 

### 4.5	Enable Fabric Trial Licenses

Go to the user profile from the Top Right corner and click on Start trial to enable the **Fabric Trial license** for the current user.

![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/4984616/3e6922ca-606a-4ec0-bdd8-e0f33b29c104)

Confirm the upgrade.

![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/4984616/d08c7707-8ba7-44ef-9b9b-e21b67a2eb56)

The Fabric Trial should be available for the current user.

![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/4984616/77936f34-3a77-408a-b829-cbd88a9cb94b)

Each Fabric Trial Capacity should be visible on the Trial panel:

![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/4984616/50e6246c-9cdb-4e9e-b361-9edb5c9fbdd3)

Note: a maximum of 5 Fabric Trial Capacities can be created per tenant. Therefore, with this document you'll have 1 tenant > 5 trial capacities > 25 workspaces (1 per user).

![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/130388388/e1ae1eca-5b8d-499c-8f89-432f7a363a52)


### 4.6	Provision Fabric Workspaces
As only 5 Fabric Trial Capacities can be granted per tenant, it is recommended to create in advance on Fabric workspace per user and assign them as contributors (their Power BI pro license will be enough).

![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/4984616/a90a3a69-e46e-4ec1-95a4-3fb908c91ca7)

Assign the user as a contributor to the workspace.

![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/4984616/cb4c7886-5fc0-48a9-aa9b-6dec827a463a)


### 4.7	Sharing credentials to workshop users

Share to each workshop attendees the respective information.

Ex:
-	User account: `ArthurSimon@contosofabriclab.onmicrosoft.com`
-	Temporary password: `Buh75899`
-	Fabric workspace: `Fabric Workspace 3`
-  Each workspace user should have their own Fabric environment ready to use.

 ![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/4984616/99305e16-aa43-4031-8a72-614dfd037b48)



### 4.8	Activating Users environment

Each user should connect with their account and access the following resources:

-	https://www.office.com/
Go to the OneDrive app to make sure it will activate for the Labs

![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/4984616/125759fa-fc52-4f89-854e-88bdf5dbb2c3)


-	https://app.powerbi.com/
Make sure the user can see the assigned workspace.

![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/4984616/e86aa5a5-7fd7-4eba-aef8-6736d4a827c9)

## 5. Optimizing Microsoft Fabric Trial Capacities distribution

First, it is important to understand the difference between:
-	M365 E5 Trial Licenses
-	Microsoft Fabric Trial Capacities

When creating a M365 E5 Trial Tenant, you will benefit from 25 M365 E5 licenses you will assign to your users. The individual M365 E5 Licence includes [Power BI Pro](https://powerbi.microsoft.com/en-us/pricing/) to enable collaborative features (publishing content) within collaborative workspaces.

It is also possible to create [Microsoft Fabric Trial Capacities](https://learn.microsoft.com/en-us/fabric/get-started/fabric-trial) (January 2024 : 5 Fabric Trial capacities per tenant). 

![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/130388388/5c557442-4455-4067-97fd-6f54b6407f58)

As mentioned in the documentation, each user asking for Fabric in Trial mode, becomes the admin of a specific Fabric capacity in trial mode. Users having the Fabric administrator role can see all Fabric Trial capacities.

![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/130388388/593e56c6-b2cb-4278-a772-3a9bc990c0a8)

That means that only users having this specific assignment (Fabric Trial Capacity) will be able to promote a workspace as a Fabric workspace, and then their capacity will support the workspace workload.
Nevertheless, the other users can contribute to these Fabric workspaces as far as they have a M365 E5 or Power BI Pro License.

When all Fabric workspaces are created by the global administrator (CSA), all these workspaces will be assigned to the same Fabric capacity trial capacity, which can lead to performance issue, because of scalability issue, based on a single capacity, which is not limitless.
Therefore, in the case of delivering a Fabric workshop with more than 10 users, it is strongly recommended to spread all workspaces across multiple capacities:

![image](https://github.com/microsoft/FabricRTA-in-a-Day/assets/130388388/9bf3bdd3-e2e7-4309-bcae-b9e089640a04)

The benefit of this design is to distribute all provisioned workspaces between the 5 capacities.
To achieve this scenario, for each workspace:
-	Keep the workspace as a Power BI Pro workspace, and add the administrator of the Fabric capacity you are targeting as a workspace administrator

-	Ask to this user to promote the workspace as a workspace in Trial – the workspace should be automatically mapped to the capacity owned by this user.


MS-Internal ref: https://aka.ms/DataAI-IP/Fabric-TrialTenant
