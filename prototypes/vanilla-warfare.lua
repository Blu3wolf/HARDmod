data.raw["ammo"]["piercing-bullet-magazine"].stack_size = 250

data:extend( {

-- SHOTGUN SHELL

 {
    type = "recipe",
    name = "shotgun-shell",
    enabled = "false",
    energy_required = 5,
    ingredients =
    {
      {type="item", name="iron-plate", amount=3},
	  {type="item", name="lq-copper-plate", amount=3},
      {type="item", name="tf-charcoal", amount=4}
    },
    result = "shotgun-shell",
	result_count = 3
  },
  
  -- PIERCING SHOTGUN SHELL
  
  {
    type = "recipe",
    name = "piercing-shotgun-shell",
    enabled = "false",
    energy_required = 8,
	ingredients =
    {
      {type="item", name="lead-plate", amount=3},
	  {type="item", name="brass-plate", amount=2},
	  {type="item", name="potassium-nitrate", amount=3},
	  {type="item", name="sulfur", amount=2},
      {type="item", name="tf-charcoal", amount=1}
    },
    result = "piercing-shotgun-shell",
	result_count = 3,
  },
  
  -- PISTOL MAGAZINE
  
  {
    type = "ammo-category",
    name = "pistol-bullet"
  },
  
  {
    type = "ammo",
    name = "basic-bullet-magazine",
    icon = "__base__/graphics/icons/basic-bullet-magazine.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "pistol-bullet",
      action =
      {
        {
          type = "direct",
          action_delivery =
          {
            {
              type = "instant",
              source_effects =
              {
                {
                  type = "create-entity",
                  entity_name = "explosion-gunshot"
                }
              },
              target_effects =
              {
                {
                  type = "create-entity",
                  entity_name = "explosion-gunshot"
                },
                {
                  type = "damage",
                  damage = { amount = 2 , type = "physical"}
                }
              }
            }
          }
        }
      }
    },
    magazine_size = 10,
    subgroup = "ammo",
    order = "a[basic-clips]-a[basic-bullet-magazine]",
    stack_size = 100
  },
  
  -- PISTOL
  
  {
    type = "gun",
    name = "pistol",
    icon = "__base__/graphics/icons/pistol.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "gun",
    order = "a[basic-clips]-a[pistol]",
    attack_parameters =
    {
		type = "projectile",
      ammo_category = "pistol-bullet",
      cooldown = 10,
      movement_slow_down_factor = 0.7,
      shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0.6},
        creation_distance = 0.6,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1
      },
      projectile_creation_distance = 0.6,
      range = 15,
      sound = make_light_gunshot_sounds(),
    },
    stack_size = 5
  },
  
  
  
  -- RIFLE
  
  {
    type = "recipe",
    name = "submachine-gun",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"iron-plate", 2},
	  {"iron-gear-wheel", 6}
    },
    result = "submachine-gun"
  },
  
  -- SHOTGUN
  
    {
    type = "recipe",
    name = "shotgun",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"iron-plate", 3},
	  {"iron-gear-wheel", 6},
	  {"wood", 4},
    },
    result = "shotgun"
  },
  
  -- RIFLE MAGAZINE
  
  {
    type = "recipe",
    name = "rifle-magazine",
    energy_required = 5,
	enabled = false,
	ingredients =
    {
      {type="item", name="iron-plate", amount=3},
	  {type="item", name="lq-copper-plate", amount=2},
      {type="item", name="tf-charcoal", amount=3}
    },
    result = "rifle-magazine",
    result_count = 3
  },
  
  {
    type = "ammo",
    name = "rifle-magazine",
    icon = "__NARMod__/graphics/icons/rifle-magazine.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "bullet",
      action =
      {
        {
          type = "direct",
          action_delivery =
          {
            {
              type = "instant",
              source_effects =
              {
                {
                  type = "create-entity",
                  entity_name = "explosion-gunshot"
                }
              },
              target_effects =
              {
                {
                  type = "create-entity",
                  entity_name = "explosion-gunshot"
                },
                {
                  type = "damage",
                  damage = { amount = 3 , type = "physical"}
                }
              }
            }
          }
        }
      }
    },
    magazine_size = 10,
    subgroup = "ammo",
    order = "a[basic-clips]-a[basic-bullet-magazine]",
    stack_size = 100
  },
  
  -- ADVANCED RIFLE MAGAZINE
  
  {
    type = "recipe",
    name = "piercing-bullet-magazine",
    energy_required = 5,
	enabled = false,
	category = "crafting-with-fluid",
	ingredients =
    {
      {type="item", name="lead-plate", amount=3},
	  {type="item", name="brass-plate", amount=2},
	  {type="item", name="potassium-nitrate", amount=2},
	  {type="item", name="sulfur", amount=1},
      {type="item", name="tf-charcoal", amount=1}
    },
    result = "piercing-bullet-magazine",
    result_count = 3
  },
  
  -- HEAVY MACHINE GUN
  
  {
    type = "recipe",
    name = "heavy-machine-gun",
    enabled = "false",
    energy_required = 5,
    ingredients =
    {
	  {"steel-plate", 4},
	  {"steel-parts", 8}
    },
    result = "heavy-machine-gun"
  },
  
  {
    type = "gun",
    name = "heavy-machine-gun",
    icon = "__NARMod__/graphics/icons/heavy-machine-gun.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "gun",
    order = "a[basic-clips]-b[heavy-machine-gun]",
    attack_parameters =
    {
		type = "projectile",
      ammo_category = "bullet",
      cooldown = 3,
      movement_slow_down_factor = 0.9,
      shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0.6},
        creation_distance = 0.6,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1
      },
      projectile_creation_distance = 0.6,
      range = 20,
      sound = make_heavy_gunshot_sounds(),
    },
    stack_size = 50
  },
  
  -- GUN TURRET
  
  {
    type = "recipe",
    name = "gun-turret",
    enabled = "false",
    energy_required = 5,
    ingredients =
    {
      {"submachine-gun",1},
	  {"iron-plate", 5},
      {"electronic-circuit", 5}
    },
    result = "gun-turret"
  },

