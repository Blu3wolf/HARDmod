data:extend(
{ 
	
	-- SPACE TRAVEL TAB
	
	{
    type = "item-group",
    name = "spacetravel",
    order = "z-z",
    inventory_order = "d-m",
    icon = "__HARDmod__/placeholder-graphics/icons/technology/space-travel.png",
  },
	
	{
    type = "item-subgroup",
    name = "spacetravel-propellant",
    group = "spacetravel",
    order = "a"
  },
  
  {
    type = "item-subgroup",
    name = "offworld-teleportation",
    group = "spacetravel",
    order = "b"
  },
  
  {
    type = "item-subgroup",
    name = "military-vp",
    group = "spacetravel",
    order = "c"
  },
  
  {
    type = "item-subgroup",
    name = "electronics-vp",
    group = "spacetravel",
    order = "d"
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
  
  -- ORGANICS TAB
  
  {
    type = "item-group",
    name = "organics",
    order = "c-m",
    inventory_order = "d-m",
    icon = "__HARDmod__/placeholder-graphics/icons/technology/hydroponic-farms.png",
  },
  
   {
    type = "item-subgroup",
    name = "organic-tools",
    group = "organics",
    order = "a"
  },
  
  {
    type = "item-subgroup",
    name = "organic-production",
    group = "organics",
    order = "b"
  },
  
  {
    type = "item-subgroup",
    name = "organic-biomass",
    group = "organics",
    order = "c"
  },
  
  {
    type = "item-subgroup",
    name = "organic-chemicals",
    group = "organics",
    order = "c"
  },
  
  {
    type = "item-subgroup",
    name = "organic-fields",
    group = "organics",
    order = "c"
  },
  
  -- FLUIDS / CHEMICALS / ELEMENTS TAB
  
    {
    type = "item-group",
    name = "fluids",
    order = "c-f",
    inventory_order = "a-a",
    icon = "__HARDmod__/placeholder-graphics/icons/technology/fluids.png",
  },
  
  {
    type = "item-subgroup",
    name = "chemicals",
    group = "fluids",
    order = "a"
  },
  
  {
    type = "item-subgroup",
    name = "chemicals-microchip",
    group = "fluids",
    order = "q"
  },
  
  {
    type = "item-subgroup",
    name = "evaporation",
    group = "fluids",
    order = "z"
  },
  
  {
    type = "item-subgroup",
    name = "fluids-oil-processing",
    group = "fluids",
    order = "m"
  },
  
  {
    type = "item-subgroup",
    name = "chemical-electrolysis",
    group = "fluids",
    order = "n"
  },
  
  {
    type = "item-subgroup",
    name = "chemical-furnace",
    group = "fluids",
    order = "g"
  },
  
  {
    type = "item-subgroup",
    name = "chemistry",
    group = "fluids",
    order = "g"
  },
  
  {
    type = "item-subgroup",
    name = "liquid-to-gas",
    group = "fluids",
    order = "b"
  },
  
  {
    type = "item-subgroup",
    name = "gasses",
    group = "fluids",
    order = "a"
  },
  
  -- PRODUCTION TAB
  
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
  
    {
    type = "item-subgroup",
    name = "alt-production",
    group = "production",
    order = "e"
  },
  
  -- INTERMEDIATES TAB
  
  {
    type = "item-subgroup",
    name = "intermediate-bearings",
    group = "intermediate-products",
    order = "t"
  },
  
  {
    type = "item-subgroup",
    name = "intermediate-gears",
    group = "intermediate-products",
    order = "w"
  },
  
  {
    type = "item-subgroup",
    name = "stone-sorter",
    group = "intermediate-products",
    order = "r"
  },
  
  {
    type = "item-subgroup",
    name = "cokery-crafting",
    group = "intermediate-products",
    order = "s"
  },
	
	-- MODULES TAB
	
	{
    type = "item-group",
    name = "modules",
    order = "b-m",
    inventory_order = "d-m",
    icon = "__base__/graphics/technology/module.png",
  },
  {
    type = "item-subgroup",
    name = "module-intermediates",
    group = "modules",
    order = "f-0"
  },
  {
    type = "item-subgroup",
    name = "speed-module",
    group = "modules",
    order = "f-1"
  },
  {
    type = "item-subgroup",
    name = "effectivity-module",
    group = "modules",
    order = "f-2"
  },
  {
    type = "item-subgroup",
    name = "productivity-module",
    group = "modules",
    order = "f-3"
  },
  {
    type = "item-subgroup",
    name = "module-beacon",
    group = "modules",
    order = "f-z"
  },

  -- ELECTRONICS TAB
  
{
    type = "item-group",
    name = "electronic-products",
    order = "c-f",
    inventory_order = "a-a",
    icon = "__base__/graphics/technology/electronics.png",
  },

  {
    type = "item-subgroup",
    name = "substrates",
    group = "electronic-products",
    order = "a-a"
  },
  
  {
    type = "item-subgroup",
    name = "wiring",
    group = "electronic-products",
    order = "a-b"
  },
  
  {
    type = "item-subgroup",
    name = "electronic-components",
    group = "electronic-products",
    order = "a-c"
  },
  
  {
    type = "item-subgroup",
    name = "circuit-boards",
    group = "electronic-products",
    order = "a-d"
  },
  
  {
    type = "item-subgroup",
    name = "data-pack",
    group = "electronic-products",
    order = "a-e"
  },
  
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
	
	-- CRAFTING CATEGORIES
	
	{
		type = "recipe-category",
		name = "cokery-crafting"
	},
	
	{
		type = "recipe-category",
		name = "crushing"
	},
	
	{
		type = "recipe-category",
		name = "froth-flotation"
	},
	
	{
		type = "recipe-category",
		name = "clean-room-crafting"
	},
	
	{
		type = "recipe-category",
		name = "treefarm-mod-dummy"
	},

	{
		type = "recipe-category",
		name = "treefarm-mod-hydroculture"
	},
	
	{
		type = "recipe-category",
		name = "heat-exchanger-crafting"
	},
	
	{
		type = "recipe-category",
		name = "asu-crafting"
	},
	
	{
		type = "recipe-category",
		name = "evaporator-crafting"
	},

	{
		type = "recipe-category",
		name = "bioreactor-crafting"
	},

	{
		type = "recipe-category",
		name = "hydroponic-farm-crafting"
	},
  
  {
		type = "recipe-category",
		name = "blast-furnace" 	
  },
  {
		type = "recipe-category",
		name = "in-hand-crafting" 	
  },
  {
		type = "recipe-category",
		name = "workshop-crafting" 	
  },
  {
		type = "recipe-category",
		name = "pressure-vessel" 	
  },
  {
		type = "recipe-category",
		name = "stone-sorter"
  },
  {
    type = "recipe-category",
    name = "electrolysis"
  },
  {
    type = "recipe-category",
    name = "forge"
  },
  {
    type = "recipe-category",
    name = "chemical-furnace"
  },
  {
    type = "recipe-category",
    name = "electric-furnace"
  },
  {
    type = "recipe-category",
    name = "air-pump"
  },
  {
    type = "recipe-category",
    name = "offworld-teleportation"
  },
}
)
