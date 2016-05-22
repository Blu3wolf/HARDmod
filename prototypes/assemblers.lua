data.raw["assembling-machine"]["assembling-machine-2"].ingredient_count = 8
data.raw["assembling-machine"]["assembling-machine-3"].ingredient_count = 8
data.raw["assembling-machine"]["assembling-machine-2"].crafting_categories = {"crafting","workshop-crafting","crafting-with-fluid","advanced-crafting"}
data.raw["assembling-machine"]["assembling-machine-3"].crafting_categories = {"crafting","workshop-crafting","crafting-with-fluid","advanced-crafting"}

data:extend(
{
	
	
	 -- ELECTRIC FURNACE
  
  {
    type = "assembling-machine",
    name = "electric-furnace-2",
    icon = "__base__/graphics/icons/electric-furnace.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "electric-furnace-2"},
    max_health = 150,
    corpse = "big-remnants",
    dying_explosion = "big-explosion",
    light = {intensity = 1, size = 10},
	ingredient_count = 6,
    resistances = 
    {
      {
        type = "fire",
        percent = 80
      }
    },
    fluid_boxes =
    {
      {
        production_type = "output",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {0, 2} }}
     },	
	off_when_no_fluid_recipe = true
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    module_slots = 2,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"electric-furnace"},
    result_inventory_size = 1,
    crafting_speed = 2,
    energy_usage = "100kW",
    source_inventory_size = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.005
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-furnace.ogg",
        volume = 0.7
      },
      apparent_volume = 1.5
    },
    animation =
    {
      filename = "__base__/graphics/entity/electric-furnace/electric-furnace-base.png",
      priority = "high",
      width = 129,
      height = 100,
      frame_count = 1,
      shift = {0.421875, 0}
    },
    working_visualisations =
    {
      {
        animation =
        {
          filename = "__base__/graphics/entity/electric-furnace/electric-furnace-heater.png",
          priority = "high",
          width = 25,
          height = 15,
          frame_count = 12,
          animation_speed = 0.5,
          shift = {0.015625, 0.890625}
        },
        light = {intensity = 0.4, size = 6, shift = {0.0, 1.0}}
      },
      {
        animation =
        {
          filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
          priority = "high",
          width = 19,
          height = 13,
          frame_count = 4,
          animation_speed = 0.5,
          shift = {-0.671875, -0.640625}
        }
      },
      {
        animation =
        {
          filename = "__base__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
          priority = "high",
          width = 12,
          height = 9,
          frame_count = 4,
          animation_speed = 0.5,
          shift = {0.0625, -1.234375}
        }
      }
    },
  },