-- IRON ARMOR

{
    type = "recipe",
    name = "basic-armor",
    enabled = "false",
    energy_required = 5,
    ingredients =
    {
      {"iron-plate", 5},
    },
    result = "basic-armor"
  },

-- STEEL AND CERAMIC VEST

{
    type = "recipe",
    name = "heavy-armor",
    enabled = "false",
    energy_required = 5,
    ingredients =
    {
      {"steel-plate", 10},
	  {"ceramic-plate", 5},
    },
    result = "heavy-armor"
  },
  
    {
    type = "armor",
    name = "heavy-armor",
    icon = "__NARMod__/graphics/icons/kevlar-vest.png",
    flags = {"goes-to-main-inventory"},
    resistances =
    {
      {
        type = "physical",
        decrease = 5,
        percent = 20
      },
      {
        type = "explosion",
        decrease = 5,
        percent = 30
      },
      {
        type = "acid",
        decrease = 5,
        percent = 30
      }
    },
    durability = 5000,
    subgroup = "armor",
    order = "b[heavy-armor]",
    stack_size = 10
  },
  
  
  -- NIGHT VISION GOGGLES
  
  {
    type = "recipe",
    name = "night-vision-equipment",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"glass-plate", 1},
      {"steel-plate", 1},
	  {"advanced-circuit", 3},
	  {"insulated-copper-wire", 3},
    },
    result = "night-vision-equipment"
  },

