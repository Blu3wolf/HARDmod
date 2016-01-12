data:extend(
{
	{ type = "recipe-category", name = "blast-furnace" },
	{ type = "recipe-category", name = "forge" },
	
	  -- RAW MATERIALS TAB
  
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
  
	{
		type = "item-subgroup",
		name = "raw-alloy",
		group = "raw-materials",
		order = "b"
	},
  
	{
		type = "item-subgroup",
		name = "raw-plates",
		group = "raw-materials",
		order = "c"
	},
  
    {
		type = "item-subgroup",
		name = "molten-metals",
		group = "raw-materials",
		order = "d",
	},
	
}
)