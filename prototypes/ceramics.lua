data:extend(
{
	-- CERAMIC PLATE

	{
	type = "item",
    name = "ceramic-plate",
    icon = "__HARDmod__/placeholder-graphics/icons/ceramic-plate.png",
    flags = {"goes-to-quickbar"},
    subgroup = "raw-plates",
    order = "a[ceramic-plate]",
    stack_size = 50
	},
	
	{
    type = "recipe",
    name = "ceramic-plate",
	category = "electric-furnace",
    enabled = false,
	energy_required= 2,
    ingredients =
    {
		{"clay", 1},
		{"quartz", 1},
    },
	result = "ceramic-plate"
	},
})
