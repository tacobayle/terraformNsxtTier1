data "nsxt_policy_tier0_gateway" "T0" {
  display_name = var.tier1.tier0
}

resource "nsxt_policy_tier1_gateway" "tier1_gw" {
  description               = var.tier1.name
  display_name              = var.tier1.description
  tier0_path                = data.nsxt_policy_tier0_gateway.T0.path
  route_advertisement_types = var.tier1.route_advertisement_types
}