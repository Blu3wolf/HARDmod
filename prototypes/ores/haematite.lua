hardmod.ores.haematite =
{
	name = "haematite-ore",
	tint = {r=0.75294, g=0.26274, b=0.13725},
	map_color = {r=0.75294, g=0.26274, b=0.13725},
	hardness = 0.9,
	mining_time = 1.5,
	enabled = true,
	icon = "__bobores__/graphics/icons/zinc-ore.png",
	stage_mult = 10,
	item =
	{
		create = true,
		subgroup = "raw-ores",
		stack_size = 50
	},
	sprite =
	{
		sheet = 1
	},
	autoplace =
	{
		create = true,
		starting_area = true,
		richness = 1.2,
		size = 1
	}
}
