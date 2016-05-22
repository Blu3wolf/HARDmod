data:extend({

	-- FROTH FLOTATION UNIT
	
 {
    type = "assembling-machine",
    name = "froth-flotation-unit",
    icon = "__HARDmod__/graphics/icons/froth-flotation-unit.png",
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "froth-flotation-unit"},
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    max_health = 300,
    crafting_categories = {"froth-flotation"},
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    module_slots = 2,
    crafting_speed = 1,
    ingredient_count = 4,
    energy_usage = "40kW",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 3.5
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, -2} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, -2} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-1, 2} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {1, 2} }}
      },
    },
    animation =
    {
      north =
      {
        filename = "__HARDmod__/graphics/entity/froth-flotation-unit/froth-flotation-unit-1.png",
        width = 108,
        height = 130,
        frame_count = 1,
        shift = {0, -0.28125}
      },
      west =
      {
        filename = "__HARDmod__/graphics/entity/froth-flotation-unit/froth-flotation-unit-2.png",
        width = 112,
        height = 120,
        frame_count = 1,
        shift = {0, -0.21875}
      },
      south =
      {
        filename = "__HARDmod__/graphics/entity/froth-flotation-unit/froth-flotation-unit-1.png",
        width = 108,
        height = 130,
        frame_count = 1,
        shift = {0, -0.28125}
      },
      east =
      {
        filename = "__HARDmod__/graphics/entity/froth-flotation-unit/froth-flotation-unit-2.png",
        width = 112,
        height = 120,
        frame_count = 1,
        shift = {0, -0.21875}
      }
    },
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/chemical-plant.ogg",
          volume = 0.8
        }
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
  },
  
{
    type = "item",
    name = "froth-flotation-unit",
    icon = "__HARDmod__/graphics/icons/froth-flotation-unit.png",
    flags = {"goes-to-quickbar"},
    order = "e[froth-flotation-unit]",
	subgroup = "alt-production",
    place_result = "froth-flotation-unit",
    stack_size = 5
  },
  
    {
    type = "recipe",
    name = "froth-flotation-unit",
    energy_required = 5,
    enabled = "false",
    ingredients =
    {
      {"iron-plate", 5},
	  {"pipe", 4},
	  {"basic-pump", 1},
	  {"storage-tank-2", 2},
    },
    result = "froth-flotation-unit"
  },

-- BLAST FURNACE

{
    type= "assembling-machine",
    name= "blast-furnace",
    flags= {"placeable-neutral", "player-creation"},
	
	collision_box= {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box= {{-2.5, -2.5}, {2.5, 2.5}},
	
    --collision_box= {{-3.4, -2.4}, {1.4, 2.9}},
    --selection_box= {{-3.5, -2.4}, {1.5, 3.0}},
    minable= { hardness= 0.2, mining_time= 0.5, result= "blast-furnace" },
    crafting_categories= { "blast-furnace" },
    max_health= 150,
    ingredient_count= 4,
    energy_usage="300kW",
	crafting_speed=1,
	icon="__HARDmod__/graphics/icons/blastfurnace.png",
    energy_source=
    {
      type= "electric",
	  usage_priority = "secondary-input",
    },
    animation=
    {
      filename= "__HARDmod__/graphics/entity/blast-furnace/blastfurnace.png",
      priority= "medium",
      width= 212,
      height= 180,
      line_length= 5,
      frame_count= 16,
	  shift = {0.8, 0.18}
    },
	fluid_boxes ={
      {
        production_type = "output",
        --pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {-3, 1} }}
      }, 
	  {
        production_type = "output",
        --pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {-3, -1} }}
      }, 
      {
        production_type = "output",
        --pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ type="output", position = {3,1} }}
      }, 
	  {
        production_type = "output",
        --pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ type="output", position = {3,-1} }}
      }, 
      {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, -3} }}
      }, 
	  {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, -3} }}
      }, 
      {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_level = -1,
        pipe_connections = {{ type="input", position = {1,3} }}
      }, 
	  {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1,3} }}
      },
	 },
	},
  
{
   	type = "recipe",
   	name =  "blast-furnace",
   	result= "blast-furnace",
   	ingredients= {
		{"iron-plate", 30},
		{"stone-brick", 20},
		{"copper-cable", 20},
		{"storage-tank-2", 2},
		{"turbine", 2},
		{"crucible", 4},
	},
	energy_required= 20,
    enabled= "false",
	category= "crafting"
  },
  
	{
		type= "item",
		name= "blast-furnace",
		order= "z-z-b-f",
		place_result= "blast-furnace",
		stack_size= 1,
		flags= { "goes-to-quickbar" },
		subgroup = "smelting-machine",
		icon="__HARDmod__/graphics/icons/blastfurnace.png",
	},

	-- ELECTROLYSER
	
 {
    type = "assembling-machine",
    name = "electrolyser",
    icon = "__bobplates__/graphics/icons/electrolyser.png",
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "electrolyser"},
    fast_replaceable_group = "electrolyser",
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    max_health = 300,
    crafting_categories = {"electrolysis"},
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    module_slots = 2,
    crafting_speed = 1.5,
    ingredient_count = 4,
    energy_usage = "225kW",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 3.5
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, -2} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, -2} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-1, 2} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {1, 2} }}
      },
    },
    animation =
    {
      north =
      {
        filename = "__bobplates__/graphics/entity/electrolyser/electro-vt1u.png",
        width = 108,
        height = 130,
        frame_count = 1,
        shift = {0, -0.28125}
      },
      west =
      {
        filename = "__bobplates__/graphics/entity/electrolyser/electro-h-t1l.png",
        width = 112,
        height = 120,
        frame_count = 1,
        shift = {0, -0.21875}
      },
      south =
      {
        filename = "__bobplates__/graphics/entity/electrolyser/electro-vt1d.png",
        width = 108,
        height = 130,
        frame_count = 1,
        shift = {0, -0.28125}
      },
      east =
      {
        filename = "__bobplates__/graphics/entity/electrolyser/electro-h-t1r.png",
        width = 112,
        height = 120,
        frame_count = 1,
        shift = {0, -0.21875}
      }
    },
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/chemical-plant.ogg",
          volume = 0.8
        }
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
  },
  
