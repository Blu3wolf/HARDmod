data:extend(
{

-- COMPRESSED AIR

  {
    type = "fluid",
    name = "compressed-air",
    default_temperature = 100,
    max_temperature = 100,
    heat_capacity = "1KJ",
    base_color = {r=0, g=0, b=0},
    flow_color = {r=0.5, g=1.0, b=1.0},
    icon = "__HARDmod__/graphics/icons/compressed-air.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
	subgroup = "gasses",
	order = "a",
    order = "a[fluid]-g[compressed-air]",
  },
  
  {
    type = "recipe",
    name = "compressed-air",
    category = "air-pump",
    enabled = false,
    energy_required = 5,
	subgroup = "gasses",
	order = "a",
    ingredients =
    {
    },
    results = 
    {
      {type="fluid", name="compressed-air", amount=1}
    },
    icon = "__HARDmod__/graphics/icons/compressed-air.png",
    order = "b[fluid-chemistry]-b[compressed-air]"
  },
  
  	-- LIQUID AIR
	
	{
		type = "fluid",
		name = "liquid-air",
		default_temperature = -200,
		heat_capacity = "1KJ",
		base_color = {r=0, g=0, b=0},
		flow_color = {r=1.0, g=1.0, b=1.0},
		max_temperature = -196,
		icon = "__HARDmod__/graphics/icons/liquid-air.png",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		order = "a[fluid]-b[liquid-air]"
	},

  -- LIQUID HYDROGEN
  
{
    type = "fluid",
    name = "liquid-hydrogen",
    default_temperature = -260,
    heat_capacity = "1KJ",
    base_color = {r=0.7, g=0.7, b=0.7},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__HARDmod__/graphics/icons/liquid-hydrogen.png",
--    pressure_to_speed_ratio = 0.6,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-g[hydrogen]"
  },
  
  -- HYDROGEN GAS
  
    {
    type = "fluid",
    name = "hydrogen-gas",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.7, g=0.7, b=0.7},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__HARDmod__/graphics/icons/hydrogen-gas.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-g[hydrogen]"
  },
  
  {
    type = "recipe",
    name = "liquid-hydrogen-to-hydrogen-gas",
    category = "evaporator-crafting",
	subgroup = "liquid-to-gas",
	order = "c",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
		{type="fluid", name="liquid-hydrogen", amount=1}
    },
    results = 
    {
      {type="fluid", name="hydrogen-gas", amount=1}
    },
    icon = "__HARDmod__/graphics/icons/hydrogen-gas.png",
    order = "b[fluid-chemistry]-b[hydrogen-gas]"
  },
  
  {
    type = "recipe",
    name = "hydrogen-gas-to-atmosphere",
    category = "evaporator-crafting",
	subgroup = "evaporation",
	order = "c",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
		{type="fluid", name="hydrogen-gas", amount=10}
    },
    results = 
    {
       {type="fluid", name="hydrogen-gas", amount=1}
    },
    icon = "__HARDmod__/graphics/icons/hydrogen-gas-to-atmosphere.png",
    order = "b[fluid-chemistry]-b"
  },

  -- LIQUID OXYGEN
  
  {
    type = "fluid",
    name = "liquid-oxygen",
    default_temperature = -200,
    heat_capacity = "1KJ",
    base_color = {r=0.7, g=0.7, b=0.7},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__HARDmod__/graphics/icons/liquid-oxygen.png",
--    pressure_to_speed_ratio = 0.6,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-g[oxygen]"
  },
  
  {
		type = "recipe",
		name = "oxygen-gas-to-liquid-oxygen",
		category = "heat-exchanger-crafting",
		subgroup = "liquid-to-gas",
		order = "e",
		energy_required = 10,
		icon = "__HARDmod__/graphics/icons/oxygen-gas-to-liquid-oxygen.png",
		ingredients =
		{
		  {type="fluid", name="oxygen-gas", amount=10},
		},
		results=
		{
		       {type="fluid", name="liquid-oxygen", amount=10}
		},
		enabled = "false"
	},
  
  -- OXYGEN GAS
  
  {
    type = "fluid",
    name = "oxygen-gas",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.7, g=0, b=0},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__HARDmod__/graphics/icons/oxygen-gas.png",
