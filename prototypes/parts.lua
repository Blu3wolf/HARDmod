data:extend(
{
	-- IRON PARTS
	
	{
		type = "recipe",
		name = "iron-gear-wheel",
		ingredients = {{"iron-plate", 1}},
		result = "iron-gear-wheel"
	},
	
		-- BASIC PUMP
	
		{
    type = "item",
    name = "basic-pump",
    icon = "__NARMod__/graphics/icons/basic-pump.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "intermediate-product",
    order = "a[basic-pump]",
    stack_size = 20
	},
	
	  	{
    type = "recipe",
    name = "basic-pump",
	enabled = false,
    ingredients =
    {
	  {"small-electric-motor", 1},
      {"iron-gear-wheel", 1},
	  {"pipe", 2},
    },
    result = "basic-pump"
  },
  
  -- STORAGE TANK (THE INTERMEDIATE PART)
  
  	{
    type = "item",
    name = "storage-tank-2",
    icon = "__NARMod__/graphics/icons/storage-tank-2.png",
    flags = {"goes-to-main-inventory"},
	order = "a[storage-tank]",
    subgroup = "intermediate-product",
    stack_size = 20
	},
	
	{
    type = "recipe",
    name = "storage-tank-2",
	enabled = true,
    ingredients =
    {
      {"iron-plate", 2},
	  {"pipe", 1},
    },
    result = "storage-tank-2"
  },

	-- STEEL PARTS

  {
    type = "item",
    name = "steel-parts",
    icon = "__NARMod__/graphics/icons/steel-parts.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "intermediate-gears",
    order = "b[parts]",
    stack_size = 50
  },
  
    {
    type = "recipe",
    name = "steel-parts",
    enabled = false,
    ingredients =
    {
      {"steel-plate", 1},
    },
    result = "steel-parts"
  },
  
  	  -- ARC WELDING ELECTRODE
  
    {
    type = "recipe",
    name = "arc-welding-electrode",
    enabled = false,
    category = "crafting-with-fluid",
    energy_required = 10,
    ingredients =
    {
      {type="item", name="steel-plate", amount=2},
      {type="fluid", name="argon-gas", amount=1},
    },
    result = "arc-welding-electrode",
	result_count = 10
  },
  
    {
    type = "item",
    name = "arc-welding-electrode",
    icon = "__NARMod__/graphics/icons/arc-welding-electrode.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "intermediate-product",
    order = "c-b-a[arc-welding-electrode]",
    stack_size = 50
  },
  
  -- TUNGSTEN PARTS

  {
    type = "item",
    name = "tungsten-parts",
    icon = "__NARMod__/graphics/icons/tungsten-parts.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "intermediate-gears",
    order = "c[parts]",
    stack_size = 50
  },

      {
    type = "recipe",
    name = "tungsten-parts",
    enabled = false,
    ingredients =
    {
      {"tungsten-carbide-plate", 1},
    },
    result = "tungsten-parts"
  },

  -- TITANIUM PARTS
  
    {
    type = "item",
    name = "titanium-parts",
    icon = "__NARMod__/graphics/icons/titanium-parts.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "intermediate-gears",
    order = "d[parts]",
    stack_size = 50
  },
  
    {
    type = "recipe",
    name = "titanium-parts",
    enabled = false,
    ingredients =
    {
      {"titanium-plate", 1},
    },
    result = "titanium-parts"
  },
  
  -- CERAMIC BEARING
  
  {
    type = "item",
    name = "ceramic-ball-bearing",
    icon = "__NARMod__/graphics/icons/ceramic-ball-bearing.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "intermediate-bearings",
    order = "b[ball-bearing-ceramic]",
    stack_size = 50
  },

  {
    type = "item",
    name = "ceramic-bearing",
    icon = "__NARMod__/graphics/icons/ceramic-bearing.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "intermediate-bearings",
    order = "b[bearing-ceramic]",
    stack_size = 50
  },
  
    {
    type = "recipe",
    name = "ceramic-ball-bearing",
    enabled = false,
    ingredients =
    {
      {"silicon-nitride", 1},
    },
    result = "ceramic-ball-bearing",
    result_count = 12
  },

  {
    type = "recipe",
    name = "ceramic-bearing",
    category = "crafting-with-fluid",
    enabled = false,
    ingredients =
    {
      {"silicon-nitride", 1},
      {"ceramic-ball-bearing", 16},
      {type="fluid", name="lubricant", amount=1}
    },
    result = "ceramic-bearing",
    result_count = 2
  },


  -- BATTERY

  {
    type = "item",
    name = "battery",
    icon = "__NARMod__/graphics/icons/battery.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "intermediate-product",
    order = "f-c[lithium-ion-battery]",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "battery",
    category = "crafting",
    enabled = false,
    ingredients =
    {
      {"lithium-perchlorate", 1},
      {"lithium-cobalt-oxide", 1},
      {"tf-charcoal", 1},
      {"plastic-bar", 1},
    },
    result = "battery",
  },
	
	-- IRON DRILL
	
	{
    type = "recipe",
    name = "iron-drill",
	category = "crafting",
    enabled = "true",
	energy_required= 1,
    ingredients =
    {
      {"iron-plate", 3},
    },
	result = "iron-drill"
	},
	
	{
		type = "item",
		name = "iron-drill",
		icon = "__NARMod__/graphics/icons/iron-drill.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "intermediate-product",
		order = "a",
		stack_size = 50
	},
	
		{
    type = "recipe",
    name = "basic-motor",
	enabled = "true",
	category = "workshop-crafting",
    ingredients =
    {
      {"iron-gear-wheel", 2},
      {"iron-plate", 1}
    },
    result = "basic-motor"
  },
  
  {
    type = "item",
    name = "basic-motor",
	flags = {"goes-to-main-inventory"},
    icon = "__NARMod__/graphics/icons/basic-motor.png",
    subgroup = "intermediate-product",
    order = "e",
    stack_size = 20
  },
  
  {
    type = "recipe",
    name = "small-electric-motor",
	enabled = "true",
	category = "crafting",
	energy_required = 1,
    ingredients =
    {
	  {"iron-gear-wheel", 2},
      {"iron-plate", 2},
	  {"copper-cable", 4}
    },
    result = "small-electric-motor"
  },
  
  {
    type = "item",
    name = "small-electric-motor",
	flags = {"goes-to-main-inventory"},
    icon = "__NARMod__/graphics/icons/small-electric-motor.png",
    subgroup = "intermediate-product",
    order = "e",
    stack_size = 20
  },
  
  {
    type = "recipe",
    name = "electric-motor",
	enabled = "false",
	category = "crafting",
    ingredients =
    {
		{"steel-plate", 4},
		{"steel-parts", 2},
		{"copper-cable", 8},
		{"brass-bearing", 4},
    },
    result = "electric-motor"
  },
  
  {
    type = "item",
    name = "electric-motor",
	energy_required = 5,
	flags = {"goes-to-main-inventory"},
    icon = "__NARMod__/graphics/icons/electric-motor.png",
    subgroup = "intermediate-product",
    order = "e",
    stack_size = 20
  },
  
  {
    type = "recipe",
    name = "large-electric-motor",
	enabled = "false",
	category = "crafting-with-fluid",
	energy_required = 10,
    ingredients =
    {
		{type="item", name="steel-plate", amount=10},
		{type="item", name="steel-parts", amount=10},
		{type="item", name="copper-cable", amount=20},
		{type="item", name="ceramic-bearing", amount=10},
		{type="fluid", name="lubricant", amount=2},
    },
    result = "large-electric-motor"
  },
  
  {
    type = "item",
    name = "large-electric-motor",
	flags = {"goes-to-main-inventory"},
    icon = "__NARMod__/graphics/icons/large-electric-motor.png",
    subgroup = "intermediate-product",
    order = "e",
    stack_size = 20
  },
  
  -- ROTOR BLADE
  
  {
    type = "recipe",
	name = "rotor-blade",
	enabled = "true",
	category = "workshop-crafting",
    ingredients =
    {
      {"iron-plate", 2},
    },
    result = "rotor-blade"
  },
  
  {
    type = "item",
    name = "rotor-blade",
	flags = {"goes-to-main-inventory"},
    icon = "__NARMod__/graphics/icons/rotor-blade.png",
    subgroup = "intermediate-product",
    order = "e",
    stack_size = 20
  },
  
  -- TURBINE
  
  {
    type = "recipe",
    name = "turbine",
	enabled = "true",
	category = "workshop-crafting",
    ingredients =
    {
      {"rotor-blade", 4},
      {"iron-gear-wheel", 4},
    },
    result = "turbine"
  },
  
  {
    type = "item",
    name = "turbine",
    icon = "__NARMod__/graphics/icons/turbine.png",
	flags = {"goes-to-main-inventory"},
    subgroup = "intermediate-product",
    order = "e[turbine]",
    stack_size = 10
  },
	
}
)


