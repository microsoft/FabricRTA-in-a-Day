# Provision Fabric Trial Tenant

## Office 365 E5 Trial
https://blog.fabric.microsoft.com/en-us/blog/accessing-microsoft-fabric-for-developers-startups-and-enterprises

IMPORTANT: Recurring billing for will charge your credit card, unless you disable it. Follow instructions in link above. 

## Steps
### Office Steps
1. https://outlook.com setup new account. ie. `summervacation2024@outlook.com`, `$pear23Fishin`
2. https://www.microsoft.com/en-us/microsoft-365/enterprise/office365-plans-and-pricing 
Try **Office 365 E5 (no Teams)**. Save your username & sign-in. ie. summer@vacation2024.onmicrosoft.com, $pear23Fishin 
4. Set 25 licenses, click update, Enter your CC. Don't worry this won't charge anything by disabling recurring billing below. 
5. https://admin.microsoft.com/AdminPortal/Home#/users > subscriptions > edit recurring billing > set Let expire. 
6. Click Active Users > Add multiple users > check I'd like to upload a CSV
7. Download the [CSV](Import_Users.csv) and replace all "TestProcedureTenant" with your tenant. ie. mine is "vacation2024". Save an upload the CSV. 
8. Assign Licenses, Complete adding users, click Send email to Admin and click Download user details to save the list of Users & Passwords.

### Fabric Steps
8. https://app.fabric.microsoft.com Login as the admin, click **Start Trial**, goto **Admin portal** > tenant settings > search fabric on the top right > confirm both fabric toggles are enabled (_Users can create Fabric items_,  _Users can try Microsoft Fabric paid features_), search _dashboard_ on the top right and **enable** _Users can create Real-Time Dashboard (preview)_.
9. From a **private browser** login as user01-4, set new password to the same as the old one, just append a 1 at the end, and click Start Trial as each one. Save the new password on the CSV file.
10. As Admin, confirm 5 Trial completed in Admin portal > Capacity settings > Trial. 
![image](https://github.com/user-attachments/assets/7d9dc63a-e42d-4f7f-99f3-dd6d5980a08e)
11. Download the [powershell](FabricWorkspacesSetUp.ps1) script and edit lines 59 & 61 in VSCode with your tenant. 

from:
```powershell
	[System.String] $tenantAdmin="admin"
	##Define the domain
	[System.String] $domain="<your_tenant>.onmicrosoft.com"
```
to:
```powershell
	[System.String] $tenantAdmin="summer"
	##Define the domain
	[System.String] $domain="summervacation2024.onmicrosoft.com"
```

13. Run the powershell script, by clicking on Run in VSCode.
14. Go back to https://app.fabric.microsoft.com as the admin account (ie. `summervacation2024@outlook.com`). Refresh the page and click Workspaces. 1-24 should appear.
15. Create workspace LabAdmin, add user01-24 viewer workspace access. Proctors may use the LabAdmin workspace to prepare and complete the lab prior. Users may reference it as the cheatsheet during the workshop to compare their work or copy from.