--    pressure_to_speed_ratio = 0.6,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-g[oxygen]"
  },
  
  {
		type = "recipe",
		name = "liquid-oxygen-to-oxygen-gas",
		category = "evaporator-crafting",
		subgroup = "liquid-to-gas",
	order = "b",
		energy_required = 1,
		icon = "__HARDmod__/graphics/icons/oxygen-gas.png",
		ingredients =
		{
		  {type="fluid", name="liquid-oxygen", amount=1},
		},
		results=
		{
			{type="fluid", name="oxygen-gas", amount=1}
		},
		enabled = "false"
	},
	
	{
		type = "recipe",
		name = "oxygen-gas-to-atmosphere",
		category = "evaporator-crafting",
		order = "b",
			subgroup = "evaporation",
		energy_required = 10,
		icon = "__HARDmod__/graphics/icons/oxygen-gas-to-atmosphere.png",
		ingredients =
		{
		  {type="fluid", name="oxygen-gas", amount=10},
		},
		results=
		{
		       {type="fluid", name="oxygen-gas", amount=1}
		},
		enabled = "false"
	},
	
	-- CO2 GAS
	
	{
		type = "fluid",
		name = "co2-gas",
		default_temperature = 15,
		heat_capacity = "1KJ",
		base_color = {r=0, g=0, b=0},
		flow_color = {r=1.0, g=1.0, b=1.0},
		max_temperature = -196,
		icon = "__HARDmod__/graphics/icons/co2-gas.png",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		order = "a[fluid]-b[co2-gas]"
	},
	
	{
		type = "recipe",
		name = "dry-ice-to-co2-gas",
		category = "evaporator-crafting",
		subgroup = "gasses",
	order = "d",
		energy_required = 1,
		icon = "__HARDmod__/graphics/icons/dry-ice-to-co2-gas.png",
		ingredients =
		{
		  {type="item", name="dry-ice", amount=1},
		},
		results=
		{
			{type="fluid", name="co2-gas", amount=1}
		},
		enabled = "false"
	},
	
	{
		type = "recipe",
		name = "co2-gas-to-atmosphere",
		category = "evaporator-crafting",
		order = "d",
			subgroup = "evaporation",
		energy_required = 10,
		icon = "__HARDmod__/graphics/icons/co2-gas-to-atmosphere.png",
		ingredients =
		{
		  {type="fluid", name="co2-gas", amount=10},
		},
		results=
		{
		       {type="fluid", name="co2-gas", amount=1}
		},
		enabled = "false"
	},
	
	-- DRY ICE
	
	{
    type = "item",
    name = "dry-ice",
    icon = "__HARDmod__/graphics/icons/dry-ice.png",
    flags = {"goes-to-quickbar"},
    subgroup = "raw-material",
    order = "a[dry-ice]",
    stack_size = 50
	},
  
  -- LIQUID NITROGEN
  
  {
    type = "fluid",
    name = "liquid-nitrogen",
    default_temperature = -200,
    heat_capacity = "1KJ",
    base_color = {r=0.7, g=0.7, b=0.7},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__HARDmod__/graphics/icons/liquid-nitrogen.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-g[nitrogen]"
  },
  
  -- NITROGEN GAS
  
  {
    type = "fluid",
    name = "nitrogen-gas",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.0, g=0.0, b=1.0},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__HARDmod__/graphics/icons/nitrogen-gas.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-g[nitrogen-gas]"
  },
  
  
  
  {
		type = "recipe",
		name = "liquid-nitrogen-to-nitrogen-gas",
		category = "evaporator-crafting",
		subgroup = "liquid-to-gas",
	order = "a",
		energy_required = 1,
		icon = "__HARDmod__/graphics/icons/nitrogen-gas.png",
		ingredients =
		{
		  {type="fluid", name="liquid-nitrogen", amount=1},
		},
		results=
		{
			{type="fluid", name="nitrogen-gas", amount=1}
		},
		enabled = "false"
	},
	
	{
		type = "recipe",
		name = "nitrogen-gas-to-atmosphere",
		category = "evaporator-crafting",
			subgroup = "evaporation",
			order = "a",
		energy_required = 10,
		icon = "__HARDmod__/graphics/icons/nitrogen-gas-to-atmosphere.png",
		ingredients =
		{
		  {type="fluid", name="nitrogen-gas", amount=10},
		},
		results=
		{
		       {type="fluid", name="nitrogen-gas", amount=1}
		},
		enabled = "false"
	},
	
	-- LIQUID ARGON
	
	{
    type = "fluid",
    name = "liquid-argon",
    default_temperature = -200,
    heat_capacity = "1KJ",
    base_color = {r=0.7, g=0.7, b=0.7},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__HARDmod__/graphics/icons/liquid-argon.png",
--    pressure_to_speed_ratio = 0.6,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-g[argon]"
  },
  
  -- ARGON GAS
  
  {
    type = "fluid",
    name = "argon-gas",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.0, g=0.0, b=1.0},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__HARDmod__/graphics/icons/argon-gas.png",
