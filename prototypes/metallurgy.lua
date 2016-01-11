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
	},
	{
		type = "item",
		name = "subsidiary-ore",
		icon = "__HARDmod__/placeholder-graphics/icons/plate/subsidiary-ore.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "raw-ores",
		order = "a[subsidiary-ore]",
		stack_size = 50
	},
	
	-- CONCENTRATED ORE
	
	{
		type = "recipe",
		name = "iron-concentrate",
		category = "froth-flotation",
		energy_required = 20,
		icon = "__HARDmod__/placeholder-graphics/icons/plate/iron-concentrate.png",
		subgroup = "raw-ores",
		ingredients= {
			{type="item",name="crushed-iron-ore", amount=10},
			{type="fluid",name="water", amount=10},
			{type="fluid",name="liquid-air", amount=5}
		},
		results= {
			{type="item", name="iron-concentrate", amount=10},
			{type="item", name="subsidiary-ore", amount=2},
			{type="item", name="tf-crushed-stone", amount=8},
		},
		enabled = "false"
	},
	
	{
		type = "item",
		name = "iron-concentrate",
		icon = "__HARDmod__/placeholder-graphics/icons/plate/iron-concentrate.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "raw-ores",
		order = "a[iron-concentrate]",
		stack_size = 50
	},
})
