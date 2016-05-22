data:extend(
{
	
	--------------- IRON PROCESSING ---------------
	
	{
		type = "item",
		name = "crushed-iron-ore",
		icon = "__HARDmod__/placeholder-graphics/icons/plate/crushed-iron-ore.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "raw-ores",
		order = "a[crushed-iron-ore]",
		stack_size = 50
	},
	
	{
		type = "recipe",
		name = "crushed-iron-ore",
		category = "crushing",
		energy_required = 10,
		enabled = "true",
		ingredients= {
			{type="item",name="iron-ore", amount=10},
		},
		results= {
			{type="item", name="crushed-iron-ore", amount=10},
		},
	},
	
	{
		type = "item",
		name = "subsidiary-ore",
		icon = "__HARDmod__/placeholder-graphics/icons/ore/subsidiary-ore.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "raw-ores",
		order = "a[subsidiary-ore]",
		stack_size = 50
	},
	
	-- IRON CONCENTRATE
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
			{type="fluid",name="compressed-air", amount=5}
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
			{type="item", name="limestone", amount=1},
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
			{type="fluid", name="oxygen-gas", amount=3},
		},
		enabled= "false",
		energy_required= 35,
		category = "forge",
		result_count = 10,
		result= "steel-plate",
		subgroup= "raw-plates"
	},
	

	--------------- COPPER PROCESSING ---------------
	
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

	
	-- COPPER WIRE
	
	{
		type = "recipe",
		name = "copper-cable",
		enabled = false,
		ingredients = {{"copper-plate", 1}},
		result = "copper-cable",
		result_count = 3
	},
	
	{
		type = "recipe",
		name = "lq-copper-cable",
		energy_required = 2,
		ingredients = {{"lq-copper-plate", 1}},
		result = "copper-cable",
		result_count = 2
	},
	
	-- CRUSHED COPPER ORE
	{
		type = "recipe",
		name = "crushed-copper-ore",
		category = "crushing",
		icon = "__HARDmod__/placeholder-graphics/icons/plate/crushed-copper-ore-2.png",
		energy_required = 10,
		subgroup = "raw-ores",
		ingredients= {
			{type="item",name="copper-ore", amount=10},
		},
		results= {
			{type="item", name="crushed-copper-ore", amount=10},
		},
	},
	
	{
		type = "item",
		name = "crushed-copper-ore",
		icon = "__HARDmod__/placeholder-graphics/icons/plate/crushed-copper-ore-2.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "raw-ores",
		order = "a[crushed-copper-ore]",
		stack_size = 50
	},
	
	-- COPPER CONCENTRATE
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
			{type="fluid",name="compressed-air", amount=5}
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
			{type="item", name="limestone", amount=1},
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

	--------------- SULFUR PROCESSING ---------------
	
	-- COPPER CONCENTRATE WITH SULFUR
	{
		type = "recipe",
		name = "copper-concentrate-with-sulfur",
		category = "froth-flotation",
		energy_required = 20,
		icon = "__HARDmod__/placeholder-graphics/icons/plate/copper-concentrate-with-sulfur.png",
		subgroup = "raw-ores",
		ingredients= {
			{type="item",name="crushed-copper-ore", amount=10},
			{type="fluid",name="water", amount=10},
			{type="fluid",name="compressed-air", amount=5}
		},
		results= {
			{type="item", name="copper-concentrate", amount=10},
			{type="item", name="subsidiary-ore", amount=4},
			{type="item", name="tf-crushed-stone", amount=4},
			{type="item", name="sulfur", amount=2},
		},
		enabled = "false"
	},

	--------------- LEAD PROCESSING ---------------
	
	-- LEAD CONCENTRATE
	{
		type = "recipe",
		name = "lead-concentrate",
		category = "froth-flotation",
		energy_required = 20,
		icon = "__HARDmod__/placeholder-graphics/icons/plate/lead-concentrate.png",
		subgroup = "raw-ores",
		ingredients= {
			{type="item",name="subsidiary-ore", amount=10},
			{type="fluid",name="water", amount=10},
			{type="fluid",name="compressed-air", amount=5}
		},
		results= {
			{type="item", name="lead-concentrate", amount=5},
			{type="item", name="tf-crushed-stone", amount=5},
		},
		enabled = "false"
	},
	
	{
		type = "item",
		name = "lead-concentrate",
		icon = "__HARDmod__/placeholder-graphics/icons/plate/lead-concentrate.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "raw-ores",
		order = "f-a[lead-ore]",
		stack_size = 50
	},
	
	-- MOLTEN LEAD
  
  {
		type = "fluid",
		name = "molten-lead",
		default_temperature = 1600,
		heat_capacity = "0KJ",
		base_color = {r=200, g=200, b=175},
		flow_color = {r=240, g=240, b=200},
		max_temperature = 300,
		icon = "__HARDmod__/placeholder-graphics/icons/molten-lead.png",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		order = "m-t"
	},

	{
	    type = "recipe",
		name = "molten-lead",
		results= {{type="fluid", name="molten-lead", amount=10}},
		ingredients =
		{
			{type="item", name="lead-concentrate", amount=10},
			{type="item", name="tf-coke-coal", amount=3},
			{type="item", name="limestone", amount=1},
		},
		energy_required= 35,
		enabled= "false",
		category= "blast-furnace",
		subgroup="molten-metals"
	},
	
	-- LEAD PLATE
  
  {
    type = "recipe",
    name = "forge-lead",
	ingredients= {{type="fluid", name="molten-lead", amount=10}},
    enabled = "false",
    category = "forge",
    result_count = 10,
	energy_required= 35,
	result= "lead-plate",
	subgroup = "raw-plates",
  },
  
    {
    type = "item",
    name = "lead-plate",
    icon = "__HARDmod__/placeholder-graphics/icons/plate/lead-plate.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-plates",
    order = "c-a-f[lead-plate]",
    stack_size = 50
  },

  --------------- ZINC PROCESSING ---------------
	
	-- 1) ZINC CONCENTRATE (FROTH FLOATATION)
	{
		type = "recipe",
		name = "zinc-concentrate",
		category = "froth-flotation",
		energy_required = 20,
		icon = "__HARDmod__/placeholder-graphics/icons/zinc-ore.png",
		subgroup = "raw-ores",
		ingredients= {
			{type="item",name="subsidiary-ore", amount=10},
			{type="fluid",name="water", amount=10},
			{type="fluid",name="compressed-air", amount=5}
		},
		results= {
			{type="item", name="zinc-concentrate", amount=5},
			{type="item", name="tf-crushed-stone", amount=5},
		},
		enabled = "false"
	},
	
	{
		type = "item",
		name = "zinc-concentrate",
		icon = "__HARDmod__/placeholder-graphics/icons/zinc-ore.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "raw-ores",
		order = "f-a[zinc-ore]",
		stack_size = 50
	},


        -- 2) ZINC OXIDE (ROASTING)

	{
		type = "recipe",
		name = "zinc-oxide",
		category = "chemical-furnace",
		energy_required = 30,
		icon = "__HARDmod__/placeholder-graphics/icons/plate/zinc-concentrate.png",
		subgroup = "raw-ores",
		ingredients= {
			{type="item",name="zinc-concentrate", amount=10},
			{type="fluid",name="oxygen-gas", amount=10}
		},
		results= {
			{type="item", name="zinc-oxide", amount=10},
			{type="fluid", name="sulfur-dioxide", amount=10},
		},
		enabled = "false"
	},

	{
		type = "item",
		name = "zinc-oxide",
		icon = "__HARDmod__/placeholder-graphics/icons/plate/zinc-concentrate.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "raw-ores",
		order = "f-a[zinc-oxide]",
		stack_size = 50
	},

	
	-- 3) ZINC SULPHATE (LEACHING)

  	{
		type = "fluid",
		name = "zinc-sulphate",
		default_temperature = 300,
		heat_capacity = "0KJ",
		base_color = {r=200, g=200, b=175},
		flow_color = {r=240, g=240, b=200},
		max_temperature = 300,
		icon = "__HARDmod__/placeholder-graphics/icons/plate/zinc-sulphate.png",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		order = "m-t"
	},

	{
	    type = "recipe",
		name = "zinc-sulphate",
		icon = "__HARDmod__/placeholder-graphics/icons/plate/zinc-sulphate.png",
		results= 
		{
			{type="fluid", name="zinc-sulphate", amount=10},
			{type="item", name="lead-concentrate", amount=4},
		},
		ingredients =
		{
			{type="item", name="zinc-oxide", amount=10},
			{type="fluid", name="sulfuric-acid", amount=10},
		},
		energy_required= 30,
		enabled= "false",
		category= "chemistry",
		subgroup="molten-metals"
	},
	
	-- 4) ZINC CATHODES (ELECTROWINNING)

	{
		type = "recipe",
		name = "zinc-electrolysis",
		icon = "__HARDmod__/placeholder-graphics/icons/electronics/solder.png",
		ingredients= {{type="fluid", name="zinc-sulphate", amount=10}},
		enabled = "false",
		category = "electrolysis",
		energy_required= 35,
		results= 
		{
			{type="item", name="zinc-cathode", amount=10},
			{type="fluid", name="sulfuric-acid", amount=5}
		},
		subgroup = "raw-plates",
	},

	{
		type = "item",
		name = "zinc-cathode",
		icon = "__HARDmod__/placeholder-graphics/icons/electronics/solder.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "molten-metals",
		order = "e",
		stack_size = 50
	},

	-- 5) PURE ZINC (CATHODE MELTING) 
  
	{
		type = "fluid",
		name = "pure-zinc",
		default_temperature = 1600,
		heat_capacity = "0KJ",
		base_color = {r=200, g=200, b=175},
		flow_color = {r=240, g=240, b=200},
		max_temperature = 300,
		icon = "__HARDmod__/placeholder-graphics/icons/plate/pure-zinc.png",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		order = "m-t"
	},
  

	{
		type = "recipe",
		name = "pure-zinc-melt",
		energy_required = 5,
		category = "electric-furnace",
		subgroup = "molten-metals",
		enabled = false,
		ingredients =
		{{"zinc-cathode", 10}},
		results= {{type="fluid", name="pure-zinc", amount=10}}
	},
  
	-- 6) ZINC PLATES (FORGING)

	{
		type = "recipe",
		name = "forge-zinc",
		ingredients= {{type="fluid", name="pure-zinc", amount=10}},
		enabled = "false",
		category = "forge",
		result_count = 10,
		energy_required= 35,
		results= {{type="item", name="zinc-plate", amount=10}},
		subgroup = "raw-plates",
	},
	
	{
		type = "item",
		name = "zinc-plate",
		icon = "__HARDmod__/placeholder-graphics/icons/plate/zinc-plate-2.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "raw-plates",
		order = "c-a-a[zinc-plate]",
		stack_size = 50
	},

	-- 7) PURE ZINC (IMPERIAL SMELTING PROCESS)

	{
	    type = "recipe",
		name = "pure-zinc-isp",
		icon = "__HARDmod__/placeholder-graphics/icons/plate/pure-zinc.png",
		ingredients =
		{
			{type="item", name="zinc-oxide", amount=20},
			{type="item", name="lead-concentrate", amount=10},
			{type="item", name="tf-coke-coal", amount=8},
			{type="item", name="limestone", amount=2},
		},
		results= 
		{
			{type="fluid", name="pure-zinc", amount=15},
			{type="fluid", name="molten-lead", amount=5}
		},
		energy_required= 70,
		enabled= "false",
		category= "blast-furnace",
		subgroup="molten-metals"
	},
	
	
	--------------- TIN PROCESSING ---------------
	
	-- TIN CONCENTRATE
	{
		type = "recipe",
		name = "tin-concentrate",
		category = "froth-flotation",
		energy_required = 20,
		icon = "__HARDmod__/placeholder-graphics/icons/plate/tin-concentrate.png",
		subgroup = "raw-ores",
		ingredients= {
			{type="item",name="subsidiary-ore", amount=10},
			{type="fluid",name="water", amount=10},
			{type="fluid",name="compressed-air", amount=5}
		},
		results= {
			{type="item", name="tin-concentrate", amount=5},
			{type="item", name="tf-crushed-stone", amount=5},
		},
		enabled = "false"
	},
	
	{
		type = "item",
		name = "tin-concentrate",
		icon = "__HARDmod__/placeholder-graphics/icons/plate/tin-concentrate.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "raw-ores",
		order = "a[tin-concentrate]",
		stack_size = 50
	},
	
	-- MOLTEN TIN
  
  {
		type = "fluid",
		name = "molten-tin",
		default_temperature = 1600,
		heat_capacity = "0KJ",
		base_color = {r=200, g=200, b=175},
		flow_color = {r=240, g=240, b=200},
		max_temperature = 300,
		icon = "__HARDmod__/placeholder-graphics/icons/molten-tin.png",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		order = "m-t"
	},

	{
	    type = "recipe",
		name = "molten-tin",
		results= {{type="fluid", name="molten-tin", amount=10}},
		ingredients =
		{
			{type="item", name="tin-concentrate", amount=10},
			{type="item", name="tf-coke-coal", amount=3},
			{type="item", name="limestone", amount=1},
		},
		energy_required= 35,
		enabled= "false",
		category= "blast-furnace",
		subgroup="molten-metals"
	},
	
	-- TIN PLATE
  
  {
    type = "recipe",
    name = "forge-tin",
    enabled = false,
    category = "forge",
    energy_required = 35,
    ingredients = {{type="fluid", name="molten-tin", amount=10}},
    results = {{type="item", name="tin-plate", amount=10}}
  },
  
  {
    type = "item",
    name = "tin-plate",
    icon = "__HARDmod__/placeholder-graphics/icons/plate/tin-plate.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-plates",
    order = "c-a-a[tin-plate]",
    stack_size = 50
  },
  
  --------------- GOLD PROCESSING ---------------

  -- GOLD ORE
  
    {
    type = "item",
    name = "gold-ore",
    icon = "__HARDmod__/placeholder-graphics/icons/gold-ore.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-ores",
    order = "f-a[gold-ore]",
    stack_size = 50
  },
  
	-- GOLD CONCENTRATE
	
	{
		type = "recipe",
		name = "gold-concentrate",
		category = "froth-flotation",
		energy_required = 20,
		icon = "__HARDmod__/placeholder-graphics/icons/plate/gold-concentrate.png",
		subgroup = "raw-ores",
		ingredients= {
			{type="item",name="subsidiary-ore", amount=10},
			{type="fluid",name="water", amount=10},
			{type="fluid",name="compressed-air", amount=5}
		},
		results= {
			{type="item", name="gold-concentrate", amount=5},
			{type="item", name="tf-crushed-stone", amount=5},
		},
		enabled = "false"
	},
	
	{
		type = "item",
		name = "gold-concentrate",
		icon = "__HARDmod__/placeholder-graphics/icons/plate/gold-concentrate.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "raw-ores",
		order = "a[gold-concentrate]",
		stack_size = 50
	},
	
	  	-- GOLD CYANIDE SOLUTION
  
  {
		type = "fluid",
		name = "gold-cyanide-solution",
		default_temperature = 1600,
		heat_capacity = "0KJ",
		base_color = {r=200, g=200, b=175},
		flow_color = {r=240, g=240, b=200},
		max_temperature = 300,
		icon = "__HARDmod__/placeholder-graphics/icons/gold-cyanide-solution.png",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		order = "m-t"
	},

	{
	    type = "recipe",
		name = "gold-cyanide-solution",
		results= {{type="fluid", name="gold-cyanide-solution", amount=10}},
		ingredients =
		{
			{type="item", name="gold-concentrate", amount=10},
			{type="item", name="sodium-cyanide", amount=10},
		},
		energy_required= 35,
		enabled= "false",
		category= "chemistry",
		subgroup="molten-metals"
	},

	-- MOLTEN GOLD
  
  {
		type = "fluid",
		name = "pure-gold",
		default_temperature = 1600,
		heat_capacity = "0KJ",
		base_color = {r=200, g=200, b=175},
		flow_color = {r=240, g=240, b=200},
		max_temperature = 300,
		icon = "__HARDmod__/placeholder-graphics/icons/pure-gold.png",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		order = "m-t"
	},

	{
	    type = "recipe",
		name = "pure-gold",
		results= {{type="fluid", name="pure-gold", amount=10}},
		ingredients =
		{
			{type="fluid", name="chlorine", amount=5},
			{type="fluid", name="gold-cyanide-solution", amount=10},
		},
		energy_required= 35,
		enabled= "false",
		category= "electrolysis",
		subgroup="molten-metals"
	},
	
	{
	    type = "recipe",
		name = "pure-gold",
		results= {{type="fluid", name="pure-gold", amount=10}},
		ingredients =
		{
			{type="item", name="gold-ore", amount=10},
			{type="item", name="tf-coke-coal", amount=3},
		},
		energy_required= 35,
		enabled= "false",
		category= "blast-furnace",
		subgroup="molten-metals"
	},
  
  -- FORGE GOLD PLATES
  
  {
    type = "recipe",
    name = "forge-gold",
	ingredients= {{type="fluid", name="pure-gold", amount=10}},
    enabled = "false",
    category = "forge",
    result_count = 10,
	energy_required= 35,
	results= {{type="item", name="gold-plate", amount=10}},
	subgroup = "raw-plates",
  },
  
      {
    type= "item",
    name= "gold-plate",
    order= "b-b",
    stack_size= 50,
    flags= { "goes-to-main-inventory" },
	icon="__HARDmod__/placeholder-graphics/icons/gold-plate.png",
	subgroup = "raw-plates",
  },
  
 --------------- COBALT PROCESSING ---------------
	
	-- COBALT CONCENTRATE
	{
		type = "recipe",
		name = "cobalt-concentrate",
		category = "froth-flotation",
		energy_required = 20,
		icon = "__HARDmod__/placeholder-graphics/icons/plate/cobalt-concentrate.png",
		subgroup = "raw-ores",
		ingredients= {
			{type="item",name="subsidiary-ore", amount=10},
			{type="fluid",name="water", amount=10},
			{type="fluid",name="compressed-air", amount=5}
		},
		results= {
			{type="item", name="cobalt-concentrate", amount=5},
			{type="item", name="tf-crushed-stone", amount=5},
		},
		enabled = "false"
	},
	
	{
		type = "item",
		name = "cobalt-concentrate",
		icon = "__HARDmod__/placeholder-graphics/icons/plate/cobalt-concentrate.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "raw-ores",
		order = "f-a[cobalt-ore]",
		stack_size = 50
	},
	
  -- COBALT OXIDE
  
  {
    type = "item",
    name = "cobalt-oxide",
    icon = "__HARDmod__/placeholder-graphics/icons/cobalt-oxide.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "chemical-furnace",
    order = "f[cobalt-oxide]",
    stack_size = 50
  },

	{
	    type = "recipe",
		name = "cobalt-oxide",
		results= {{type="item", name="cobalt-oxide", amount=10}},
		ingredients =
		{
			{type="item", name="cobalt-concentrate", amount=10},
			{type="item", name="tf-coke-coal", amount=3},
			{type="fluid", name="ammonia", amount=5},
			{type="fluid", name="hydrogen-sulfide", amount=5},
			{type="fluid", name="hydrogen-gas", amount=5},
			{type="fluid", name="compressed-air", amount=5},
		},
		energy_required= 35,
		enabled= "false",
		category= "blast-furnace",
		subgroup="molten-metals"
	},
  
  	--------------- TITANIUM PROCESSING ---------------
  
  -- TITANIUM CONCENTRATE
	{
		type = "recipe",
		name = "titanium-concentrate",
		category = "froth-flotation",
		energy_required = 20,
		icon = "__HARDmod__/placeholder-graphics/icons/plate/titanium-concentrate.png",
		subgroup = "raw-ores",
		ingredients= {
			{type="item",name="subsidiary-ore", amount=10},
			{type="fluid",name="water", amount=10},
			{type="fluid",name="compressed-air", amount=5}
		},
		results= {
			{type="item", name="titanium-concentrate", amount=5},
			{type="item", name="tf-crushed-stone", amount=5},
		},
		enabled = "false"
	},
	
	{
		type = "item",
		name = "titanium-concentrate",
		icon = "__HARDmod__/placeholder-graphics/icons/plate/titanium-concentrate.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "raw-ores",
		order = "a[titanium-concentrate]",
		stack_size = 50
	},
  
    -- TITANIUM TETRACHLORIDE
  
  	{
		type = "fluid",
		name = "titanium-tetrachloride",
		default_temperature = 1000,
		heat_capacity = "1KJ",
		base_color = {r=0, g=0, b=0},
		flow_color = {r=0.5, g=1.0, b=1.0},
		max_temperature = -186,
		icon = "__HARDmod__/placeholder-graphics/icons/titanium-tetrachloride.png",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		order = "a[fluid]-b[liquid-air]"
	},
  
    {
  type = "recipe",
    name = "titanium-tetrachloride",
    category = "blast-furnace",
    energy_required = 35,
	subgroup = "molten-metals",
    enabled = "false",
    ingredients =
    {
		{type="item", name="titanium-concentrate", amount=10},
		{type="item", name="tf-coke-coal", amount=3},
		{type="fluid", name="chlorine", amount=2},
    },
	results = {
		{type="fluid", name="titanium-tetrachloride", amount = 10}
	},
  },
  
  -- PURE TITANIUM
  
	{
		type = "recipe",
		name = "pure-titanium",
		category = "electrolysis",
		energy_required = 30,
		enabled = "false",
		ingredients =
		{
		  {type="fluid", name="titanium-tetrachloride", amount=10},
		  {type="item", name="calcium-chloride", amount=5},
		  {type="fluid", name="argon-gas", amount=1},
		},
		results=
		{
			{type="fluid", name="pure-titanium", amount=10}
		},
	},
	
	{
		type = "fluid",
		name = "pure-titanium",
		default_temperature = 1000,
		heat_capacity = "1KJ",
		base_color = {r=0, g=0, b=0},
		flow_color = {r=0.5, g=1.0, b=1.0},
		max_temperature = -186,
		icon = "__HARDmod__/placeholder-graphics/icons/plate/pure-titanium.png",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		order = "a[fluid]-b[pure-titanium]"
	},
	
	{
		type = "fluid",
		name = "titanium-tetrachloride",
		default_temperature = 1000,
		heat_capacity = "1KJ",
		base_color = {r=0, g=0, b=0},
		flow_color = {r=0.5, g=1.0, b=1.0},
		max_temperature = -186,
		icon = "__HARDmod__/placeholder-graphics/icons/titanium-tetrachloride.png",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		order = "a[fluid]-b[liquid-air]"
	},
	
	-- TITANIUM PLATE
  
  {
    type = "recipe",
    name = "forge-titanium",
	ingredients= {{type="fluid", name="pure-titanium", amount=10}},
    enabled = "false",
    category = "forge",
    result_count = 10,
	energy_required= 35,
	result= "titanium-plate",
	subgroup = "raw-plates",
  },
  
    {
    type = "item",
    name = "titanium-plate",
    icon = "__HARDmod__/placeholder-graphics/icons/plate/titanium-plate.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-plates",
    order = "c-a-f[titanium-plate]",
    stack_size = 50
  },
	
	--------------- ALUMINIUM PROCESSING ---------------
	
	 -- BAUXITE CONCENTRATE
	{
		type = "recipe",
		name = "bauxite-concentrate",
		category = "froth-flotation",
		energy_required = 20,
		icon = "__HARDmod__/placeholder-graphics/icons/plate/bauxite-concentrate.png",
		subgroup = "raw-ores",
		ingredients= {
			{type="item",name="subsidiary-ore", amount=10},
			{type="fluid",name="water", amount=10},
			{type="fluid",name="compressed-air", amount=5}
		},
		results= {
			{type="item", name="bauxite-concentrate", amount=5},
			{type="item", name="tf-crushed-stone", amount=5},
		},
		enabled = "false"
	},

    {
    type = "item",
    name = "bauxite-concentrate",
    icon = "__HARDmod__/placeholder-graphics/icons/plate/bauxite-concentrate.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-ores",
    order = "f-a[bauxite-concentrate]",
    stack_size = 50
  },

  -- 	ALUMINATE
  
    {
    type = "fluid",
    name = "aluminate",
    default_temperature = 1200,
    heat_capacity = "0KJ",
    base_color = {r=210, g=210, b=210},
    flow_color = {r=210, g=210, b=210},
    max_temperature = 1200,
    icon="__HARDmod__/placeholder-graphics/icons/aluminate.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "m-c"
  },
  
  {
	    type = "recipe",
		name = "aluminate",
		ingredients= {
			{type="item",name="bauxite-concentrate", amount=5},
			{type="item",name="sodium-hydroxide", amount=10},
		},
		results= {
			{type="fluid", name="aluminate", amount=10},
		},
		energy_required= 10,
		enabled= "false",
		category= "pressure-vessel",
		subgroup="molten-metals"
	},

	-- MOLTEN ALUMINIUM HYDROXIDE
  
   {
    type = "fluid",
    name = "molten-aluminium-hydroxide",
    default_temperature = 1200,
    heat_capacity = "0KJ",
    base_color = {r=210, g=210, b=210},
    flow_color = {r=210, g=210, b=210},
    max_temperature = 1200,
    icon = "__HARDmod__/placeholder-graphics/icons/molten-aluminium-hydroxide.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "m-c"
  },

	{
	    type = "recipe",
		name = "molten-aluminium-hydroxide",
		results= {
			{type="fluid", name="molten-aluminium-hydroxide", amount=5},
			{type="fluid",name="red-mud", amount=1},
		},
		ingredients= {
			{type="fluid",name="aluminate", amount=5},
			{type="fluid",name="water", amount=10},
			{type="item",name="limestone", amount=1}
		},
		energy_required= 5,
		icon = "__HARDmod__/placeholder-graphics/icons/molten-aluminium-hydroxide.png",
		enabled= "false",
		category= "blast-furnace",
		subgroup="molten-metals"
	},
	
	-- MOLTEN ALUMINIUM OXIDE
	
	{
    type = "fluid",
    name = "molten-aluminium-oxide",
    default_temperature = 1200,
    heat_capacity = "0KJ",
    base_color = {r=210, g=210, b=210},
    flow_color = {r=210, g=210, b=210},
    max_temperature = 1200,
    icon="__HARDmod__/placeholder-graphics/icons/molten-aluminium-oxide.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "m-c"
  },
	
	{
	    type = "recipe",
		name = "molten-aluminium-oxide",
		results= {
			{type="fluid", name="molten-aluminium-oxide", amount=5},
			{type="fluid", name="water", amount=15},
		},
		ingredients= { {type="fluid",name="molten-aluminium-hydroxide", amount=10} },
		icon = "__HARDmod__/placeholder-graphics/icons/molten-aluminium-oxide.png",
		energy_required= 10,
		enabled= "false",
		category= "blast-furnace",
		subgroup="molten-metals"
	},
	
	
	-- MOLTEN ALUMINIUM
  
	{
    type = "fluid",
    name = "molten-aluminium",
    default_temperature = 1200,
    heat_capacity = "0KJ",
    base_color = {r=210, g=210, b=210},
    flow_color = {r=210, g=210, b=210},
    max_temperature = 1200,
    icon="__HARDmod__/placeholder-graphics/icons/molten-aluminium.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "m-c"
  },
  
  	{
	    type = "recipe",
		name = "molten-aluminium",
		results= {
			{type="fluid", name="molten-aluminium", amount=10},
			{type="fluid", name="co2-gas", amount=10},
		},
		ingredients= {
			{type="fluid",name="molten-aluminium-oxide", amount=10},
			{type="item",name="tf-coke-coal", amount=1},
			
		},
		icon = "__HARDmod__/placeholder-graphics/icons/molten-aluminium.png",
		energy_required= 10,
		enabled= "false",
		category= "electrolysis",
		subgroup="molten-metals"
	},
  
  -- RED MUD
  
  {
    type = "fluid",
    name = "red-mud",
    default_temperature = 1200,
    heat_capacity = "0KJ",
    base_color = {r=210, g=210, b=210},
    flow_color = {r=210, g=210, b=210},
    max_temperature = 1200,
    icon="__HARDmod__/placeholder-graphics/icons/red-mud.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "m-c"
	},
	
	-- ALUMINIUM PLATE
	
	  {
    type= "item",
    name= "aluminium-plate",
    order= "b-b",
    stack_size= 50,
    flags= { "goes-to-main-inventory" },
	icon="__HARDmod__/placeholder-graphics/icons/aluminium-plate.png",
	subgroup = "raw-plates",
  },