--    pressure_to_speed_ratio = 0.6,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-g[argon-gas]"
  },
  
  {
		type = "recipe",
		name = "liquid-argon-to-argon-gas",
		category = "evaporator-crafting",
		subgroup = "liquid-to-gas",
	order = "e",
		energy_required = 1,
		icon = "__HARDmod__/graphics/icons/argon-gas.png",
		ingredients =
		{
		  {type="fluid", name="liquid-argon", amount=1},
		},
		results=
		{
			{type="fluid", name="argon-gas", amount=1}
		},
		enabled = "false"
	},
	
	{
		type = "recipe",
		name = "argon-gas-to-atmosphere",
		category = "evaporator-crafting",
			subgroup = "evaporation",
			order = "e",
		energy_required = 10,
		icon = "__HARDmod__/graphics/icons/argon-gas-to-atmosphere.png",
		ingredients =
		{
		  {type="fluid", name="argon-gas", amount=10},
		},
		results=
		{
		       {type="fluid", name="argon-gas", amount=1}
		},
		enabled = "false"
	},
	
	
  
  -- WATER EVAPORATION
  
  {
		type = "recipe",
		name = "water-evaporation",
			subgroup = "evaporation",
			order = "z",
		category = "evaporator-crafting",
		energy_required = 10,
		icon = "__HARDmod__/graphics/icons/water-evaporation.png",
		ingredients =
		{
		  {type="fluid", name="water", amount=10},
		},
		results=
		{
			{type="fluid", name="water", amount=1}
		},
		enabled = "false"
	},
	
	-- AIR LIQUIFACTION
	
	{
    type = "recipe",
    name = "air-liquefaction",
    category = "heat-exchanger-crafting",
    enabled = "false",
    energy_required = 60,
	subgroup = "gasses",
	order = "b",
    ingredients =
    {
      {type="fluid", name="compressed-air", amount=100}
    },
    results=
    {
      {type="fluid", name="liquid-air", amount = 96},
	  {type="fluid", name="water", amount = 3},
	  {type="item", name="dry-ice", amount = 1},
    },
    subgroup = "gasses",
    icon = "__HARDmod__/graphics/icons/liquid-air.png",
    order = "c"
  },
  
  -- AIR SEPARATION
  
  {
    type = "recipe",
    name = "air-separation",
    category = "asu-crafting",
    enabled = "false",
    energy_required = 60,
	subgroup = "gasses",
	order = "b",
    ingredients =
    {
      {type="fluid", name="liquid-air", amount=100}
    },
    results=
    {
      {type="fluid", name="nitrogen-gas", amount=78},
	  {type="fluid", name="oxygen-gas", amount=21},
	  {type="fluid", name="argon-gas", amount=1},
    },
    subgroup = "gasses",
    icon = "__HARDmod__/graphics/icons/air-separation.png",
    order = "c"
  },
  
-- HEAT EXCHANGER

