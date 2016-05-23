-- SETTING VANILLA SUBGROUPS

data.raw["item"]["steam-engine"].subgroup = "power-source"
data.raw["item"]["boiler"].subgroup = "power-source"
data.raw["item"]["solar-panel"].subgroup = "power-source"
data.raw["item"]["offshore-pump"].subgroup = "power-source"
data.raw["item"]["basic-accumulator"].subgroup = "power-source"
data.raw["item"]["small-lamp"].subgroup = "power-lamp"
data.raw["item"]["pumpjack"].subgroup = "oil-refining"
data.raw["item"]["oil-refinery"].subgroup = "oil-refining"
data.raw["item"]["chemical-plant"].subgroup = "oil-refining"
data.raw.item["basic-beacon"].subgroup = "module-beacon"
data.raw["recipe"]["heavy-oil-cracking"].subgroup = "fluids-oil-processing"
data.raw["recipe"]["light-oil-cracking"].subgroup = "fluids-oil-processing"
data.raw["recipe"]["lubricant"].subgroup = "fluids-oil-processing"
data.raw["recipe"]["solid-fuel-from-heavy-oil"].subgroup = "power-fuels"
data.raw["recipe"]["solid-fuel-from-light-oil"].subgroup = "power-fuels"
data.raw["recipe"]["solid-fuel-from-petroleum-gas"].subgroup = "power-fuels"
data.raw["repair-tool"]["repair-pack"].subgroup = "gun"
data.raw["item"]["small-electric-pole"].subgroup = "power-lines"
data.raw["item"]["medium-electric-pole"].subgroup = "power-lines"
data.raw["item"]["big-electric-pole"].subgroup = "power-lines"
data.raw["item"]["substation"].subgroup = "power-lines"

-- SETTING VANILLA ITEMS TO BE CRAFTABLE IN WORKSHOP

data.raw["recipe"]["wood"].category = "workshop-crafting"
data.raw["recipe"]["iron-stick"].category = "workshop-crafting"
data.raw["recipe"]["wooden-chest"].category = "workshop-crafting"
data.raw["recipe"]["iron-axe"].category = "workshop-crafting"
data.raw["recipe"]["stone-furnace"].category = "workshop-crafting"
data.raw["recipe"]["iron-gear-wheel"].category = "workshop-crafting"
data.raw["recipe"]["iron-drill"].category = "workshop-crafting"
data.raw["recipe"]["pipe"].category = "workshop-crafting"
data.raw["recipe"]["basic-transport-belt"].category = "workshop-crafting"
data.raw["recipe"]["copper-cable"].category = "workshop-crafting"
data.raw["recipe"]["small-electric-pole"].category = "workshop-crafting"
data.raw["recipe"]["pistol"].category = "workshop-crafting"
data.raw["recipe"]["basic-bullet-magazine"].category = "workshop-crafting"
data.raw["recipe"]["basic-armor"].category = "workshop-crafting"
data.raw["recipe"]["pipe-to-ground"].category = "workshop-crafting"
data.raw["recipe"]["iron-chest"].category = "workshop-crafting"
	
