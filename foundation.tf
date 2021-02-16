terraform {
  backend "azurerm" {}
}

provider "azurerm" {
  tenant_id       = "f32f0c26-f1e7-4113-a0fb-b5dd258ef98b"
  client_id       = "47a7dcad-03d0-48eb-b144-fe482a4907ec"
  subscription_id = "ed24ac98-acba-4b09-8e04-4a59de05f45c"
}

module "azure_governance_baseline" {
  source                               = "git::git@github.com:CorpAutomationOrg-Terraform-Modules/tf-module-azure-governance-baseline"
  cust_shortname                       = "sz"
  tenant_id                            = "f32f0c26-f1e7-4113-a0fb-b5dd258ef98b"
  client_id                            = "47a7dcad-03d0-48eb-b144-fe482a4907ec"
  hub_subscription_id                  = "ed24ac98-acba-4b09-8e04-4a59de05f45c"
  prod_subscription_id                 = "2ad41181-3685-44d4-a3ed-31c05cb2e9d2"
  dev_subscription_id                  = "3c681dae-1c89-4381-96d8-fabf136eceb7"
  test_subscription_id                 = "50bfdd43-0c99-4e5e-b956-c630f0c8c2cd"
  hub_sub_vnet_adr_space               = ["10.0.0.0/22"]
  hub_sub_connection_vnet_adr_space    = ["10.0.4.0/23"]
  prod_sub_vnet_adr_space              = ["10.0.6.0/23"]
  test_sub_vnet_adr_space              = ["10.0.8.0/23"]
  dev_sub_vnet_adr_space               = ["10.0.10.0/23"]
  hub_azure_bastion_snet_adr_prefix    = "10.0.3.128/27"
  hub_mgmt_snet_adr_prefix             = "10.0.0.0/24"
  hub_dmz_snet_adr_prefix              = "10.0.5.160/27"
  hub_shared_snet_adr_prefix           = "10.0.2.0/24"
  hub_azure_connection_snet_adr_prefix = "10.0.4.128/27"
  prod_azure_bastion_snet_adr_prefix   = "10.0.7.0/27"
  prod_sub_internal_snet_adr_prefix    = "10.0.6.0/24"
  test_azure_bastion_snet_adr_prefix   = "10.0.9.0/27"
  test_sub_internal_snet_adr_prefix    = "10.0.8.0/24"
  dev_azure_bastion_snet_adr_prefix    = "10.0.11.0/27"
  dev_sub_internal_snet_adr_prefix     = "10.0.10.0/24"
}