{
    type = "assembling-machine",
    name = "heat-exchanger",
    icon = "__HARDmod__/graphics/icons/heat-exchanger.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "heat-exchanger"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    module_slots = 2,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"heat-exchanger-crafting"},
    crafting_speed = 1,
    has_backer_name = true,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 3.5
    },
    energy_usage = "500kW",
    ingredient_count = 4,
    animation =
    {
      north =
      {
        filename = "__HARDmod__/graphics/entity/heat-exchanger/heat-exchanger.png",
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      },
      east =
      {
        filename = "__HARDmod__/graphics/entity/heat-exchanger/heat-exchanger.png",
        x = 337,
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      },
      south =
      {
        filename = "__HARDmod__/graphics/entity/heat-exchanger/heat-exchanger.png",
        x = 674,
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      },
      west =
      {
        filename = "__HARDmod__/graphics/entity/heat-exchanger/heat-exchanger.png",
        x = 1011,
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      }
    },
    working_visualisations =
    {
      {
        north_position = {1.03125, -1.55},
        east_position = {-1.65625, -1.3},
        south_position = {-1.875, -2.0},
        west_position = {1.8437, -1.2},
        animation =
        {
          filename = "__HARDmod__/placeholder-graphics/entity/air-separation-unit/air-separation-steam.png",
          frame_count = 29,
          width = 16,
          height = 35,
          scale = 1.5,
          shift = {0, -0.5625},
          run_mode="backward"
        },
        light = {intensity = 0.4, size = 6}
      }
    },
    working_sound =
    {
      sound = { filename = "__base__/sound/oil-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-2, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {0, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {2, -3} }}
      }
    },
    pipe_covers = pipecoverspictures()
  },



{
    type = "item",
    name = "heat-exchanger",
    icon = "__HARDmod__/graphics/icons/heat-exchanger.png",
    flags = {"goes-to-quickbar"},
    subgroup = "air",
    order = "b[assembling-machine-2]",
    place_result = "heat-exchanger",
    stack_size = 1
  },

 {
    type = "recipe",
    name = "heat-exchanger",
    enabled = "false",
	energy_required = 30,
    ingredients =
    {
		{"steel-plate",40},
		{"electric-motor",10},
		{"steel-parts",10},
		{"turbine",5},
		{"storage-tank-2",10},
    },
    result = "heat-exchanger"
  },
  
  -- AIR SEPARATION UNIT
  
  {
    type = "assembling-machine",
    name = "air-separation-unit",
    icon = "__HARDmod__/palceholder-graphics/icons/air-separation-unit.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "air-separation-unit"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    module_slots = 2,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"asu-crafting"},
    crafting_speed = 1,
    has_backer_name = true,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 3.5
    },
    energy_usage = "400kW",
    ingredient_count = 4,
    animation =
    {
      north =
      {
        filename = "__HARDmod__/placeholder-graphics/entity/air-separation-unit/air-separation-unit.png",
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      },
      east =
      {
        filename = "__HARDmod__/placeholder-graphics/entity/air-separation-unit/air-separation-unit.png",
        x = 337,
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      },
      south =
      {
        filename = "__HARDmod__/placeholder-graphics/entity/air-separation-unit/air-separation-unit.png",
        x = 674,
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      },
      west =
      {
        filename = "__HARDmod__/placeholder-graphics/entity/air-separation-unit/air-separation-unit.png",
        x = 1011,
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      }
    },
    working_visualisations =
    {
      {
        north_position = {1.03125, -1.55},
        east_position = {-1.65625, -1.3},
        south_position = {-1.875, -2.0},
        west_position = {1.8437, -1.2},
        animation =
        {
          filename = "__HARDmod__/placeholder-graphics/entity/air-separation-unit/air-separation-steam.png",
          frame_count = 29,
          width = 16,
          height = 35,
          scale = 1.5,
          shift = {0, -0.5625},
          run_mode="backward"
        },
        light = {intensity = 0.4, size = 6}
      }
    },
    working_sound =
    {
      sound = { filename = "__base__/sound/oil-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-2, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {0, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {2, -3} }}
      }
    },
    pipe_covers = pipecoverspictures()
  },

