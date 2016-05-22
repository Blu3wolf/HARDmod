 data:extend(
{
 
 {
    type = "technology",
    name = "offworld-teleportation",
    icon = "__HARDmod__/placeholder-graphics/icons/offworld-teleportation/offworld-teleportation.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "offworld-teleporter"
      },
    },
    prerequisites = {"advanced-electronics-4"},
	unit =
    {
      count = 300,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
		{"science-pack-3", 1},
		{"alien-science-pack", 1},
      },
      time = 30
    },
	order = "c-b-q",
  }, 
  
  {
    type = "technology",
    name = "military-supply-contract",
    icon = "__HARDmod__/placeholder-graphics/icons/offworld-teleportation/military-supply-contract.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "mass-produced-power-armor"
      },
	  {
        type = "unlock-recipe",
        recipe = "rifle-platoon-equipment"
      },
	  {
        type = "unlock-recipe",
        recipe = "rifle-platoon-ammo"
      },
	  {
        type = "unlock-recipe",
        recipe = "tank-platoon"
      },
	  {
        type = "unlock-recipe",
        recipe = "military-vp"
      },
	  
    },
    prerequisites = {"offworld-teleportation","power-armor"},
	unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
		{"science-pack-3", 1},
		{"alien-science-pack", 1},
      },
      time = 30
    },
	order = "c-b-r",
  },
  
  -- ELECTRONICS SUPPLY CONTRACT
  
  {
    type = "technology",
    name = "electronics-supply-contract",
    icon = "__HARDmod__/placeholder-graphics/icons/offworld-teleportation/electronics-supply-contract.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "cellphones-package"
      },
	  {
        type = "unlock-recipe",
        recipe = "tablets-package"
      },
	  {
        type = "unlock-recipe",
        recipe = "pcs-package"
      },
	  {
        type = "unlock-recipe",
        recipe = "electronics-vp"
      },
	 },
	  prerequisites = {"offworld-teleportation"},
	unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
		{"science-pack-3", 1},
		{"alien-science-pack", 1},
      },
      time = 30
    },
	order = "c-b-s",
  },
 
 -- OFFWORLD TELEPORTER
  
    {
    type = "item",
    name = "offworld-teleporter",
    icon = "__HARDmod__/placeholder-graphics/icons/offworld-teleportation/offworld-teleporter.png",
    flags = {"goes-to-quickbar"},
    subgroup = "offworld-teleportation",
    order = "b[assembling-machine-2]",
    place_result = "offworld-teleporter",
    stack_size = 1
  },
	
	{
    type = "assembling-machine",
    name = "offworld-teleporter",
    icon = "__HARDmod__/placeholder-graphics/icons/offworld-teleportation/offworld-teleporter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 5, result = "offworld-teleporter"},
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
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    animation =
    {
      filename = "__HARDmod__/placeholder-graphics/icons/offworld-teleportation/offworld-teleporter/offworld-teleporter.png",
      priority = "high",
      width = 142,
      height = 113,
      frame_count = 1,
      line_length = 8,
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
    crafting_categories = {"offworld-teleportation"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.04 / 2.5
    },
    energy_usage = "500kW",
    ingredient_count = 8,
    module_slots = 0,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  },
	
	{
    type = "recipe",
    name = "offworld-teleporter",
    enabled = "false",
	energy_required = 10,
    ingredients =
    {
	  {"stone-brick", 40},
	  {"alien-artifact", 40},
    },
    result = "offworld-teleporter"
  },
  
  -- TANK PLATOON PACKAGE
  
  {
    type = "item",
    name = "tank-platoon",
    icon = "__HARDmod__/placeholder-graphics/icons/offworld-teleportation/tank-platoon.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "military-vp",
    order = "c",
    stack_size = 5
  },
  
  {
    type = "recipe",
    name = "tank-platoon",
    enabled = "false",
	energy_required = 10,
    ingredients =
    {
      {"tank", 5},
	  {"cannon-shell", 200},
	  {"cannon-shell", 200},
	  {"solid-fuel", 200},
	  {"solid-fuel", 200},
	  {"solid-fuel", 200},
    },
    result = "tank-platoon"
  },
  
  -- RIFLE PLATOON EQUIPMENT
  
  {
    type = "item",
    name = "rifle-platoon-equipment",
    icon = "__HARDmod__/placeholder-graphics/icons/offworld-teleportation/rifle-platoon.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "military-vp",
    order = "a",
    stack_size = 5
  },
  
  {
    type = "recipe",
    name = "rifle-platoon-equipment",
    enabled = "false",
	energy_required = 10,
    ingredients =
    {
      {"mass-produced-power-armor", 40},
	  {"submachine-gun", 32},
	  {"night-vision-equipment", 40},
	  {"heavy-machine-gun", 8},
	  {"rocket-launcher", 2},
	  {"tf-medicine", 10},
    },
    result = "rifle-platoon-equipment"
  },
  
  {
    type = "item",
    name = "rifle-platoon-ammo",
    icon = "__HARDmod__/placeholder-graphics/icons/offworld-teleportation/rifle-platoon-ammo.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "military-vp",
    order = "b",
    stack_size = 5
  },
  
  {
    type = "recipe",
    name = "rifle-platoon-ammo",
    enabled = "false",
	energy_required = 10,
    ingredients =
    {
      {"car", 4},
	  {"basic-grenade", 80},
	  {"land-mine", 40},
	  {"rocket", 40},
	  {"piercing-bullet-magazine", 200},
	  {"piercing-bullet-magazine", 200},
    },
    result = "rifle-platoon-ammo"
  },
  
  {
    type = "item",
    name = "military-vp",
    icon = "__HARDmod__/placeholder-graphics/icons/offworld-teleportation/military-vp.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "military-vp",
    order = "d",
    stack_size = 1000
  },
  
  {
    type = "recipe",
    name = "military-vp",
    enabled = "false",
	energy_required = 1,
	category = "offworld-teleportation",
    ingredients =
    {
      {"rifle-platoon-equipment",4},
	  {"rifle-platoon-ammo",4},
	  {"tank-platoon",3},
    },
    result = "military-vp"
  },
  
  -- MASS PRODUCED POWER ARMOR
  
  {
    type = "item",
    name = "mass-produced-power-armor",
    icon = "__base__/placeholder-graphics/icons/power-armor.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "armor",
    order = "a[solid-rocket-fuel]",
    stack_size = 50
	},
  
  {
    type = "recipe",
    name = "mass-produced-power-armor",
    enabled = "false",
    energy_required = 10,
    ingredients = {
		{"basic-exoskeleton-equipment", 1},
		{"basic-modular-armor", 1},
		{"processing-unit", 2},
		{"electric-motor", 2},
		{"steel-plate", 10},
	},
    result = "mass-produced-power-armor"
  },
  
  -- CELLPHONES PACKAGE
  
  {
    type = "item",
    name = "cellphones-package",
    icon = "__HARDmod__/placeholder-graphics/icons/offworld-teleportation/cellphones-package.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "electronics-vp",
    order = "a[cellphones-package]",
    stack_size = 250
	},
  
  {
    type = "recipe",
    name = "cellphones-package",
    enabled = "false",
    energy_required = 5,
    ingredients = {
		{"plastic-bar", 40},
		{"microchip", 20},
		{"processing-unit",20},
	},
    result = "cellphones-package"
  },
  
  {
    type = "item",
    name = "tablets-package",
    icon = "__HARDmod__/placeholder-graphics/icons/offworld-teleportation/tablets-package.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "electronics-vp",
    order = "a[tablets-package]",
    stack_size = 150
	},
  
  {
    type = "recipe",
    name = "tablets-package",
    enabled = "false",
    energy_required = 5,
    ingredients = {
		{"aluminium-plate", 40},
		{"glass-plate", 40},
		{"cpu", 20},
		{"processing-unit",40},
		{"insulated-copper-wire",20},
	},
    result = "tablets-package"
  },
  
  {
    type = "item",
    name = "pcs-package",
    icon = "__HARDmod__/placeholder-graphics/icons/offworld-teleportation/pcs-package.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "electronics-vp",
    order = "a[tablets-package]",
    stack_size = 150
	},
  
  {
    type = "recipe",
    name = "pcs-package",
    enabled = "false",
    energy_required = 10,
    ingredients = {
		{"steel-plate", 40},
		{"motherboard", 40},
		{"heatsink", 40},
		{"insulated-copper-wire",40},
	},
    result = "pcs-package"
  },
  
  {
    type = "item",
    name = "electronics-vp",
    icon = "__HARDmod__/placeholder-graphics/icons/offworld-teleportation/electronics-vp.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "electronics-vp",
    order = "d",
    stack_size = 1000
  },
  
  {
    type = "recipe",
    name = "electronics-vp",
    enabled = "false",
	energy_required = 1,
	category = "offworld-teleportation",
    ingredients =
    {
      {"cellphones-package",20},
	  {"tablets-package",10},
	  {"pcs-package",10},
    },
    result = "electronics-vp"
  },
  
  })
  