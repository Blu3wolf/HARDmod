data:extend(
{
-- CRUSHED ORE
	{
		type = "recipe",
		name = "crushed-iron-ore",
		category = "treefarm-mod-crushing",
		energy_required = 5,
		ingredients = {{"iron-ore",1}},
		result = "crushed-iron-ore",
		result_count = 2,
		enabled = "false"
	},
	{
		type = "item",
		name = "crushed-iron-ore",
		icon = "__HARDmod__/placeholder-graphics/icons/plate/crushed-iron-ore.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "tf-raw-materials",
		order = "b[crushed-iron-ore]",
		stack_size = 100
	},
	{
		type = "recipe",
		name = "crushed-copper-ore",
		category = "treefarm-mod-crushing",
		energy_required = 5,
		ingredients = {{"copper-ore",1}},
		result = "crushed-copper-ore",
		result_count = 2,
		enabled = "false"
	},
	{
		type = "item",
		name = "crushed-copper-ore",
		icon = "__HARDmod__/placeholder-graphics/icons/plate/crushed-copper-ore.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "tf-raw-materials",
		order = "b[crushed-copper-ore]",
		stack_size = 100
	}
})
