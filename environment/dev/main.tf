

module "om"{
source="../../module/resource_group"
resource_group_name ="om"
resource_group_location="centralindia"

}
module "namay" {
    depends_on = [ module.om ]
source="../../module/storage_account" 
storage_account_name="namay51"
resource_group_name =module.om.name51
resource_group_location=module.om.location51


}
module"container"{
    depends_on = [ module.namay ]
    source = "../../module/container"
container_name="shiva"
storage_account_id=module.namay.storage_account_id

}
