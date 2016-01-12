data:extend(
{
	-- INTERMEDIATES TAB
	
	-- PRODUCTION TAB
	
    {
		type = "item-subgroup",
		name = "alt-production",
		group = "production",
		order = "e"
	},
	
	--RAW MATERIALS TAB
	{
		type = "item-group",
		name = "raw-materials",
		order = "z",
		inventory_order = "a-b",
		icon = "__HARDmod__/placeholder-graphics/icons/technology/raw-materials.png",
	},
	{
		type = "item-subgroup",
		name = "raw-ores",
		group = "raw-materials",
		order = "a"
	},
	
	--CRAFTING CATEGORIES
	
	{ type = "recipe-category", name = "blast-furnace" },
	{ type = "recipe-category", name = "forge" },
	{ type = "recipe-category", name = "froth-flotation" },
	{ type = "recipe-category", name = "in-hand-crafting" },
	{ type = "recipe-category", name = "workshop-crafting" }
}
)