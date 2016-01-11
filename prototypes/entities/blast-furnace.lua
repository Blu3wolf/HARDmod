data:extend(
{
	{
		type = "assembling-machine",
		name = "blast-furnace",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
		selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
		minable = 
		{
			hardness = 0.2,
			mining_time = 0.5,
			result = "blast-furnace"
		},
		crafting_categories = { "blast-furnace" },
		max_health = 150,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		ingredient_count = 3,
		energy_usage = "300kW",
		crafting_speed = 1,
		icon = "__HARDmod__/graphics/icons/blastfurnace icon.png",
		energy_source = 
		{
			type = "electric",
			usage_priority = "secondary-input",
		},
		animation = 
		{
			filename = "__HARDmod__/graphics/entity/blast-furnace/blastfurnace.png",
			priority = "medium",
			width = 212,
			height = 180,
			line_length = 5,
			frame_count = 16,
			shift = {0.8, 0.18}
		},
		fluid_boxes = 
		{
			{
				production_type = "output",
				base_area = 10,
				base_level = 1,
				pipe_connections = {{ type="output", position = {-3, 1} }}
			}, 
			{
				production_type = "output",
				base_area = 10,
				base_level = 1,
				pipe_connections = {{ type="output", position = {-3, -1} }}
			}, 
			{
				production_type = "output",
				base_level = 1,
				pipe_connections = {{ type="output", position = {3,1} }}
			}, 
			{
				production_type = "output",
				base_level = 1,
				pipe_connections = {{ type="output", position = {3,-1} }}
			}, 
			{
				production_type = "input",
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {1, -3} }}
			}, 
			{
				production_type = "input",
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {-1, -3} }}
			}, 
			{
				production_type = "input",
				base_level = -1,
				pipe_connections = {{ type="input", position = {1,3} }}
			}, 
			{
				production_type = "input",
				base_level = -1,
				pipe_connections = {{ type="input", position = {-1,3} }}
			}
		}
	},
	
	{
		type = "recipe",
		name = "blast-furnace",
		result = "blast-furnace",
		ingredients = 
		{
			{"advanced-circuit", 10},
			{"steel-plate", 50},
			{"copper-plate", 100},
			{"iron-plate", 100},
			{"silver-plate", 50},
			{"copper-cable", 10}
		},
		energy_required = 60,
		enabled = "false",
		category = "crafting"
	},
	
	{
		type = "item",
		name = "blast-furnace",
		order = "z-z-b-f",
		place_result = "blast-furnace",
		stack_size = 1,
		flags = {"goes-to-quickbar" },
		icon = "__HARDmod__/graphics/icons/blastfurnace icon.png",
		subgroup = "production-machine"
	}
})

