data.raw["recipe"]["tf-crushed-stone"].category = crushing
data.raw["recipe"]["tf-crushed-stone"].energy_required = 10
data.raw["recipe"]["tf-crushed-stone"].subgroup = "raw-ores"
data.raw["recipe"]["tf-crushed-stone"].result_count = 1


data:extend({	
	
		--------------- STONE PROCESSING ---------------

	-- CRUSHED STONE

	{
		type = "item",
		name = "stone",
		icon = "__HARDmod__/placeholder-graphics/icons/stone.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "raw-ores",
		order = "d[stone]",
		stack_size = 50
	},
	
	{
		type = "item",
		name = "tf-crushed-stone",
		icon = "__base__/graphics/icons/stone.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "raw-ores",
		order = "d[stone]",
		stack_size = 50
	},
	
	
	-- STONE SORTER
	
	{
    type = "assembling-machine",
    name = "stone-sorter",
    icon = "__HARDmod__/placeholder-graphics/icons/stone-sorter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "stone-sorter"},
    max_health = 150,
    crafting_categories = {"stone-sorter"},
    crafting_speed = 1,
    ingredient_count = 2,
    module_slots = 1,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    corpse = "big-remnants",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
	working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
	fluid_boxes =
    {
      {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -2} }}
      },
      off_when_no_fluid_recipe = true,
	  {
        production_type = "output",
        --pipe_picture = assembler2pipepictures(),
        --pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0, 2} }}
      },
      off_when_no_fluid_recipe = true,	  
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.01 / 2.5
    },
    energy_usage = "50kW",
    animation =
    {
      filename = "__HARDmod__/placeholder-graphics/entity/stone-sorter/stone-sorter.png",
      priority = "high",
      width = 119,
      height = 99,
      frame_count = 48,
      line_length = 8,
      animation_speed = 0.64,
      shift = {0.21875, 0.05}
    },
  },
	
	{
    type = "item",
    name = "stone-sorter",
    icon = "__HARDmod__/placeholder-graphics/icons/stone-sorter.png",
    flags = {"goes-to-quickbar"},
    subgroup = "production-machine",
    order = "a[stone-sorter]",
    place_result = "stone-sorter",
    stack_size = 5
	},
	
	{
    type = "recipe",
    name = "stone-sorter",
	category = "crafting",
    enabled = "false",
	energy_required= 10,
    ingredients =
    {
      {"iron-plate", 5},
	  {"basic-inserter", 2},
    },
	result = "stone-sorter"
	},	
	
	-- QUARTZ
	
	{
		type = "item",
		name = "quartz",
		icon = "__HARDmod__/placeholder-graphics/icons/quartz.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "stone-sorter",
		order = "d[quartz]",
		stack_size = 50
	},
	
	{
		type = "recipe",
		name = "quartz",
		subgroup = "stone-sorter",
		icon = "__HARDmod__/placeholder-graphics/icons/quartz.png",
		category = "stone-sorter",
		enabled = "false",
		energy_required= 2,
		ingredients =
		{
			{type="item",name = "tf-crushed-stone", amount = 2},
		},
		results = {
			{type="item",name = "quartz", amount = 1},
		},
	},
	
	-- LIMESTONE
	
	{
		type = "item",
		name = "limestone",
		icon = "__HARDmod__/placeholder-graphics/icons/limestone.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "stone-sorter",
		order = "a[limestone]",
		stack_size = 50
	},
	
	{
		type = "recipe",
		name = "limestone",
		icon = "__HARDmod__/placeholder-graphics/icons/limestone.png",
		category = "stone-sorter",
		subgroup = "stone-sorter",
		enabled = "false",
		energy_required= 3,
		ingredients =
		{
			{type="item",name = "tf-crushed-stone", amount = 2},
		},
		results = {
			{type="item",name = "limestone", amount = 1},
		},
	},
	
	-- CLAY
	
	{
		type = "item",
		name = "clay",
		icon = "__HARDmod__/placeholder-graphics/icons/clay.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "stone-sorter",
		order = "a[clay]",
		stack_size = 50
	},
	
	{
		type = "recipe",
		name = "clay",
		icon = "__HARDmod__/placeholder-graphics/icons/clay.png",
		category = "stone-sorter",
		subgroup = "stone-sorter",
		enabled = "false",
		energy_required = 4,
		ingredients =
		{
			{type="item",name = "tf-crushed-stone", amount = 3},
		},
		results = {
			{type="item",name = "clay", amount = 1},
		},
	},
	
	-- SALT
	
	{
		type = "item",
		name = "salt",
		icon = "__HARDmod__/placeholder-graphics/icons/salt.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "stone-sorter",
		order = "a[salt]",
		stack_size = 50
	},
	
	{
		type = "recipe",
		name = "salt",
		icon = "__HARDmod__/placeholder-graphics/icons/salt.png",
		subgroup = "stone-sorter",
		category = "stone-sorter",
		enabled = "false",
		energy_required= 5,
		ingredients =
		{
			{type="item",name = "tf-crushed-stone", amount = 5},
		},
		results = {
			{type="item",name = "salt", amount = 1},
		},
	},
	
	-- PHOSPHATE ROCK
	
	{
		type = "item",
		name = "phosphate-rock",
		icon = "__HARDmod__/placeholder-graphics/icons/phosphate-rock.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "stone-sorter",
		order = "a[salt]",
		stack_size = 50
	},
	
	{
		type = "recipe",
		name = "phosphate-rock",
		subgroup = "stone-sorter",
		icon = "__HARDmod__/placeholder-graphics/icons/phosphate-rock.png",
		category = "stone-sorter",
		enabled = "false",
		energy_required= 5,
		ingredients =
		{
			{type="item",name = "tf-crushed-stone", amount = 3},
		},
		results = {
			{type="item",name = "phosphate-rock", amount = 1},
		},
	},
	
	-- CEMENT
	
	{
	type = "item",
    name = "cement",
    icon = "__HARDmod__/placeholder-graphics/icons/cement.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "stone-sorter",
    order = "a[cement]",
    stack_size = 50
	},
	
	{
    type = "recipe",
    name = "cement",
	category = "chemical-furnace",
    enabled = "false",
	energy_required= 2,
    ingredients =
    {
		{"limestone", 2},
		{"clay", 1},
		{"tf-charcoal", 1},
		{type="fluid", name="water", amount=1}
    },
	result = "cement"
	},
	
	-- CRUCIBLE
	
	{
	type = "item",
    name = "crucible",
    icon = "__HARDmod__/placeholder-graphics/icons/crucible.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "intermediate-product",
    order = "a[clay]",
    stack_size = 50
	},
	
	{
    type = "recipe",
    name = "crucible",
	category = "crafting",
    enabled = "false",
	energy_required= 3,
    ingredients =
    {
		{"clay",3}
    },
	result = "crucible"
	},
	
	--REINFORCED CONCRETE BLOCK
	
	{
	type = "item",
    name = "stone-brick",
    icon = "__HARDmod__/placeholder-graphics/icons/reinforced-concrete-block.png",
    flags = {"goes-to-quickbar"},
    subgroup = "intermediate-product",
    order = "a[stone-brick]",
    stack_size = 50
	},
	
	{
    type = "recipe",
    name = "stone-brick",
	category = "chemical-furnace",
    enabled = false,
	energy_required= 2,
    ingredients =
    {
		{"tf-crushed-stone", 3},
		{"cement", 1},
		{"iron-stick", 2},
		{type="fluid", name="water", amount=1}
    },
	result = "stone-brick"
	}
  })