-- BASIC GRENADE

	{
    type = "recipe",
    name = "basic-grenade",
    enabled = "false",
    energy_required = 3,
    ingredients =
    {
      {"steel-plate", 1},
      {"explosives", 1}
    },
    result = "basic-grenade"
  },
  
    -- EXOSKELETON EQUIPMENT
  
   {
    type = "recipe",
    name = "basic-exoskeleton-equipment",
    enabled = "false",
    energy_required = 5,
    ingredients =
    {
      {"advanced-circuit", 1},
      {"electric-motor", 2},
      {"steel-plate", 3},
    },
    result = "basic-exoskeleton-equipment"
  },
  
    -- BASIC MODULAR ARMOR
  
  {
    type = "recipe",
    name = "basic-modular-armor",
    enabled = "false",
    energy_required = 5,
    ingredients = {
		{"steel-plate", 10},
		{"advanced-circuit", 2},
	},
    result = "basic-modular-armor"
  },
  
  -- POWER ARMOR
  
  {
    type = "recipe",
    name = "power-armor",
    enabled = "false",
    energy_required = 10,
    ingredients = {
		{"basic-exoskeleton-equipment", 1},
		{"basic-modular-armor", 1},
		{"processing-unit", 4},
		{"electric-motor", 4},
		{"steel-plate", 10},
	},
    result = "power-armor"
  },
  
  -- BATTERY PACK
  
  {
    type = "recipe",
    name = "battery-equipment",
    enabled = "false",
    energy_required = 3,
    ingredients =
    {
      {"battery", 2},
	  {"advanced-circuit", 1},
      {"steel-plate", 1}
    },
    result = "battery-equipment"
  },
  
  -- BATTERY PACK MK2
  
  {
    type = "recipe",
    name = "battery-mk2-equipment",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"battery", 5},
      {"processing-unit", 2},
	  {"steel-plate", 2}
    },
    result = "battery-mk2-equipment"
  },
  
  -- SOLAR PANEL EQUIPMENT
  
  {
    type = "recipe",
    name = "solar-panel-equipment",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"photovoltaic-cell", 8},
      {"processing-unit", 1},
      {"steel-plate", 1}
    },
    result = "solar-panel-equipment"
  },
  
  -- FUSION REACTOR EQUIPIMENT
  
  {
    type = "recipe",
    name = "fusion-reactor-equipment",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"processing-unit", 10},
      {"alien-artifact", 10}
    },
    result = "fusion-reactor-equipment"
  },
  
  -- BASIC LASER DEFENSE
  
  {
    type = "recipe",
    name = "basic-laser-defense-equipment",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"processing-unit", 2},
      {"steel-plate", 2},
      {"co2-laser-emitter", 2}
    },
    result = "basic-laser-defense-equipment"
  },
  
  -- BASIC ELECTRIC DISCHARGE DEFENSE
  
  {
    type = "recipe",
    name = "basic-electric-discharge-defense-equipment",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"processing-unit", 2},
      {"steel-plate", 5},
      {"co2-laser-emitter", 5}
    },
    result = "basic-electric-discharge-defense-equipment"
  },
  
  -- ENERGY SHIELD EQUIPMENT
  
  {
    type = "recipe",
    name = "energy-shield-equipment",
    enabled = "false",
    energy_required = 5,
    ingredients =
    {
      {"advanced-circuit", 5},
      {"steel-plate", 3}
    },
    result = "energy-shield-equipment"
  },
  
  -- ENERGY SHIELD MK2
  
  {
    type = "recipe",
    name = "energy-shield-mk2-equipment",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"energy-shield-equipment", 1},
      {"processing-unit", 5}
    },
    result = "energy-shield-mk2-equipment"
  },
  
  -- FLAMETHROWER AMMO
  
  {
    type = "recipe",
    name = "flame-thrower-ammo",
    category = "chemistry",
    enabled = "false",
    energy_required = 5,
    ingredients =
    {
      {type="item", name="aluminium-plate", amount=1},
      {type="fluid", name="light-oil", amount=3},
      {type="fluid", name="heavy-oil", amount=3}
    },
    result = "flame-thrower-ammo",
	result_count = 3
  },
  
  -- FLAMETHROWER
  
  {
    type = "recipe",
    name = "flame-thrower",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"steel-plate", 4},
      {"storage-tank-2", 2}
    },
    result = "flame-thrower"
  },
  
    {
    type = "recipe",
    name = "cannon-shell",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
	  {"tungsten-carbide-plate", 6},
	  {"explosives", 6},
	  {"steel-plate", 3},
    },
    result = "cannon-shell",
	result_count = 3
  },
  
  -- ROCKET
  
  {
    type = "recipe",
    name = "rocket",
    enabled = "false",
    energy_required = 3,
    ingredients =
    {
	  {"solid-rocket-fuel", 1},
      {"explosives", 1},
      {"steel-plate", 1}
    },
    result = "rocket"
  },
  
  -- SOLID ROCKET FUEL
  
  {
    type = "recipe",
    name = "solid-rocket-fuel",
    enabled = "false",
	category = "chemistry",
    energy_required = 5,
    ingredients =
    {
	  {"potassium-nitrate", 7},
	  {"tf-charcoal", 2},
	  {"sulfur", 1},
    },
    result = "solid-rocket-fuel",
	result_count = 5
  },
  
  {
    type = "item",
    name = "solid-rocket-fuel",
    icon = "__NARMod__/graphics/icons/solid-rocket-fuel.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "spacetravel-propellant",
    order = "a[solid-rocket-fuel]",
    stack_size = 20
	},
  
  -- LIQUID ROCKET FUEL
  
  {
		type = "fluid",
		name = "lox-kerosene-propellant",
		default_temperature = 90,
		heat_capacity = "1KJ",
		base_color = {r=0, g=0, b=0},
		flow_color = {r=0.5, g=1.0, b=1.0},
		max_temperature = -186,
		icon = "__NARMod__/graphics/icons/lox-kerosene-propellant.png",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		order = "a[fluid]-b[lox-kerosene-propellant]"
	},
  
  {
		type = "recipe",
		name = "lox-kerosene-propellant",
		category = "chemistry",
		energy_required = 5,
		icon = "__NARMod__/graphics/icons/lox-kerosene-propellant.png",
		subgroup = "spacetravel-propellant",
		ingredients =
		{
			{type="fluid", name="liquid-oxygen", amount=10},
			{type="fluid", name="petroleum-gas", amount=10},
		},
		results=
		{
			{type="fluid", name="lox-kerosene-propellant", amount=5}
		},
		enabled = "false"
	},
	
	{
		type = "fluid",
		name = "lox-hydrogen-propellant",
		default_temperature = 90,
		heat_capacity = "1KJ",
		base_color = {r=0, g=0, b=0},
		flow_color = {r=0.5, g=1.0, b=1.0},
		max_temperature = -186,
		icon = "__NARMod__/graphics/icons/lox-hydrogen-propellant.png",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		order = "a[fluid]-b[lox-hydrogen-propellant]"
	},
	
	{
		type = "recipe",
		name = "lox-hydrogen-propellant",
		category = "chemistry",
		subgroup = "spacetravel-propellant",
		energy_required = 5,
		icon = "__NARMod__/graphics/icons/lox-hydrogen-propellant.png",
		ingredients =
		{
			{type="fluid", name="liquid-oxygen", amount=10},
			{type="fluid", name="liquid-hydrogen", amount=10},
		},
		results=
		{
			{type="fluid", name="lox-hydrogen-propellant", amount=5}
		},
		enabled = "false"
	},
  
  -- RAILROADS
  
  {
    type = "recipe",
    name = "straight-rail",
    enabled = "false",
	energy_required = 1,
    ingredients =
    {
      {"wood", 2},
      {"steel-plate", 2}
    },
    result = "straight-rail",
    result_count = 1
  },
  
  {
    type = "recipe",
    name = "curved-rail",
    enabled = "false",
	energy_required = 2,
    ingredients =
    {
      {"wood", 4},
      {"steel-plate", 4}
    },
    result = "curved-rail",
    result_count = 1
  },
  
  -- LASER TURRET
  
  {
    type = "recipe",
    name = "laser-turret",
    enabled = "false",
    energy_required = 5,
    ingredients =
    {
      {"steel-plate", 2},
      {"capacitors", 5},
      {"co2-laser-emitter", 1}
    },
    result = "laser-turret"
  },
  
  -- STONE WALL
  
    {
    type = "recipe",
    name = "stone-wall",
    enabled = "false",
	energy_required = 2,
    ingredients = {{"stone-brick", 3}},
    result = "stone-wall"
  },
  
  -- CAR
  
  {
    type = "car",
    name = "car",
    icon = "__base__/graphics/icons/car.png",
    flags = {"pushable", "placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "car"},
    max_health = 200,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    energy_per_hit_point = 1,
    resistances =
    {
      {
        type = "fire",
        percent = 50
      },
      {
        type = "impact",
        percent = 30,
        decrease = 30
      }
    },
    collision_box = {{-0.7, -1}, {0.7, 1}},
    selection_box = {{-0.7, -1}, {0.7, 1}},
    effectivity = 0.5,
    braking_power = "200kW",
    burner =
    {
      effectivity = 0.6,
      fuel_inventory_size = 1,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.25, 0.25},
          frequency = 50,
          position = {0, 1.5},
          slow_down_factor = 0.9,
          starting_frame = 3,
          starting_frame_deviation = 5,
          starting_frame_speed = 0,
          starting_frame_speed_deviation = 5
        }
      }
    },
    consumption = "150kW",
    friction = 2e-3,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {-0.6, -14},
        size = 2,
        intensity = 0.6
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.6, -14},
        size = 2,
        intensity = 0.6
      }
    },
    animation =
    {
      layers =
      {
        {
          width = 102,
          height = 86,
          frame_count = 2,
          axially_symmetrical = false,
          direction_count = 64,
          shift = {0, -0.1875},
          animation_speed = 8,
          max_advance = 0.2,
          stripes =
          {
            {
             filename = "__base__/graphics/entity/car/car-1.png",
             width_in_frames = 2,
             height_in_frames = 22,
            },
            {
             filename = "__base__/graphics/entity/car/car-2.png",
             width_in_frames = 2,
             height_in_frames = 22,
            },
            {
             filename = "__base__/graphics/entity/car/car-3.png",
             width_in_frames = 2,
             height_in_frames = 20,
            },
          }
        },
        {
          width = 100,
          height = 75,
          frame_count = 2,
          apply_runtime_tint = true,
          axially_symmetrical = false,
          direction_count = 64,
          max_advance = 0.2,
          line_length = 2,
          shift = {0, -0.171875},
          stripes = util.multiplystripes(2,
          {
            {
              filename = "__base__/graphics/entity/car/car-mask-1.png",
              width_in_frames = 1,
              height_in_frames = 22,
            },
            {
              filename = "__base__/graphics/entity/car/car-mask-2.png",
              width_in_frames = 1,
              height_in_frames = 22,
            },
            {
              filename = "__base__/graphics/entity/car/car-mask-3.png",
              width_in_frames = 1,
              height_in_frames = 20,
            },
          })
        },
        {
          width = 114,
          height = 76,
          frame_count = 2,
          draw_as_shadow = true,
          axially_symmetrical = false,
          direction_count = 64,
          shift = {0.28125, 0.25},
          max_advance = 0.2,
          stripes = util.multiplystripes(2,
          {
           {
            filename = "__base__/graphics/entity/car/car-shadow-1.png",
            width_in_frames = 1,
            height_in_frames = 22,
           },
           {
            filename = "__base__/graphics/entity/car/car-shadow-2.png",
            width_in_frames = 1,
            height_in_frames = 22,
           },
           {
            filename = "__base__/graphics/entity/car/car-shadow-3.png",
            width_in_frames = 1,
            height_in_frames = 20,
           },
          })
        }
      }
    },
    turret_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/car/car-turret.png",
          line_length = 8,
          width = 36,
          height = 29,
          frame_count = 1,
          axially_symmetrical = false,
          direction_count = 64,
          shift = {0.03125, -0.890625},
          animation_speed = 8,
        },
        {
          filename = "__base__/graphics/entity/car/car-turret-shadow.png",
          line_length = 8,
          width = 46,
          height = 31,
          frame_count = 1,
          axially_symmetrical = false,
          draw_as_shadow = true,
          direction_count = 64,
          shift = {0.875, 0.359375},
        }
      }
    },
    turret_rotation_speed = 0.35 / 60,
    stop_trigger_speed = 0.2,
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/car-breaks.ogg",
            volume = 0.6
          },
        }
      },
    },
    crash_trigger = crash_trigger(),
    sound_minimum_speed = 0.2;
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/car-engine.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__base__/sound/car-engine-start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__base__/sound/car-engine-stop.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    rotation_speed = 0.015,
    weight = 700,
    guns = { "heavy-machine-gun" },
    inventory_size = 80
  },
  
  {
    type = "recipe",
    name = "poison-capsule",
    enabled = "false",
    energy_required = 8,
	category = "crafting-with-fluid",
    ingredients =
    {
      {type="item",name = "steel-plate", amount = 1},
	  {type="item",name = "electronic-circuit", amount = 2},
	  {type="fluid",name = "cyanide", amount = 5},
    },
    result = "poison-capsule"
  },
  {
    type = "recipe",
    name = "slowdown-capsule",
    enabled = "false",
    energy_required = 8,
    ingredients =
    {
      {type="item",name = "steel-plate", amount = 1},
	  {type="item",name = "electronic-circuit", amount = 2},
	  {type="item",name = "epoxy", amount = 5},
    },
    result = "slowdown-capsule"
  },
  {
    type = "recipe",
    name = "defender-capsule",
    enabled = "false",
    energy_required = 8,
    ingredients =
    {
      {type="item",name = "steel-plate", amount = 1},
	  {type="item",name = "electronic-circuit", amount = 2},
	  {type="item",name = "piercing-bullet-magazine", amount = 5},
    },
    result = "defender-capsule"
  },
  
} )