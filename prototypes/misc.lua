data:extend(
{
	-- TITANIUM AXE
	
	{
    type = "mining-tool",
    name = "titanium-axe",
    icon = "__NARMod__/graphics/icons/titanium-axe.png",
    flags = {"goes-to-main-inventory"},
    action =
    {
      type="direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
            type = "damage",
            damage = { amount = 14 , type = "physical"}
        }
      }
    },
    durability = 11000,
    subgroup = "tool",
    order = "a[mining]-e[titanium-axe]",
    speed = 11.5,
    stack_size = 10
  },
  
  {
    type = "recipe",
    name = "titanium-axe",
    enabled = false,
	energy_required= 5,
    ingredients =
    {
		{"titanium-plate", 5},
    },
	result = "titanium-axe"
	},
}
)