data:extend(
{ 
	
	-- FLOW CONTROL PUMP

  {
    type = "recipe",
    name = "small-pump",
    enabled = "false",
    energy_required = 5,
    ingredients =
    {
      {"steel-plate", 2},
	  {"basic-pump", 1},
    },
    result = "small-pump"
  },
	
	-- INTERGALACTIC DATA DOWNLOADER
	
	{
    type = "item",
    name = "lab",
    icon = "__HARDmod__/placeholder-graphics/icons/lab.png",
    flags = {"goes-to-quickbar"},
    subgroup = "lab",
    order = "g[lab]",
    place_result = "lab",
    stack_size = 5
  },
	
	{
    type = "lab",
    name = "lab",
    icon = "__HARDmod__/placeholder-graphics/icons/lab.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "lab"},
    max_health = 150,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    light = {intensity = 0.75, size = 8},
    on_animation =
    {
      filename = "__HARDmod__/placeholder-graphics/entity/lab/lab.png",
      width = 153,
      height = 131,
      axially_symmetrical = false,
      apply_projection = false,
      frame_count = 64,
      line_length = 8,
	  animation_speed = 1,
      shift = {0.875, -0.35}
    },
    off_animation =
    {
      filename = "__HARDmod__/placeholder-graphics/entity/lab/lab.png",
      width = 153,
      height = 131,
      axially_symmetrical = false,
      apply_projection = false,
      frame_count = 1,
      line_length = 8,
	  animation_speed = 1,
      shift = {0.875, -0.35}
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/lab.ogg",
        volume = 0.7
      },
      apparent_volume = 1.5
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "60kW",
    inputs =
    {
      "science-pack-1",
      "science-pack-2",
      "science-pack-3",
      "alien-science-pack"
    },
    module_slots = 2
  },

	-- DATA DOWNLOAD PACKS
  
	 {
    type = "recipe",
    name = "science-pack-1",
    energy_required = 5,
    ingredients =
    {
      {"electronic-circuit", 1},
      {"iron-gear-wheel", 1}
    },
    result = "science-pack-1"
  },
  {
    type = "recipe",
    name = "science-pack-2",
    energy_required = 6,
    ingredients =
    {
      {"advanced-circuit",1},
	  {"steel-parts",1}
    },
    result = "science-pack-2"
  },
  
    {
    type = "recipe",
    name = "science-pack-3",
    energy_required = 8,
    ingredients =
    {
      {"processing-unit", 1},
      {"module-case-mk1", 1}
    },
    result = "science-pack-3"
  },
  
    {
    type = "recipe",
    name = "alien-science-pack",
    energy_required = 10,
    ingredients =
    {
      {"speed-module", 1},
      {"effectivity-module", 1},
	  {"productivity-module", 1},
    },
    result = "alien-science-pack"
  },
	
	-- TRANSPORT BELTS
	
	{
    type = "recipe",
    name = "basic-transport-belt",
	category = "workshop-crafting",
	energy_required = 5,
    ingredients =
    {
      {"basic-motor", 1},
	  {"iron-gear-wheel", 2},
      {"iron-plate", 5}
    },
    result = "basic-transport-belt",
    result_count = 5
  },
	
	{
    type = "recipe",
    name = "fast-transport-belt",
    enabled = "false",
    ingredients =
    {
      {"basic-transport-belt", 5},
	  {"steel-parts", 2},
	  {"brass-bearing", 5},
	  {"electric-motor", 1}
    },
    result = "fast-transport-belt",
	result_count = 5
  },
  
  {
    type = "recipe",
    name = "fast-transport-belt-to-ground",
    enabled = "false",
    ingredients =
    {
      {"basic-transport-belt-to-ground", 2},
	  {"steel-parts", 2},
	  {"brass-bearing", 5},
	  {"electric-motor", 1}
    },
    result = "fast-transport-belt-to-ground",
	result_count = 2
  },
  
  {
    type = "recipe",
    name = "fast-splitter",
    enabled = "false",
    energy_required = 2,
    ingredients =
    {
      {"basic-splitter", 1},
      {"steel-parts", 5},
      {"advanced-circuit", 10},
	  {"electric-motor", 1}
    },
    result = "fast-splitter"
  },
  
  {
    type = "recipe",
    name = "express-transport-belt",
    category = "crafting-with-fluid",
    enabled = "false",
    ingredients =
    {
      {"fast-transport-belt", 5},
      {"tungsten-parts", 2},
	  {"ceramic-bearing", 5},
	  {"large-electric-motor", 1},
      {type="fluid", name="lubricant", amount=2},
    },
    result = "express-transport-belt",
	result_count = 5
  },
  
  {
    type = "recipe",
    name = "express-transport-belt-to-ground",
    category = "crafting-with-fluid",
    enabled = "false",
    ingredients =
    {
      {"fast-transport-belt-to-ground", 2},
      {"tungsten-parts", 2},
	  {"ceramic-bearing", 5},
	  {"large-electric-motor", 1},
      {type="fluid", name="lubricant", amount=2},
    },
    result = "express-transport-belt-to-ground",
	result_count = 2
  },
  
  {
    type = "recipe",
    name = "express-splitter",
    category = "crafting-with-fluid",
    enabled = "false",
    energy_required = 2,
    ingredients =
    {
      {"fast-splitter", 1},
      {"tungsten-parts", 5},
      {"electronic-processing-board", 10},
	  {"large-electric-motor", 1},
      {type="fluid", name="lubricant", amount=8}
    },
    result = "express-splitter"
  },
	
	-- BURNER INSERTER
	
	{
    type = "recipe",
    name = "burner-inserter",
	category = "workshop-crafting",
    ingredients =
    {
	  {"basic-motor", 1},
      {"iron-gear-wheel", 2},
    },
    result = "burner-inserter"
    },
	
	-- BASIC INSERTER
	
	{
    type = "recipe",
    name = "basic-inserter",
	enabled = "true",
    ingredients =
    {
      {"small-electric-motor", 1},
      {"iron-gear-wheel", 2},
    },
    result = "basic-inserter"
  },
  
  -- FAST INSERTER
  
  {
    type = "recipe",
    name = "fast-inserter",
	enabled = "false",
    ingredients =
    {
      {"basic-inserter", 1},
      {"small-electric-motor", 1}
    },
    result = "fast-inserter"
  },
  
  -- SMART INSERTER
  
  {
    type = "recipe",
    name = "smart-inserter",
	enabled = "false",
    ingredients =
    {
      {"fast-inserter", 1},
      {"electronic-circuit", 5}
    },
    result = "smart-inserter"
  },
  
  -- BURNER MINING DRILL
	
	{
		type = "recipe",
		name = "burner-mining-drill",
		category = "workshop-crafting",
		enabled = "true",
		energy_required = 5,
		ingredients =
		{
		{"iron-plate", 5},
		{"basic-motor", 1},
		{"iron-drill", 1}
		},
		result = "burner-mining-drill"
	},
	
	-- STEAM ENGINE
	
	{
		type = "recipe",
		name = "steam-engine",
		category = "crafting",
		enabled = "true",
		energy_required = 10,
		ingredients =
		{
		{"iron-plate", 10},
		{"storage-tank-2", 4},
		{"pipe", 4},
		{"turbine", 2},
		},
		result = "steam-engine"
	},
	
	-- OFFSHORE PUMP
	
	{
    type = "recipe",
    name = "offshore-pump",
    ingredients =
    {
      {"iron-plate", 4},
      {"basic-motor", 1},
	  {"pipe", 2},
    },
    result = "offshore-pump"
  },
	
	-- BOILER
	
	{
		type = "recipe",
		name = "boiler",
		category = "crafting",
		enabled = "true",
		energy_required = 10,
		ingredients =
		{
		{"storage-tank-2", 1},
		{"stone-furnace", 1},
		{"pipe", 2}
		},
		result = "boiler"
	},
  
  -- RESERVOIR
  
  {
    type = "recipe",
    name = "storage-tank",
	category = "crafting",
	energy_required = 5,
    enabled = "false",
    ingredients =
    {
      {"storage-tank-2", 4},
	  {"pipe", 4},
    },
	result = "storage-tank"
},

	{
    type = "recipe",
    name = "assembling-machine-2",
	category = "crafting",
	energy_required = 10,
    enabled = "false",
    ingredients =
    {
	  {"iron-plate", 10},
	  {"basic-inserter", 4},
    },
	result = "assembling-machine-2"
},

{
    type = "recipe",
    name = "lab",
    energy_required = 5,
    ingredients =
    {
      {"iron-plate", 10},
	  {"electronic-circuit", 5},
    },
    result = "lab"
  },

 {
    type = "recipe",
    name = "basic-mining-drill",
    energy_required = 5,
	enabled = "true",
    ingredients =
    {
		{"iron-plate", 12},
		{"small-electric-motor", 2},
		{"iron-drill", 1}
    },
    result = "basic-mining-drill"
  },
  
  --WORKSHOP
	
	{
		type = "decorative",
		name = "workshop-placeable",
		flags = 
		{
			"placeable-neutral",
			"placeable-player",
		},
		icon = "__HARDmod__/placeholder-graphics/icons/workshop.png",
		selectable_in_game = false,
		render_layer = "decorative",
		order = "e[workshop]",
		pictures = 
		{
			{
				filename = "__HARDmod__/placeholder-graphics/entity/workshop/workshop.png",
				width = 212,
				height = 180,
			}
		}
	},
	
  {
    type = "assembling-machine",
    name = "workshop",
    icon = "__HARDmod__/placeholder-graphics/icons/workshop.png",
    flags = {"player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "workshop"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    selection_box = {{-2.5, -2.5}, {2.0, 2.5}},
    animation=
    {
      filename= "__HARDmod__/placeholder-graphics/entity/workshop/workshop-blank.png",
      priority= "medium",
      width= 1,
      height= 1,
      line_length= 5,
      frame_count= 1
    },
    crafting_categories = {"workshop-crafting"},
    crafting_speed = 0.25,
    energy_source =
    {
      type = "burner",
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions = 0.01,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 0.5,
          position = {0, 0},
          starting_vertical_speed = 0.05
        }
      }
    },
    energy_usage = "90kW",
    ingredient_count = 8,
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t1-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t1-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    }
  },
	
	  {
    type = "item",
    name = "workshop",
	subgroup = "alt-production",
	order = "a",
    icon = "__HARDmod__/placeholder-graphics/icons/workshop.png",
    flags = {"goes-to-quickbar"},
    order = "e[workshop]",
    place_result = "workshop-placeable",
    stack_size = 5
  },
	
	{
		type = "recipe",
		name = "workshop",
		category = "in-hand-crafting",
		enabled = "true",
		energy_required = 5,
		ingredients =
		{
		{"raw-wood", 5},
		{"stone", 2},
		{"iron-ore", 2},
		},
		result = "workshop"
	},
	
	{
    type = "mining-tool",
    name = "wooden-axe",
    icon = "__HARDmod__/placeholder-graphics/icons/wooden-axe.png",
    flags = {"goes-to-main-inventory"},
    action =
    {
      type="direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
            type = "damage",
            damage = { amount = 10 , type = "physical"}
        }
      }
    },
    durability = 2000,
    subgroup = "tool",
    order = "a",
    speed = 2,
    stack_size = 10
  },
	
	{
		type = "recipe",
		name = "wooden-axe",
		category = "in-hand-crafting","workshop-crafting",
		enabled = "true",
		ingredients =
		{
			{"raw-wood", 4},
		},
		result = "wooden-axe"
	},
})