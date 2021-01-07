variable "nsx_user" {}
variable "nsx_password" {}
variable "nsx_server" {}



variable "tier1" {
  default = {
    name     = "myTftier1"
    description = "myTftier1"
    tier0 = "N1_T0"
    route_advertisement_types = ["TIER1_STATIC_ROUTES", "TIER1_CONNECTED"]
  }
}

