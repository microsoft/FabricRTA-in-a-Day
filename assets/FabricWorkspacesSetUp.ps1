
Install-Module MicrosoftPowerBIMgmt -Scope CurrentUser
Import-Module MicrosoftPowerBIMgmt

##This function assigns the user as workspace administrator
function ManageUserWorkspace{
    param(
        $PBIWorkspace,
        $UserEmail
    )
    ##Try to add the user
    try
         {
            Add-PowerBIWorkspaceUser -Id $PBIWorkspace.Id -UserEmailAddress $UserEmail -AccessRight Admin -ErrorAction Stop
            Write-Host "$($UserEmail) added to the workspace $($PBIWorkspace.Name)"   
         }
        catch {Write-Host "$($UserEmail) already has access to the workspace $($PBIWorkspace.Name)"}
}

##This function assigns get the Fabric Trial Capacity owned by the user and assigned it to the capacity
function AssignFabricTrialCapacity{
    param(
        $PBIWorkspace,
        $CapacityAdmin,
        $TenantAdmin,
        $LabUser
    )
    
    try
         {
             Write-Host "Assigning Fabric Trial Capacity to Workspace $($PBIWorkspace.Name)"
             
             ##Add the capacity admin as workspace admin
             ManageUserWorkspace -PBIWorkspace $PBIWorkspace -UserEmail $CapacityAdmin
         
             ##Get the Fabric Trial Capacity
             $trialCapacity=Get-PowerBICapacity -Scope Organization | Where-Object {$_.Sku -eq "FT1" -and $_.Admins -eq $CapacityAdmin}

             ##Assign the Workspace to the capacity
             Set-PowerBIWorkspace -Id $PBIWorkspace.id -CapacityId $trialCapacity.Id -Scope Organization
             Write-Host "Workspace $($PBIWorkspace.Name) assigned to the capacity $($trialCapacity.Id)" 

             ##Remove the Capacity Admin from the workspace (excepting the Tenant Admin)
             if($CapacityAdmin -ne $TenantAdmin)
             {
                if($CapacityAdmin -ne $LabUser)
                {
                    Remove-PowerBIWorkspaceUser -Id $PBIWorkspace.Id -UserEmailAddress $CapacityAdmin
                    Write-Host "$($CapacityAdmin) has been removed the workspace $($PBIWorkspace.Name)"
                }         
             }
         }
        catch {Write-Host "Error on capacity assignement $($trialCapacity.Id) to the workspace $($PBIWorkspace.Name)" }
}


##------------------------------------------------------------#
##Define the account used to manage the tenant (not include the tenant in the variable)
[System.String] $tenantAdmin="admin"
##Define the domain
[System.String] $domain="<your_tenant>.onmicrosoft.com"
##------------------------------------------------------------#

##Connection with the administrator account user to manage the tenant
Login-PowerBIServiceAccount

##Create the full tenant admin account
$tenantAdminAccount=-join($tenantAdmin,"@",$domain)

##24 custom users are managed (maximum for a M365 tenant + the admin)
[System.Int32] $Index=1
[System.Int32] $Limit=25

##Iterate over the tenant
while($Index -lt $Limit)
{
if($Index -lt 10)
    {$workspaceName="LabUser0" + $Index}
 else
    {$workspaceName="LabUser" + $Index}

    $workspace=Get-PowerBIWorkspace -Scope Individual -Name $workspaceName

    ##Creates the workspace if missing    
    if($workspace -eq $null)
        {
        Write-Host "The workspace $workspaceName is missing"
        New-PowerBIWorkspace -Name $workspaceName
        Write-Host "The workspace $workspaceName has been created"
        $workspace=Get-PowerBIWorkspace -Scope Individual -Name $workspaceName
        }
    else {Write-Host "The workspace $workspaceName exists"}

    ##Handles UserName pattern
    if($Index -lt 10) {$PBIUser="user0$($index)@$($domain)"}
    else {$PBIUser="user$($index)@$($domain)"}

    ##Add the "lab user" to the workspace
    ManageUserWorkspace -PBIWorkspace $workspace -UserEmail $PBIUser

    ##Spreads the 24 workspaces over the 5 Fabric Trial capacity (admin + users 01/02/03/04)
    #User01 trial capacity
    $array=1,6,11,16,21;if($array -contains $Index) {$CapacityAdmin="user01@$($domain)"}
    
    #User02 trial capacity
    $array=2,7,12,17,22;if($array -contains $Index) {$CapacityAdmin="user02@$($domain)"}
    
    #User03 trial capacity
    $array=3,8,13,18,23;if($array -contains $Index) {$CapacityAdmin="user03@$($domain)"}
    
    #User04 trial capacity
    $array=4,9,14,19,24;if($array -contains $Index) {$CapacityAdmin="user04@$($domain)"}
    
    #admin trial capacity
    $array=5,10,15,20;if($array -contains $Index) {$CapacityAdmin=$tenantAdminAccount}
    
    ##Assign the workspace to the capacity owned by $CapacityAdmin
    AssignFabricTrialCapacity -PBIWorkspace $workspace -CapacityAdmin $CapacityAdmin -TenantAdmin $tenantAdminAccount -LabUser $PBIUser

    $Index++; 
    Write-Host ""
}



