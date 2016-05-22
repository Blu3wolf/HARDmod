
	
	


data:extend(
{
	
	
	-- COMPOUND FERTILIZER
	
	{
		type = "recipe",
		name = "fertilizer",
		category = "bioreactor-crafting",
		energy_required = 5,
		icon = "__NARMod__/graphics/icons/compound-fertilizer.png",
		ingredients =
		{
			{type="fluid", name="nitrogen-fertilizer", amount=5},
			{type="fluid", name="phosphate-fertilizer", amount=5},
			{type="fluid", name="potassium-fertilizer", amount=5},
		},
		results=
		{
			{type="item", name="fertilizer", amount=5}
		},
		enabled = "false"
	},
	
	{
		type = "item",
		name = "fertilizer",
		icon = "__NARMod__/graphics/icons/compound-fertilizer.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "organic-biomass",
		order = "b[compound-fertilizer]",
		stack_size = 100
	},
	
	-- NITROGEN FERTILIZER
	
	{
		type = "recipe",
		name = "nitrogen-fertilizer",
		category = "bioreactor-crafting",
		subgroup = "organic-biomass",
		energy_required = 3,
		icon = "__NARMod__/graphics/icons/nitrogen-fertilizer.png",
		ingredients =
		{
			{type="fluid", name="ammonia", amount=3},
			{type="fluid", name="nitric-acid", amount=3},
		},
		results=
		{
			{type="fluid", name="nitrogen-fertilizer", amount=1}
		},
		enabled = "false"
	},
	
	{
		type = "fluid",
		name = "nitrogen-fertilizer",
		default_temperature = 25,
		heat_capacity = "1KJ",
		base_color = {r=0, g=1.0, b=0},
		flow_color = {r=0.0, g=1.0, b=0.0},
		max_temperature = 50,
		icon = "__NARMod__/graphics/icons/nitrogen-fertilizer.png",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		order = "a[fluid]-b[nitrogen-fertilizer]"
	},
	
	-- PHOSPHATE FERTILIZER
	
	{
		type = "recipe",
		name = "phosphate-fertilizer",
		subgroup = "organic-biomass",
		category = "bioreactor-crafting",
		energy_required = 3,
		icon = "__NARMod__/graphics/icons/phosphate-fertilizer.png",
		ingredients =
		{
			{type="item", name="phosphate-rock", amount=1},
			{type="fluid", name="sulfuric-acid", amount=1},
		},
		results=
		{
			{type="fluid", name="phosphate-fertilizer", amount=1}
		},
		enabled = "false"
	},
	
	{
		type = "fluid",
		name = "phosphate-fertilizer",
		default_temperature = 25,
		heat_capacity = "1KJ",
		base_color = {r=0, g=1.0, b=0},
		flow_color = {r=0.0, g=1.0, b=0.0},
		max_temperature = 50,
		icon = "__NARMod__/graphics/icons/phosphate-fertilizer.png",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		order = "a[fluid]-b[phosphate-fertilizer]"
	},
	
	-- POTASSIUM FERTILIZER
	
	{
		type = "recipe",
		name = "potassium-fertilizer",
		subgroup = "organic-biomass",
		category = "bioreactor-crafting",
		energy_required = 3,
		icon = "__NARMod__/graphics/icons/potassium-fertilizer.png",
		ingredients =
		{
			{type="item", name="potassium-chloride", amount=2},
			{type="fluid", name="water", amount=1},
		},
		results=
		{
			{type="fluid", name="potassium-fertilizer", amount=1}
		},
		enabled = "false"
	},
	
	{
		type = "fluid",
		name = "potassium-fertilizer",
		default_temperature = 25,
		heat_capacity = "1KJ",
		base_color = {r=0, g=1.0, b=0},
		flow_color = {r=0.0, g=1.0, b=0.0},
		max_temperature = 50,
		icon = "__NARMod__/graphics/icons/potassium-fertilizer.png",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		order = "a[fluid]-b[potassium-fertilizer]"
	},
	
	-- POTASSIUM CHLORIDE
	
	{
		type = "recipe",
		name = "potassium-chloride-1",
		category = "chemical-furnace",
		energy_required = 3,
		icon = "__NARMod__/graphics/icons/potassium-chloride.png",
		ingredients =
		{
			{type="item", name="potash", amount=1},
		},
		results=
		{
			{type="item", name="potassium-chloride", amount=1}
		},
		enabled = "false"
	},
	
	{
		type = "recipe",
		name = "potassium-chloride-2",
		category = "chemical-furnace",
		energy_required = 3,
		icon = "__NARMod__/graphics/icons/potassium-chloride.png",
		ingredients =
		{
			{type="fluid", name="brine-water", amount=2},
		},
		results=
		{
			{type="item", name="potassium-chloride", amount=1}
		},
		enabled = "false"
	},
	
	{
		type = "item",
		name = "potassium-chloride",
		icon = "__NARMod__/graphics/icons/potassium-chloride.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "organic-biomass",
		order = "b[potassium-chloride]",
		stack_size = 100
	},
	
	
	-- POTASH --
	
	{
		type = "item",
		name = "potash",
		icon = "__NARMod__/graphics/icons/potash.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "organic-chemicals",
		order = "b[potash]",
		stack_size = 50
	},
	
	{
		type = "recipe",
		name = "potash",
		category = "chemical-furnace",
		energy_required = 5,
		icon = "__NARMod__/graphics/icons/potash.png",
		ingredients =
		{
		  {type="item", name="sodium-hydroxide", amount=3},
		},
		results=
		{
			{type="item", name="potash", amount=2}
		},
		enabled = "false"
	},
	
	-- POTASSIUM NITRATE --
	
	{
		type = "item",
		name = "potassium-nitrate",
		icon = "__NARMod__/graphics/icons/potassium-nitrate.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "organic-chemicals",
		order = "b[potassium-nitrate]",
		stack_size = 50
	},
	
	{
		type = "recipe",
		name = "potassium-nitrate",
		category = "chemical-furnace",
		energy_required = 5,
		icon = "__NARMod__/graphics/icons/potassium-nitrate.png",
		ingredients =
		{
		  {type="item", name="potash", amount=3},
		  {type="fluid", name="water", amount=5}
		},
		results=
		{
			{type="item", name="potassium-nitrate", amount=1}
		},
		enabled = "false"
	},
	
	-- MAGNESIUM CHLORIDE
	
	{
		type = "item",
		name = "magnesium-chloride",
		icon = "__NARMod__/graphics/icons/magnesium-chloride.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "chemistry",
		order = "b[potassium-nitrate]",
		stack_size = 50
	},
  
  {
    type = "recipe",
    name = "magnesium-chloride",
    category = "chemistry",
    energy_required = 10,
    ingredients =
    {
      {type="fluid", name="brine-water", amount=10},
	  {type="fluid", name="hydrogen-chloride", amount=1}
    },
    results=
    {
		{type="item", name="magnesium-chloride", amount=5},
		{type="fluid", name="water", amount=5}
    },
    icon = "__NARMod__/graphics/icons/magnesium-chloride.png",
    subgroup = "chemistry",
    enabled = "false",
    order = "b[fluid-chemistry]-c[magnesium-chloride]"
  },
  
  -- MAGNESIUM OXIDE
  
  {
		type = "item",
		name = "magnesium-oxide",
		icon = "__NARMod__/graphics/icons/magnesium-oxide.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "chemical-furnace",
		order = "b[potassium-nitrate]",
		stack_size = 50
	},
  
  {
    type = "recipe",
    name = "magnesium-oxide",
    category = "chemical-furnace",
    energy_required = 5,
    ingredients =
    {
      {type="item", name="magnesium-chloride", amount=5},
	  {type="item", name="limestone", amount=1}
    },
    results=
    {
		{type="item", name="magnesium-oxide", amount=5},
    },
    icon = "__NARMod__/graphics/icons/magnesium-oxide.png",
    subgroup = "chemistry",
    enabled = "false",
    order = "b[fluid-chemistry]-c[magnesium-oxide]"
  },
  
  -- EPSOMITE
  
  {
		type = "item",
		name = "epsomite",
		icon = "__NARMod__/graphics/icons/epsomite.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "chemistry",
		order = "b[epsomite]",
		stack_size = 50
	},
  
  {
    type = "recipe",
    name = "epsomite",
    category = "chemistry",
    energy_required = 5,
    ingredients =
    {
      {type="item", name="magnesium-oxide", amount=5},
	  {type="fluid", name="sulfuric-acid", amount=5},
	  {type="fluid", name="water", amount=35},
    },
    results=
    {
		{type="item", name="epsomite", amount=5},
    },
    icon = "__NARMod__/graphics/icons/epsomite.png",
    subgroup = "chemistry",
    enabled = "false",
    order = "b[fluid-chemistry]-c[epsomite]"
  },
	
	-- NUTRIENT SOLUTION --
	
	{
		type = "item",
		name = "nutrient-solution",
		icon = "__NARMod__/graphics/icons/nutrient-solution.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "organic-chemicals",
		order = "b[nutrient-solution]",
		stack_size = 50
	},
	
	{
		type = "recipe",
		name = "nutrient-solution",
		category = "bioreactor-crafting",
		energy_required = 5,
		subgroup = "organic-biomass",
		icon = "__NARMod__/graphics/icons/nutrient-solution.png",
		ingredients =
		{
			{type="item", name="potassium-nitrate", amount=4},
			{type="item", name="phosphate-rock", amount=3},
			{type="item", name="limestone", amount=3},
			{type="item", name="epsomite", amount=12},
			{type="fluid", name="nitrogen-gas", amount=10},
		},
		results=
		{
			{type="item", name="nutrient-solution", amount=5}
		},
		enabled = "false"
	},
	
	-- BIOMASS --
	
	{
		type = "fluid",
		name = "biomass",
		default_temperature = 25,
		heat_capacity = "1KJ",
		base_color = {r=0, g=0, b=0},
		flow_color = {r=0.1, g=1.0, b=0.0},
		max_temperature = 50,
		icon = "__NARMod__/graphics/icons/biomass.png",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		order = "a[fluid]-b[biomass]"
	},
	
	{
		type = "recipe",
		name = "biomass",
		icon = "__NARMod__/graphics/icons/biomass.png",
		subgroup = "organic-biomass",		
		category = "hydroponic-farm-crafting",
		energy_required = 10,
		ingredients =
		{
			{type="fluid", name="water", amount=10},
			{type="fluid", name="co2-gas", amount=5},
			{type="item", name="nutrient-solution", amount=5}
		},
		results=
		{
			{type="fluid", name="biomass", amount=1},
		},
		enabled = "false"
	},
	
	-- CELLULOSE --
	
	{
		type = "item",
		name = "cellulose",
		icon = "__NARMod__/graphics/icons/cellulose.png",
		flags = {"goes-to-main-inventory"},
		order = "b[cellulose]",
		subgroup = "organic-biomass",
		stack_size = 50
	},
	
	{
		type = "recipe",
		name = "cellulose",
		category = "bioreactor-crafting",
		energy_required = 10,
		ingredients =
		{
			{type="fluid", name="biomass", amount = 2}
		},
		results=
		{
			{type="item", name="cellulose", amount=1 }
		},
		enabled = "false"
	},
	
	-- PLASTIC --
	
	{
		type = "recipe",
		name = "organic-plastic",
		category = "bioreactor-crafting",
		subgroup = "organic-biomass",
		energy_required = 1,
		ingredients =
		{
			{type="item", name="cellulose", amount=2}
		},
		results=
		{
			{type="item", name="plastic-bar", amount=1}
		},
		enabled = "false"
	},
	
	-- HEALING PACK --
	
	{
		type = "capsule",
		name = "healing-pack",
		icon = "__NARMod__/graphics/icons/healing-pack.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "organic-tools",
		order = "a",
		stack_size = 10,
		capsule_action =
		{
			type = "use-on-self",
			attack_parameters =
			{
				type = "projectile",
				ammo_category = "capsule",
				cooldown = 30,
				range = 0,
				ammo_type =
				{
					category = "capsule",
					target_type = "position",
					action =
					{
						type = "direct",
						action_delivery =
						{
							type = "instant",
							target_effects = 
							{
								type = "damage",
								damage = {type = "physical", amount = -50}
							}
						}
					}
				}
			}
		}
	},
	
	{
		type = "recipe",
		name = "healing-pack",
		category = "bioreactor-crafting",
		energy_required = 20,
		subgroup = "organic-tools",
		ingredients =
		{
			{type="fluid", name="biomass", amount=100}
		},
		results=
		{
			{type="item", name="healing-pack", amount=1}
		},
		enabled = "false"
	}
}
)