{
    type = "item",
    name = "electrolyser",
    icon = "__HARDmod__/graphics/icons/electrolyser.png",
    flags = {"goes-to-quickbar"},
    order = "e[electrolyser-1]",
	    subgroup = "alt-production",
    place_result = "electrolyser",
    stack_size = 3
  },
  
    {
    type = "recipe",
    name = "electrolyser",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"iron-plate", 10},
	  {"storage-tank-2", 2},
	  {"electronic-circuit", 5},
    },
    result = "electrolyser"
  },
  
  -- CHEMICAL FURNACE
  
  {
    type = "assembling-machine",
    name = "chemical-furnace",
    icon = "__HARDmod__/placeholder-graphics/icons/chemical-furnace.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "chemical-furnace"},
    max_health = 250,
    corpse = "big-remnants",
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
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -2} }}
      },
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

    module_slots = 3,
    ingredient_count = 8,
    crafting_speed = 2,
    crafting_categories = {"chemical-furnace"},
    energy_usage = "180kW",
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
      filename = "__HARDmod__/placeholder-graphics/entity/chemical-furnace/chemical-furnace.png",
      priority = "high",
      width = 131,
      height = 102,
      frame_count = 1,
      shift = {0.5, 0.05 }
    },
    working_visualisations =
    {
      {
        north_position = { 0.09375, 0.96875 },
        west_position = { 0.09375, 0.96875 },
        south_position = { 0.09375, 0.96875 },
        east_position = { 0.09375, 0.96875 },
        animation =
        {
          filename = "__HARDmod__/placeholder-graphics/entity/chemical-furnace/chemical-furnace-fire.png",
          width = 29,
          height = 19,
          frame_count = 12,
          animation_speed = 0.5,
        }
      },
    },
    fast_replaceable_group = "furnace",
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
  },

    {
    type = "item",
    name = "chemical-furnace",
    icon = "__HARDmod__/placeholder-graphics/icons/chemical-furnace.png",
    flags = {"goes-to-quickbar"},
    order = "c[chemical-furnace]",
	    subgroup = "alt-production",
    place_result = "chemical-furnace",
    stack_size = 5
  },
  
  {
    type = "recipe",
    name = "chemical-furnace",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"iron-plate", 5},
      {"stone-furnace", 1},
	  {"storage-tank-2", 1},
	  {"pipe", 2},
    },
    result = "chemical-furnace"
  },
  
  -- PRESSURE VESSEL
  
  {
    type= "assembling-machine",
    name= "pressure-vessel",
	order = "m-r",
    flags= {"placeable-neutral", "player-creation"},
    collision_box= {{-1.5, -0.7}, {1.4, 0.9}},
    selection_box= {{-1.5, -0.7}, {1.4, 0.9}},
    minable= { hardness= 0.2, mining_time= 0.5, result= "pressure-vessel" },
    crafting_categories= { "pressure-vessel" },
    max_health= 150,
    drawing_position= {0.7, 0.12},
    ingredient_count= 5,
    energy_usage= "250kW",
    crafting_speed= 1,
	icon="__HARDmod__/graphics/icons/pressure-vessel.png",
    energy_source=
    {
      type= "electric",
      usage_priority = "secondary-input",
    },
    animation=
    {
      filename= "__HARDmod__/graphics/entity/pressure-vessel/pressure-vessel.png",
      priority= "medium",
      width= 96,
      height= 32,
      line_length= 1,
      frame_count= 1,
      shift = {0, 0}
    },
	fluid_boxes =
    {
      {
        production_type = "output",
        --pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {-2, 0.5} }}
      },
	},
  },
  
  
	{
	type= "item",
	name= "pressure-vessel",
	order = "z-z-p-v",
	place_result= "pressure-vessel",
	stack_size= 3,
	flags= { "goes-to-quickbar" },
	icon="__HARDmod__/graphics/icons/pressure-vessel.png",
	subgroup = "smelting-machine",
	},
	
  {
   	type = "recipe",
   	name =  "pressure-vessel",
   	result= "pressure-vessel",
   	ingredients= {
		{"steel-plate", 20},
		{"storage-tank-2", 2},
		
	},
	energy_required= 10,
    enabled= "false",
	category= "crafting"
  },
 })