{
    type = "item",
    name = "electric-furnace-2",
    icon = "__base__/graphics/icons/electric-furnace.png",
    flags = {"goes-to-quickbar"},
    subgroup = "smelting-machine",
    order = "c[electric-furnace]",
    place_result = "electric-furnace-2",
    stack_size = 3
  },
  
  {
    type = "recipe",
    name = "electric-furnace-2",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
	  {"steel-plate", 20},
      {"stone-brick", 10},
	  {"copper-cable", 10},
      {"crucible", 2},
    },
    result = "electric-furnace-2"
  },
	
	-- FORGE
	
  	{
    type= "assembling-machine",
    name= "forge",
    flags= {"placeable-neutral", "player-creation"},
    collision_box= {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box= {{-1.5, -1.5}, {1.5, 1.5}},
    minable= { hardness= 0.2, mining_time= 0.5, result= "forge" },
    crafting_categories= { "forge" },
    max_health= 150,
    ingredient_count= 1,
    energy_usage= "200kW",
    crafting_speed= 1,
	icon="__NARMod__/graphics/icons/forge.png",
    energy_source=
    {
      type= "electric",
      usage_priority = "secondary-input",
    },
	animation=
    {
      filename= "__NARMod__/graphics/entity/forge/forge2.png",
      priority= "medium",
      width= 113,
      height= 91,
      line_length= 11,
      frame_count= 33,
      shift = {0.2, 0}
    },
	fluid_boxes ={
      {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-2, 0} }}
      }, 
	  {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {2, 0} }}
      }, 
      {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_level = -1,
        pipe_connections = {{ type="input", position = {0,-2} }}
      }, 
	  {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_level = -1,
        pipe_connections = {{ type="input", position = {0,2} }}
      }, 
	 },
  },
  
	{
		type = "recipe",
		name =  "forge",
		result= "forge",
		ingredients= {
			{"iron-plate",20},
			{"stone-brick", 10},
			{"pipe", 5},
			{"air-compressor", 1},
		},
		energy_required= 15,
		enabled= "false",
		category= "crafting"
	},
  
	{
	type= "item",
	name= "forge",
	order = "z-z-f",
	place_result= "forge",
	stack_size= 1,
	flags= { "goes-to-quickbar" },
	icon="__NARMod__/graphics/icons/forge.png",
	subgroup = "smelting-machine",
	},
	
	-- LONG HANDED BURNER INSERTER
	
	{
    type = "recipe",
    name = "long-handed-burner-inserter",
    enabled = "true",
    ingredients =
    {
      {"iron-gear-wheel", 1},
      {"iron-plate", 1},
      {"burner-inserter", 1}
    },
    result = "long-handed-burner-inserter"
  },
	
	{
    type = "item",
    name = "long-handed-burner-inserter",
    icon = "__NARMod__/graphics/icons/long-handed-burner-inserter.png",
    flags = {"goes-to-quickbar"},
    subgroup = "inserter",
    order = "c[long-handed-burner-inserter]",
    place_result = "long-handed-burner-inserter",
    stack_size = 50
  },
  
	{
    type = "inserter",
    name = "long-handed-burner-inserter",
    icon = "__NARMod__/graphics/icons/long-handed-burner-inserter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "long-handed-burner-inserter"},
    max_health = 40,
    corpse = "small-remnants",
    resistances = 
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    pickup_position = {0, -2},
    insert_position = {0, 2.2},
    energy_per_movement = 5000,
    energy_per_rotation = 5000,
    rotation_speed = 0.02,
    hand_size = 1.5,
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
    extension_speed = 0.04,
    fast_replaceable_group = "inserter",
    working_sound =
    {
      match_progress_to_activity = true,
      sound =
      {
        {
          filename = "__base__/sound/inserter-long-handed-1.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-long-handed-2.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-long-handed-3.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-long-handed-4.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-long-handed-5.ogg",
          volume = 0.75
        }
      }
    },
    hand_base_picture =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_open_picture =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_base_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_open_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    platform_picture =
    {
      sheet =
      {
        filename = "__base__/graphics/entity/long-handed-inserter/long-handed-inserter-platform.png",
        priority = "extra-high",
        width = 46,
        height = 46
      }
    }
  },
  
  -- HERMETICALLY SEALED ASSEMBLER
  
	{
    type = "recipe",
    name = "hermetically-sealed-assembler",
    enabled = "false",
	energy_required = 10,
    ingredients =
    {
      {"assembling-machine-2", 1},
	  {"air-compressor", 1},
	  {"steel-plate", 5},
	  {"arc-welding-electrode", 5},
	  {"powdered-silicon", 5}
    },
    result = "hermetically-sealed-assembler"
  },
  
    {
    type = "item",
    name = "hermetically-sealed-assembler",
    icon = "__NARMod__/graphics/icons/hermetically-sealed-assembler.png",
    flags = {"goes-to-quickbar"},
    subgroup = "production-machine",
    order = "b[assembling-machine-2]",
    place_result = "hermetically-sealed-assembler",
    stack_size = 3
  },
	
	{
    type = "assembling-machine",
    name = "hermetically-sealed-assembler",
    icon = "__NARMod__/graphics/icons/hermetically-sealed-assembler.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "hermetically-sealed-assembler"},
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
        pipe_connections = {{ type="input", position = {-1, -2} }}
      },
	  {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -2} }}
      },
	  {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, -2} }}
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
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    animation =
    {
      filename = "__NARMod__/graphics/entity/hermetically-sealed-assembler/hermetically-sealed-assembler.png",
      priority = "high",
      width = 142,
      height = 113,
      frame_count = 1,
      line_length = 1,
	  shift = {0.84, -0.09}
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t2-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t2-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    crafting_categories = {"clean-room-crafting"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.04 / 2.5
    },
    energy_usage = "500kW",
    ingredient_count = 8,
    module_slots = 2,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  },
  
  -- AIR COMPRESSOR
  
  {
    type = "assembling-machine",
    name = "air-compressor",
    icon = "__NARMod__/graphics/icons/air-pump.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "air-compressor"},
    max_health = 150,
    crafting_categories = {"air-pump"},
    crafting_speed = 1,
    ingredient_count = 2,
    module_slots = 1,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    corpse = "small-remnants",
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
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0.5, -1.5} }}
      },
      off_when_no_fluid_recipe = false
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.9, -0.9}, {0.9, 0.9}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.01 / 2.5
    },
    energy_usage = "50kW",
    animation =
    {
      north =
      {
        filename = "__NARMod__/graphics/entity/air-pump/air-pump.png",
        width = 80,
        height = 80,
        frame_count = 8,
        animation_speed = 0.5
      },
      east =
      {
        filename = "__NARMod__/graphics/entity/air-pump/air-pump.png",
        y = 80,
        width = 80,
        height = 80,
        frame_count = 8,
        animation_speed = 0.5
      },
      south =
      {
        filename = "__NARMod__/graphics/entity/air-pump/air-pump.png",
        y = 160,
        width = 80,
        height = 80,
        frame_count = 8,
        animation_speed = 0.5
      },
      west =
      {
        filename = "__NARMod__/graphics/entity/air-pump/air-pump.png",
        y = 240,
        width = 80,
        height = 80,
        frame_count = 8,
        animation_speed = 0.5
      }
    }
  },
  
  {
    type = "item",
    name = "air-compressor",
    icon = "__NARMod__/graphics/icons/air-pump.png",
    flags = {"goes-to-quickbar"},
    subgroup = "air",
    order = "e[air-pump]",
    place_result = "air-compressor",
    stack_size = 20
  },
  
  {
    type = "recipe",
    name = "air-compressor",
    energy_required = 10,
    enabled = "false",
	category = "crafting",
    ingredients =
    {
	  {"iron-plate", 10},
	  {"small-electric-motor", 1},
      {"rotor-blade", 2},
	  {"storage-tank-2", 2},
    },
    result = "air-compressor"
  },
  
  -- BURNER ASSEMBLER
  
  	{
    type = "item",
    name = "assembling-machine-1",
    icon = "__base__/graphics/icons/assembling-machine-1.png",
    flags = {"goes-to-quickbar"},
    subgroup = "production-machine",
    order = "a[assembling-machine-1]",
    place_result = "assembling-machine-1",
    stack_size = 5
  },
  
  	{
    type = "recipe",
    name = "assembling-machine-1",
	category = "workshop-crafting",
	energy_required = 5,
    enabled = "true",
    ingredients =
    {
	  {"iron-plate", 10},
      {"stone-furnace", 1},
	  {"iron-gear-wheel", 6},
	  {"basic-motor", 4},
    },
	result = "assembling-machine-1"
},
  
	{
    type = "assembling-machine",
    name = "assembling-machine-1",
    icon = "__base__/graphics/icons/assembling-machine-1.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "assembling-machine-1"},
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
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
      filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1.png",
      priority="high",
      width = 99,
      height = 102,
      frame_count = 32,
      line_length = 8,
      shift = {0.25, -0.1}
    },
    crafting_categories = {"crafting","workshop-crafting"},
    crafting_speed = 0.5,
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
  })
