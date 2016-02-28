-- Setting Vanilla Groups

data.raw["item-group"]["combat"].order = "z"

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

-- SET VANILLA ITEMS TO BE CRAFTABLE IN WORKSHOP

data.raw["recipe"]["wood"].category = "workshop-crafting"
data.raw["recipe"]["iron-stick"].category = "workshop-crafting"
data.raw["recipe"]["wooden-chest"].category = "workshop-crafting"
data.raw["recipe"]["iron-axe"].category = "workshop-crafting"
data.raw["recipe"]["stone-furnace"].category = "workshop-crafting"
data.raw["recipe"]["iron-gear-wheel"].category = "workshop-crafting"
--data.raw["recipe"]["iron-drill"].category = "workshop-crafting"
data.raw["recipe"]["pipe"].category = "workshop-crafting"
data.raw["recipe"]["basic-transport-belt"].category = "workshop-crafting"
data.raw["recipe"]["copper-cable"].category = "workshop-crafting"
data.raw["recipe"]["small-electric-pole"].category = "workshop-crafting"
data.raw["recipe"]["pistol"].category = "workshop-crafting"
data.raw["recipe"]["basic-bullet-magazine"].category = "workshop-crafting"
data.raw["recipe"]["basic-armor"].category = "workshop-crafting"
data.raw["recipe"]["pipe-to-ground"].category = "workshop-crafting"
data.raw["recipe"]["iron-chest"].category = "workshop-crafting"

-- Set Assembler Crafting category

data.raw["assembling-machine"]["assembling-machine-2"].crafting_categories = {"crafting","workshop-crafting","crafting-with-fluid","advanced-crafting"}
data.raw["assembling-machine"]["assembling-machine-3"].crafting_categories = {"crafting","workshop-crafting","crafting-with-fluid","advanced-crafting"}

-- Set Stack Size

data.raw["item"]["boiler"].stack_size = 5
data.raw["item"]["stone-brick"].stack_size = 50
data.raw["item"]["iron-plate"].stack_size = 50
data.raw["item"]["copper-plate"].stack_size = 50
data.raw["item"]["iron-stick"].stack_size = 50
data.raw["item"]["iron-gear-wheel"].stack_size = 50
data.raw["item"]["copper-cable"].stack_size = 50
data.raw["item"]["electronic-circuit"].stack_size = 50
data.raw["item"]["burner-mining-drill"].stack_size = 5
data.raw["item"]["basic-mining-drill"].stack_size = 5
data.raw["item"]["offshore-pump"].stack_size = 5
data.raw["item"]["steam-engine"].stack_size = 3
data.raw["item"]["small-electric-pole"].stack_size = 20
data.raw["item"]["radar"].stack_size = 5
data.raw["item"]["small-lamp"].stack_size = 10
data.raw["item"]["red-wire"].stack_size = 50
data.raw["item"]["green-wire"].stack_size = 50
data.raw["item"]["iron-chest"].stack_size = 20
data.raw["item"]["steel-chest"].stack_size = 20
data.raw["item"]["smart-chest"].stack_size = 20
data.raw["item"]["assembling-machine-2"].stack_size = 3
data.raw["item"]["assembling-machine-3"].stack_size = 3
data.raw["item"]["solar-panel"].stack_size = 3
data.raw["item"]["straight-rail"].stack_size = 20
data.raw["item"]["curved-rail"].stack_size = 10
data.raw["item"]["stone-wall"].stack_size = 20
data.raw["item"]["gate"].stack_size = 1
data.raw["tool"]["science-pack-1"].stack_size = 20
data.raw["tool"]["science-pack-2"].stack_size = 20
data.raw["tool"]["science-pack-3"].stack_size = 20
data.raw["item"]["steel-plate"].stack_size = 50
data.raw["item"]["lab"].stack_size = 5
data.raw["item"]["logistic-chest-passive-provider"].stack_size = 20
data.raw["item"]["logistic-chest-active-provider"].stack_size = 20
data.raw["item"]["logistic-chest-storage"].stack_size = 20
data.raw["item"]["logistic-chest-requester"].stack_size = 20
data.raw["item"]["rocket-silo"].stack_size = 1
data.raw["item"]["roboport"].stack_size = 1
data.raw["item"]["coin"].stack_size = 50
data.raw["item"]["big-electric-pole"].stack_size = 20
data.raw["item"]["medium-electric-pole"].stack_size = 20
data.raw["item"]["substation"].stack_size = 5
data.raw["item"]["basic-accumulator"].stack_size = 5
data.raw["item"]["steel-furnace"].stack_size = 3
data.raw["item"]["stone-furnace"].stack_size = 5
data.raw["item"]["electric-furnace"].stack_size = 3
data.raw["item"]["basic-beacon"].stack_size = 5
data.raw["item"]["storage-tank"].stack_size = 5
data.raw["item"]["pumpjack"].stack_size = 5
data.raw["item"]["oil-refinery"].stack_size = 1
data.raw["item"]["chemical-plant"].stack_size = 3
data.raw["item"]["plastic-bar"].stack_size = 50
data.raw["ammo"]["cannon-shell"].stack_size = 250
data.raw["gun"]["submachine-gun"].stack_size = 50
--data.raw["capsule"]["healing-pack"].stack_size = 20
data.raw["item"]["night-vision-equipment"].stack_size = 50
data.raw["item"]["land-mine"].stack_size = 50
data.raw["item"]["night-vision-equipment"].stack_size = 50
data.raw["item"]["solid-fuel"].stack_size = 250


data:extend(
{
	--WOOD AXE
	{
		type = "mining-tool",
		name = "wood-axe",
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
		stack_size = 5
	},
	{
		type = "recipe",
		name = "wood-axe",
		category = "in-hand-crafting",
		enabled = "true",
		ingredients = 
		{
			{"raw-wood", 4},
		},
		result = "wood-axe"
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
		dying_explosion = "medium-explosion",
		resistances =
		{
			{
				type = "fire",
				percent = 70
			}
		},
		--collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-2.5, -2.5}, {2.0, 2.5}},
		animation=
		{
			filename= "__HARDmod__/graphics/entity/workshop/workshop-blank.png",
			priority= "medium",
			width= 1,
			height= 1,
			line_length= 5,
			frame_count= 1,
			--shift = {0.8, 0.18}
		},
		crafting_categories = {"workshop-crafting", "in-hand-crafting"},
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
			sound = 
			{
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
		dying_explosion = "medium-explosion",
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
			--{"steel-parts",1}
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
			--{"module-case-mk1", 1}
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
		--{"basic-motor", 1},
		--{"iron-drill", 1}
		},
		result = "burner-mining-drill"
	}
	
	
	
}
)
