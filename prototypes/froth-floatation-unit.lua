data:extend({
	{
		type = "assembling-machine",
		name = "froth-flotation-unit",
		icon = "__HARDmod__/placeholder-graphics/icons/froth-flotation-unit.png",
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
				filename = "__HARDmod__/placeholder-graphics/entity/froth-flotation-unit/froth-flotation-unit-1.png",
				width = 108,
				height = 130,
				frame_count = 1,
				shift = {0, -0.28125}
			},
			west =
			{
				filename = "__HARDmod__/placeholder-graphics/entity/froth-flotation-unit/froth-flotation-unit-2.png",
				width = 112,
				height = 120,
				frame_count = 1,
				shift = {0, -0.21875}
			},
			south =
			{
				filename = "__HARDmod__/placeholder-graphics/entity/froth-flotation-unit/froth-flotation-unit-1.png",
				width = 108,
				height = 130,
				frame_count = 1,
				shift = {0, -0.28125}
			},
			east =
			{
				filename = "__HARDmod__/placeholder-graphics/entity/froth-flotation-unit/froth-flotation-unit-2.png",
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
		icon = "__HARDmod__/placeholder-graphics/icons/froth-flotation-unit.png",
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
  
})
