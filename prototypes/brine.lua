data:extend({

  {
    type = "item",
    name = "rubber",
    icon = "__NARMod__/graphics/icons/rubber.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "raw-material",
    order = "f[rubber]",
    stack_size = 50
  },
  
    {
    type = "recipe",
    name = "rubber",
    category = "chemistry",
	enabled = false,
    energy_required = 10,
    ingredients =
    {
	  {type="fluid", name="butadiene", amount=5},
      {type="fluid", name="hexane", amount=3},
    },
    result = "rubber",
	result_count = 5,
  },
  
  -- BRINE WATER
  
  {
    type = "fluid",
    name = "brine-water",
    default_temperature = 15,
    max_temperature = 100,
    heat_capacity = "1KJ",
    base_color = {r=0, g=0.34, b=0.6},
    flow_color = {r=0.7, g=1.0, b=1.0},
    icon = "__NARMod__/graphics/icons/brine-water.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-a[brine-water]",
  },
  
  {
    type = "autoplace-control",
    name = "brine-pool",
    richness = true,
    order = "b-f"
  },
  
    {
    type = "noise-layer",
    name = "brine-pool"
  },
  
  {
    type = "resource",
    name = "brine-pool",
    icon = "__NARMod__/graphics/entity/brine-pool/brine-pool.png",
    flags = {"placeable-neutral"},
    category = "basic-fluid",
    order="a-b-a",
    infinite = true,
    minimum = 750,
    normal = 7500,
    minable =
    {
      hardness = 1,
      mining_time = 1,
      results =
      {
        {
          type = "fluid",
          name = "brine-water",
          amount_min = 1,
          amount_max = 1,
          probability = 1
        }
      }
    },
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "brine-pool",
      sharpness = 1,
      max_probability = 0.04,
      richness_multiplier = 150000,
      richness_base = 5000,
      size_control_multiplier = 0.06,
      peaks =
      {
        {
          influence = 0.1
        },
        {
          influence = 0.105,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.67,
          noise_layer = "brine-pool",
          noise_octaves_difference = -2.7,
          noise_persistence = 0.3
        }
      }
    },
    stage_counts = {0},
    stages =
    {
		sheet = 
		{
			filename = "__NARMod__/graphics/entity/brine-pool/brine-pool.png",
			priority = "extra-high",
			width = 75,
			height = 61,
			frame_count = 4,
			direction_count = 1,
			variation_count = 1
		},
	},
    map_color = {r=0.8, g=0.1, b=0.8},
    map_grid = false
  }
}
)
