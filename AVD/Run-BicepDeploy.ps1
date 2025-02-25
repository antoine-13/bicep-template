#Connexion Azure
Connect-AzAccount

#Ressource Group name
$rgName = "RG-AVD"

#Create Resource Group
New-AzResourceGroup -Name $rgName -Location "FranceCentral"

#Deploy Bicep Template
New-AzResourceGroupDeployment -ResourceGroupName $rgName -TemplateFile ".\main.bicep" -TemplateParameterFile @env/dev.parameters.json

