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
	{
		type = "item-subgroup",
		name = "lab",
		group = "production",
		order = "z"
	},
  
	{
		type = "item-subgroup",
		name = "air",
		group = "production",
		order = "x"
	},
	{
		type = "item-subgroup",
		name = "oil-refining",
		group = "production",
		order = "w"
	},
	
		-- POWER TAB

	{
		type = "item-group",
		name = "power",
		order = "c-m",
		inventory_order = "d-m",
		icon = "__HARDmod__/placeholder-graphics/icons/technology/power-group.png",
	},
  
    {
		type = "item-subgroup",
		name = "power-source",
		group = "power",
		order = "a"
	},
  
	{
		type = "item-subgroup",
		name = "power-lamp",
		group = "power",
		order = "b"
	},
  
	{
		type = "item-subgroup",
		name = "power-fuels",
		group = "power",
		order = "c"
	},
  
	{
		type = "item-subgroup",
		name = "power-lines",
		group = "power",
		order = "d"
	},
  
	{
		type = "item-subgroup",
		name = "power-nuclear-1",
		group = "power",
		order = "e"
	},
  
	{
		type = "item-subgroup",
		name = "power-nuclear-2",
		group = "power",
		order = "f"
	},
  
    -- FLUIDS / CHEMICALS / ELEMENTS TAB
  
   --[[ {
    type = "item-group",
    name = "fluids",
    order = "c-f",
    inventory_order = "a-a",
    icon = "__HARDmod__/placeholder-graphics/icons/technology/fluids.png",
  },
  
  --]]
  
  ---[[
  
  {
    type = "item-subgroup",
    name = "chemicals",
    group = "bob-fluid-products",
    order = "a"
  },
  
  {
    type = "item-subgroup",
    name = "chemicals-microchip",
    group = "bob-fluid-products",
    order = "q"
  },
  
  {
    type = "item-subgroup",
    name = "evaporation",
    group = "bob-fluid-products",
    order = "z"
  },
  
  {
    type = "item-subgroup",
    name = "fluids-oil-processing",
    group = "bob-fluid-products",
    order = "m"
  },
  
  {
    type = "item-subgroup",
    name = "chemical-electrolysis",
    group = "bob-fluid-products",
    order = "n"
  },
  
  {
    type = "item-subgroup",
    name = "chemical-furnace",
    group = "bob-fluid-products",
    order = "g"
  },
  
  {
    type = "item-subgroup",
    name = "chemistry",
    group = "bob-fluid-products",
    order = "g"
  },
  
  {
    type = "item-subgroup",
    name = "liquid-to-gas",
    group = "bob-fluid-products",
    order = "b"
  },
  
  {
    type = "item-subgroup",
    name = "gasses",
    group = "bob-fluid-products",
    order = "a"
  },
  --]]
	
	--RAW MATERIALS TAB
	--[[{
		type = "item-group",
		name = "raw-materials",
		order = "z",
		inventory_order = "a-b",
		icon = "__HARDmod__/placeholder-graphics/icons/technology/raw-materials.png",
	},
	
	--]]
	
	{
		type = "item-subgroup",
		name = "raw-ores",
		group = "bob-resource-products",
		order = "a"
	},
	{
		type = "item-subgroup",
		name = "raw-alloy",
		group = "bob-resource-products",
		order = "b"
	},
	{
		type = "item-subgroup",
		name = "raw-plates",
		group = "bob-resource-products",
		order = "a"
	},
    {
		type = "item-subgroup",
		name = "molten-metals",
		group = "bob-resource-products",
		order = "d",
	},
	
	--CRAFTING CATEGORIES
	
	{ type = "recipe-category", name = "blast-furnace" },
	{ type = "recipe-category", name = "forge" },
	{ type = "recipe-category", name = "froth-flotation" },
	{ type = "recipe-category", name = "in-hand-crafting" },
	{ type = "recipe-category", name = "workshop-crafting" }
}
)