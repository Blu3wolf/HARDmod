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
    order = "a[mining]-a[iron-axe]",
    speed = 2,
    stack_size = 5
  },
  {
    type = "recipe",
    name = "wood-axe",
    ingredients = {{"raw-wood", 4}},
	category = "in-hand-crafting", "workshop-crafting",
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
	}
	
}
)
