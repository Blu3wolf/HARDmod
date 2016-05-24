hardmod.ores.cuprite =
{
	name = "cuprite-ore",
	tint = {r=0.52156, g=0.08235, b=0.16862},
	map_color = {r=0.52156, g=0.08235, b=0.16862},
	hardness = 0.7,
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
