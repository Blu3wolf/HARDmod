hardmod.ores.haematite =
{
  name = "haematite-ore",
  tint = {r=0.34, g=0.9, b=0.81},
  map_color = {r=0.47, g=1, b=0.96},
  hardness = 1.4,
  mining_time = 2,
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
    sheet = 2
  },
  autoplace =
  {
    control = "haematite-ore",
    sharpness = 1,
    richness_multiplier = 12000,
    richness_base = 250,
    size_control_multiplier = 0.06,
    peaks =
    {
      {
        influence = 0.2,
        starting_area_weight_optimal = 0,
        starting_area_weight_range = 0,
        starting_area_weight_max_range = 2,
      },
      {
        influence = 0.65,
        noise_layer = "haematite-ore",
        noise_octaves_difference = -2.7,
        noise_persistence = 0.4,
        starting_area_weight_optimal = 0,
        starting_area_weight_range = 0,
        starting_area_weight_max_range = 2,
      },
    },
  }
}


