variable "rg_name" {}
  
variable "rg_location"{}
variable "stg_name" {}

module "om"{
source="../../module/resource_group"
resource_group_name =var.rg_name
resource_group_location=var.rg_location

}
module "namay" {
    depends_on = [ module.om ]
source="../../module/storage_account" 
storage_account_name=var.stg_name
resource_group_name =var.rg_name
resource_group_location=var.rg_location


}