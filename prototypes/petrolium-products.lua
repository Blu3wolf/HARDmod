data.raw.fluid["heavy-oil"].pressure_to_speed_ratio = 0.3
data.raw.fluid["heavy-oil"].flow_to_energy_ratio = 0.5

data.raw.fluid["crude-oil"].pressure_to_speed_ratio = 0.3
data.raw.fluid["crude-oil"].flow_to_energy_ratio = 0.5

data:extend(
{
	-- BASIC OIL PROCESSING

	{
    type = "recipe",
    name = "basic-oil-processing",
    category = "oil-processing",
    enabled = "false",
    energy_required = 5,
    ingredients =
    {
      {type="fluid", name="crude-oil", amount=10}
    },
    results=
    {
      {type="fluid", name="heavy-oil", amount=3},
      {type="fluid", name="light-oil", amount=3},
      {type="fluid", name="untreated-petroleum-gas", amount=4}
    },
    icon = "__base__/graphics/icons/fluid/basic-oil-processing.png",
    subgroup = "fluid",
    order = "a[oil-processing]-a[basic-oil-processing]"
  },

  -- ADVANCED OIL PROCESSING
  
  {
    type = "recipe",
    name = "advanced-oil-processing",
    category = "oil-processing",
	subgroup = "fluids-oil-processing",
    enabled = "false",
    energy_required = 5,
    ingredients =
    {
      {type="fluid", name="water", amount=5},
      {type="fluid", name="crude-oil", amount=10}
    },
    results=
    {
      {type="fluid", name="heavy-oil", amount=1},
      {type="fluid", name="light-oil", amount=4.5},
      {type="fluid", name="untreated-petroleum-gas", amount=5.5}
    },
    icon = "__base__/graphics/icons/fluid/advanced-oil-processing.png",
    order = "a"
  },
  
	-- UNTREATED PETROLEUM GAS

    {
    type = "fluid",
    name = "untreated-petroleum-gas",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=1, g=1, b=0},
    flow_color = {r=1, g=1, b=0},
    max_temperature = 100,
    icon = "__HARDmod__/graphics/icons/untreated-petroleum-gas.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-e[petroleum-gas]"
  },
  
  {
    type = "recipe",
    name = "petroleum-gas-desulfurization",
    category = "chemistry",
    energy_required = 10,
    ingredients =
    {
      {type="fluid", name="untreated-petroleum-gas", amount=25},
	  {type="fluid", name="water", amount=5}
    },
    results=
    {
		{type="fluid", name="petroleum-gas", amount=25},
      {type="fluid", name="hydrogen-sulfide", amount=5}
    },
    icon = "__HARDmod__/graphics/icons/hydrogen-sulfide.png",
    subgroup = "chemistry",
    enabled = "false",
    order = "b[fluid-chemistry]-c[hydrogen-sulfide]"
  },
  
})