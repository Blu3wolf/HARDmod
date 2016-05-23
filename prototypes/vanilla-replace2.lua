data.raw["recipe"]["basic-splitter"].enabled = true
data.raw["recipe"]["basic-transport-belt-to-ground"].enabled = true
data.raw["recipe"]["basic-oil-processing"].subgroup = "fluids-oil-processing"
data.raw["item"]["iron-plate"].subgroup = "raw-plates"
data.raw["item"]["copper-plate"].subgroup = "raw-plates"
data.raw["item"]["iron-gear-wheel"].subgroup = "intermediate-gears"
data.raw["tool"]["science-pack-1"].subgroup = "data-pack"
data.raw["tool"]["science-pack-2"].subgroup = "data-pack"
data.raw["tool"]["science-pack-3"].subgroup = "data-pack"
data.raw["tool"]["alien-science-pack"].subgroup = "data-pack"
data.raw["tool"]["science-pack-1"].icon = "__HARDmod__/placeholder-graphics/icons/science-packs/science-pack-1.png"
data.raw["tool"]["science-pack-2"].icon = "__HARDmod__/placeholder-graphics/icons/science-packs/science-pack-2.png"
data.raw["tool"]["science-pack-3"].icon = "__HARDmod__/placeholder-graphics/icons/science-packs/science-pack-3.png"
data.raw["tool"]["alien-science-pack"].icon = "__HARDmod__/graphics/icons/science-packs/science-pack-4.png"
data.raw["item"]["green-wire"].subgroup = "storage"
data.raw["item"]["red-wire"].subgroup = "storage"
data.raw["straight-rail"]["straight-rail"].resistances = 
	{
		{
			type = "physical",
			percent = 90
		},
		{
			type = "fire",
			percent = 80
		},
		{
			type = "explosion",
			percent = 20
		}
	}
data.raw["curved-rail"]["curved-rail"].resistances = 
	{
		{
			type = "physical",
			percent = 90
		},
		{
			type = "fire",
			percent = 80
		},
		{
			type = "explosion",
			percent = 20
		}
	}




data:extend(
{ 	
  {
    type = "recipe",
    name = "light-oil-cracking",
    category = "chemistry",
    enabled = "false",
    energy_required = 5,
    ingredients =
    {
      {type="fluid", name="water", amount=3},
      {type="fluid", name="light-oil", amount=3}
    },
    results=
    {
      {type="fluid", name="untreated-petroleum-gas", amount=2}
    },
    main_product= "",
    icon = "__base__/graphics/icons/fluid/light-oil-cracking.png",
    subgroup = "fluids-oil-processing",
    order = "b[fluid-chemistry]-b[light-oil-cracking]"
  },
  
  {
    type = "recipe",
    name = "engine-unit",
    ingredients =
    {
		--DISABLED
    },
    result = "engine-unit",
    enabled = "false"
  },
  {
    type = "recipe",
    name = "electric-engine-unit",
    category = "crafting-with-fluid",
    ingredients =
    {
			--DISABLED
    },
    result = "electric-engine-unit",
    enabled = "false"
  },
  
  {
    type = "recipe",
    name = "solar-panel",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
		{"steel-plate", 4},
		{"photovoltaic-cell", 12},
		{"insulated-copper-wire", 4},
		{"solder", 4},
    },
    result = "solar-panel"
  },
  {
    type = "recipe",
    name = "car",
    enabled = "false",
    ingredients =
    {
      {"steel-plate", 30},
	  {"electronic-circuit", 20},
	  {"electric-motor", 4},
	  {"glass-plate", 6},
	  {"rubber", 8},
	  {"heavy-machine-gun", 1},
    },
    result = "car"
  },
  {
    type = "recipe",
    name = "tank",
    enabled = "false",
    ingredients =
    {
      {"steel-plate", 45},
	  {"titanium-plate", 45},
	  {"arc-welding-electrode", 30},
	  {"large-electric-motor", 10},
	  {"electronic-circuit", 20},
	  {"advanced-circuit", 20}
    },
    result = "tank"
  },
  {
    type = "recipe",
    name = "diesel-locomotive",
    enabled = "false",
    ingredients =
    {
      {"steel-plate", 30},
	  {"basic-motor", 20},
	  {"storage-tank-2", 5},
	  {"electronic-circuit", 10},
    },
    result = "diesel-locomotive"
  },
  {
    type = "recipe",
    name = "cargo-wagon",
    enabled = "false",
    ingredients =
    {
      {"steel-plate", 20},
	  {"steel-parts", 30},
    },
    result = "cargo-wagon"
  },
  {
    type = "recipe",
    name = "express-splitter",
    category = "crafting-with-fluid",
    enabled = "false",
    energy_required = 2,
    ingredients =
    {
      {"fast-splitter", 1},
      {"tungsten-parts", 10},
      {"advanced-circuit", 10},
      {type="fluid", name="lubricant", amount=8}
    },
    result = "express-splitter"
  },
  -- {
    -- type = "recipe",
    -- name = "rocket-silo",
    -- enabled = "false",
    -- ingredients =
    -- {
      -- {"steel-plate", 1000},
	  -- {"rocket", 40},
      -- {"speed-module-3", 40},
      -- {"productivity-module-3", 40},
	  -- {"effectivity-module-3", 40}
    -- },
    -- result = "rocket-silo"
  -- },
  {
    type = "recipe",
    name = "roboport",
    enabled = "false",
    ingredients =
    {
      {"steel-plate", 40},
	  {"steel-parts", 40},
	  {"arc-welding-electrode", 20},
      {"advanced-circuit", 40}
    },
    result = "roboport",
    energy_required = 30
  },
  {
    type = "recipe",
    name = "basic-accumulator",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"steel-plate", 5},
      {"capacitors", 10}
    },
    result = "basic-accumulator"
  },
  {
    type = "recipe",
    name = "basic-beacon",
    enabled = "false",
    energy_required = 15,
    ingredients =
    {
	  {"steel-plate", 15},
	  {"electronic-circuit", 20},
      {"advanced-circuit", 20},
      {"copper-cable", 10}
    },
    result = "basic-beacon"
  },
  {
    type = "recipe",
    name = "pumpjack",
    energy_required = 20,
    ingredients =
    {
	  {"steel-plate", 20},
	  {"arc-welding-electrode", 10},
      {"steel-parts", 10},
	  {"basic-pump", 2},
      {"pipe", 10},
    },
    result = "pumpjack",
    enabled = "false"
  },
  {
    type = "recipe",
    name = "oil-refinery",
    energy_required = 20,
    ingredients =
    {
	  {"steel-plate", 40},
	  {"arc-welding-electrode", 20},
	  {"steel-parts", 20},
      {"pipe", 20},
	  {"basic-pump", 5},
	  {"storage-tank-2", 10},
    },
    result = "oil-refinery",
    enabled = "false"
  },
  
  {
    type = "recipe",
    name = "flying-robot-frame",
    energy_required = 20,
    ingredients =
    {
      {"steel-plate", 5},
	  {"lithium-ion-battery", 2},
      {"electronic-circuit", 5},
      {"electric-motor", 1},
	  {"arc-welding-electrode", 1},
    },
    result = "flying-robot-frame",
    enabled = "false"
  },

  {
    type = "recipe",
    name = "chemical-plant",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
	  {"steel-plate", 25},
	  {"arc-welding-electrode", 10},
      {"electronic-circuit", 10},
      {"pipe", 20},
	  {"storage-tank-2", 10}
    },
    result= "chemical-plant"
  },
})