{
    type = "item",
    name = "air-separation-unit",
    icon = "__HARDmod__/placeholder-graphics/icons/air-separation-unit.png",
    flags = {"goes-to-quickbar"},
    subgroup = "air",
    order = "b[assembling-machine-2]",
    place_result = "air-separation-unit",
    stack_size = 1
  },

 {
    type = "recipe",
    name = "air-separation-unit",
    enabled = "false",
	energy_required = 30,
    ingredients =
    {
		{"steel-plate",40},
		{"steel-parts",20},
		{"copper-cable",40},
		{"pipe",20},		
		{"storage-tank-2",10},
    },
    result = "air-separation-unit"
  },
  
  -- EVAPORATOR
  
  {
    type = "assembling-machine",
    name = "evaporator",
    icon = "__HARDmod__/graphics/icons/evaporator.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "evaporator"},
    max_health = 250,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -2} }}
      },
      {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0, 2} }}
      },
      off_when_no_fluid_recipe = true
    },
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    animation =
    {
      north =
      {
        filename = "__HARDmod__/graphics/entity/evaporator/evaporator.png",
        width = 156,
        height = 141,
        frame_count = 1,
        shift = {0.5, -0.078125}
      },
      west =
      {
        filename = "__HARDmod__/graphics/entity/evaporator/evaporator.png",
        x = 156,
        width = 156,
        height = 141,
        frame_count = 1,
        shift = {0.5, -0.078125}
      },
      south =
      {
        filename = "__HARDmod__/graphics/entity/evaporator/evaporator.png",
        x = 312,
        width = 156,
        height = 141,
        frame_count = 1,
        shift = {0.5, -0.078125}
      },
      east =
      {
        filename = "__HARDmod__/graphics/entity/evaporator/evaporator.png",
        x = 468,
        width = 156,
        height = 141,
        frame_count = 1,
        shift = {0.5, -0.078125}
      }
    },
    working_visualisations =
    {
      {
        north_position = {0.94, -0.73},
        west_position = {-0.3, 0.02},
        south_position = {-0.97, -1.47},
        east_position = {0.05, -1.46},
        animation =
        {
          filename = "__HARDmod__/graphics/entity/evaporator/boiling-white-patch.png",
          frame_count = 35,
          width = 17,
          height = 12,
          animation_speed = 0.15
        }
      },
      {
        north_position = {1.4, -0.23},
        west_position = {-0.3, 0.55},
        south_position = {-1, -1},
        east_position = {0.05, -0.96},
        north_animation =
        {
          filename = "__HARDmod__/graphics/entity/evaporator/boiling-window-white-patch.png",
          frame_count = 1,
          width = 21,
          height = 10
        },
        west_animation =
        {
          filename = "__HARDmod__/graphics/entity/evaporator/boiling-window-white-patch.png",
          x = 21,
          frame_count = 1,
          width = 21,
          height = 10
        },
        south_animation =
        {
          filename = "__HARDmod__/graphics/entity/evaporator/boiling-window-white-patch.png",
          x = 42,
          frame_count = 1,
          width = 21,
          height = 10
        }
      }
    },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/chemical-plant.ogg",
          volume = 0.8
        }
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    crafting_categories = {"evaporator-crafting"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.04 / 2.5
    },
    energy_usage = "200kW",
    ingredient_count = 4,
    module_slots = 2,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  },



{
    type = "item",
    name = "evaporator",
    icon = "__HARDmod__/graphics/icons/evaporator.png",
    flags = {"goes-to-quickbar"},
    subgroup = "air",
    order = "b[evaporator]",
    place_result = "evaporator",
    stack_size = 3
  },

 {
    type = "recipe",
    name = "evaporator",
    enabled = "false",
	energy_required = 10,
    ingredients =
    {
		{"iron-plate", 5},
		{"iron-gear-wheel",5},
		{"pipe", 10},
		{"air-compressor", 1},
    },
    result = "evaporator"
  },
  
  })