{
    type = "recipe",
    name = "aluminium-plate",
    result= "aluminium-plate",
    ingredients= { {type="fluid",name="molten-aluminium", amount=10}},
	result_count = 10,
	energy_required= 10,
    enabled= "false",
	category= "forge"
  },
	

		--------------- BRASS PROCESSING ---------------
	
-- BRASS PLATE

  {
    type = "item",
    name = "brass-plate",
    icon = "__HARDmod__/placeholder-graphics/icons/plate/brass-plate.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-plates",
    order = "c-b-a[brass-plate]",
    stack_size = 50
  },
  
  {
    type = "recipe",
    name = "brass-plate",
    enabled = false,
    category = "electric-furnace",
    energy_required = 20,
    ingredients =
    {
      {type="item", name="copper-plate", amount=7},
      {type="item", name="zinc-plate", amount=3},
    },
    results = 
    {
      {type="item", name="brass-plate", amount=10}
    }
  },

  -- BRASS BALL BEARING
  
  {
    type = "item",
    name = "brass-ball-bearing",
    icon = "__HARDmod__/placeholder-graphics/icons/brass-ball-bearing.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "intermediate-bearings",
    order = "b[brass-bearing]",
    stack_size = 200
  },
  
  {
    type = "recipe",
    name = "brass-ball-bearing",
    enabled = false,
    ingredients =
    {
      {"brass-plate", 1},
    },
    result = "brass-ball-bearing",
    result_count = 12
  },

  -- BRASS BEARING
  
  {
    type = "item",
    name = "brass-bearing",
    icon = "__HARDmod__/placeholder-graphics/icons/brass-bearing.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "intermediate-bearings",
    order = "b[brass-bearing]",
    stack_size = 50
  },
  
    {
    type = "recipe",
    name = "brass-bearing",
    enabled = false,
    ingredients =
    {
      {"brass-plate", 1},
      {"brass-ball-bearing", 16},
    },
    result = "brass-bearing",
    result_count = 2
  },
  
  -- COPPER TUNGESTEN ALLOY
  
  {
    type = "item",
    name = "copper-tungsten-plate",
    icon = "__HARDmod__/placeholder-graphics/icons/plate/copper-tungsten-plate.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-alloy",
    order = "c-b-d[copper-tungsten]",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "copper-tungsten-plate",
    enabled = false,
    category = "electric-furnace",
    energy_required = 5,
    ingredients =
    {
      {type="item", name="copper-plate", amount=3},
      {type="item", name="powdered-tungsten", amount=1},
    },
    results = 
    {
      {type="item", name="copper-tungsten-plate", amount=1}
    }
  },
  
  -- TUNGSTEN CARBIDE PLATE
  
  {
		type = "item",
		name = "tungsten-ore",
		icon = "__HARDmod__/placeholder-graphics/icons/tungsten-ore.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "raw-ores",
		order = "d[tungsten-ore]",
		stack_size = 50
	},
  
  {
    type = "item",
    name = "tungsten-carbide-plate",
    icon = "__HARDmod__/placeholder-graphics/icons/plate/tungsten-carbide-plate.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-alloy",
    order = "c-b-d[tungsten-carbide-plate]",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "tungsten-carbide-plate",
    enabled = false,
    category = "electric-furnace",
    energy_required = 20,
    ingredients =
    {
      {type="item", name="tf-charcoal", amount=1},
      {type="item", name="tungsten-oxide", amount=3},
    },
    results = 
    {
      {type="item", name="tungsten-carbide-plate", amount=4}
    }
  },
})

