# Deploy a LAMP app on Ubuntu

## Version:
- Ubuntu 18.04-LTS
- Apache2
- PHP 7.2
- MySQL 5.7

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fphstudy%2Fazure-lamp-template%2Fmaster%2Fazuredeploy.json" target="_blank"><img src="https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.png"/></a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2Fphstudy%2Fazure-lamp-template%2Fmaster%2Fazuredeploy.json" target="_blank">
    <img src="https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.png"/>
</a>

This template uses the Azure Linux CustomScript extension to deploy a LAMP application on Ubuntu. It creates an Ubuntu VM, does a silent install of MySQL, Apache and PHP, then creates a simple PHP script.  Go to /phpinfo.php to see the deployed page.

