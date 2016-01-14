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
	
	-- CONCENTRATED IRON ORE
	
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
	
	-- MOLTEN IRON
  
	{
		type = "fluid",
		name = "molten-iron",
		default_temperature = 1600,
		heat_capacity = "0KJ",
		base_color = {r=200, g=200, b=175},
		flow_color = {r=240, g=240, b=200},
		max_temperature = 300,
		icon = "__HARDmod__/placeholder-graphics/icons/molten-iron.png",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		order = "m-t"
	},

	{
	    type = "recipe",
		name = "molten-iron",
		results= {{type="fluid", name="molten-iron", amount=10}},
		ingredients =
		{
			{type="item", name="iron-concentrate", amount=10},
			{type="item", name="tf-coke-coal", amount=3},
			--{type="item", name="limestone", amount=1},
		},
		energy_required= 35,
		enabled= "false",
		category= "blast-furnace",
		subgroup="molten-metals"
	},
	
		-- STEEL PLATE
	
	{
		type = "recipe",
		name = "forge-steel",
		ingredients= {
			{type="fluid", name="molten-iron", amount=10},
			--{type="fluid", name="oxygen-gas", amount=3},
		},
		enabled= "false",
		energy_required= 35,
		category = "forge",
		result_count = 10,
		result= "steel-plate",
		subgroup= "raw-plates"
	},
	
	-- CONCENTRATED COPPER ORE
	
	{
		type = "recipe",
		name = "copper-concentrate",
		category = "froth-flotation",
		energy_required = 20,
		icon = "__HARDmod__/placeholder-graphics/icons/plate/copper-concentrate.png",
		subgroup = "raw-ores",
		ingredients= {
			{type="item",name="crushed-copper-ore", amount=10},
			{type="fluid",name="water", amount=10},
			--{type="fluid",name="compressed-air", amount=5}
		},
		results= {
			{type="item", name="copper-concentrate", amount=10},
			{type="item", name="subsidiary-ore", amount=5},
			{type="item", name="tf-crushed-stone", amount=5},
		},
		enabled = "false"
	},
	
	{
		type = "item",
		name = "copper-concentrate",
		icon = "__HARDmod__/placeholder-graphics/icons/plate/copper-concentrate.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "raw-ores",
		order = "a[copper-concentrate]",
		stack_size = 50
	},
	
		-- LOW QUALITY COPPER PLATE
	
	{
		type = "item",
		name = "lq-copper-plate",
		icon = "__HARDmod__/placeholder-graphics/icons/lq-copper-plate.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "raw-plates",
		order = "a[lq-copper-plate]",
		stack_size = 50
	},
	
	{
		type = "recipe",
		name = "lq-copper-plate",
		category = "smelting",
		enabled = true,
		energy_required = 3.5,
		ingredients = {{ "copper-ore", 1}},
		result = "lq-copper-plate"
	},
	
	  	-- MOLTEN COPPER
  
	{
		type = "fluid",
		name = "molten-copper",
		default_temperature = 1600,
		heat_capacity = "0KJ",
		base_color = {r=200, g=200, b=175},
		flow_color = {r=240, g=240, b=200},
		max_temperature = 300,
		icon = "__HARDmod__/placeholder-graphics/icons/molten-copper.png",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		order = "m-t"
	},

	{
	    type = "recipe",
		name = "molten-copper",
		results= {{type="fluid", name="molten-copper", amount=10}},
		ingredients =
		{
			{type="item", name="copper-concentrate", amount=10},
			{type="item", name="tf-coke-coal", amount=3},
			--{type="item", name="limestone", amount=1},
		},
		energy_required= 35,
		enabled= "false",
		category= "blast-furnace",
		subgroup="molten-metals"
	},
	
	-- COPPER ELECTROLYSIS
  
    {
		type = "fluid",
		name = "pure-copper",
		default_temperature = 1600,
		heat_capacity = "0KJ",
		base_color = {r=200, g=200, b=175},
		flow_color = {r=240, g=240, b=200},
		max_temperature = 300,
		icon = "__HARDmod__/placeholder-graphics/icons/plate/pure-copper.png",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		order = "m-t"
	},
  
	{
		type = "recipe",
		name = "copper-electrolysis",
		ingredients= {{type="fluid", name="molten-copper", amount=10}},
		enabled = "false",
		category = "electrolysis",
		energy_required= 35,
		results= {{type="fluid", name="pure-copper", amount=10}},
		subgroup = "raw-plates",
	},
  
  -- FORGE COPPER PLATES
  
	{
		type = "recipe",
		name = "forge-copper",
		ingredients= {{type="fluid", name="pure-copper", amount=10}},
		enabled = "false",
		category = "forge",
		energy_required= 35,
		results= {{type="item", name="copper-plate", amount=20}},
		subgroup = "raw-plates",
	},
  
  -- JUST TO DISABLE VANILLA COPPER PLATES
	{
		type = "recipe",
		name = "copper-plate",
		ingredients= {{type="fluid", name="molten-copper", amount=10}},
		enabled = "false",
		category = "electrolysis",
		result_count = 10,
		energy_required= 35,
		result= "copper-plate",
		subgroup = "raw-plates",
	},

	
})
