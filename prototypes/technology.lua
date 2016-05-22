	
data.raw["technology"]["speed-module"].icon = "__NARMod__/graphics/icons/speed-module-1.png"
data.raw["technology"]["speed-module-2"].icon = "__NARMod__/graphics/icons/speed-module-2.png"
data.raw["technology"]["speed-module-3"].icon = "__NARMod__/graphics/icons/speed-module-3.png"

data.raw["technology"]["effectivity-module"].icon = "__NARMod__/graphics/icons/effectivity-module-1.png"
data.raw["technology"]["effectivity-module-2"].icon = "__NARMod__/graphics/icons/effectivity-module-2.png"
data.raw["technology"]["effectivity-module-3"].icon = "__NARMod__/graphics/icons/effectivity-module-3.png"

data.raw["technology"]["productivity-module"].icon = "__NARMod__/graphics/icons/productivity-module-1.png"
data.raw["technology"]["productivity-module-2"].icon = "__NARMod__/graphics/icons/productivity-module-2.png"
data.raw["technology"]["productivity-module-3"].icon = "__NARMod__/graphics/icons/productivity-module-3.png"

-- VANILLA TECH ORDERING

data.raw["technology"]["armor-making"].order = "a-a-e"
data.raw["technology"]["plastics"].order = "b-b-b-a"
	
	
-- RED SCIENCE TIER ONE	  RST1
	  
data:extend({
	{
		type = "technology",
		name = "automation",
		icon = "__base__/graphics/technology/automation.png",
		unit =
			{
		count = 10,
		  ingredients = {{"science-pack-1", 1}},
		  time = 10,
		},
		effects =
		{
		  {
			type = "unlock-recipe",
			recipe = "long-handed-inserter"
		  },
		  {
			type = "unlock-recipe",
			recipe = "fast-inserter"
		  },
		  {
			type = "unlock-recipe",
			recipe = "smart-inserter"
		  },
		},
		order = "a-a-a",
	},
	
	{
		type = "technology",
		name = "material-processing",
		icon = "__NARMod__/graphics/icons/technology/froth-flotation-unit.png",
		prerequisites= {"air-compressor"},
		unit =
			{
		count = 20,
		  ingredients = {{"science-pack-1", 1}},
		  time = 10,
		},
		effects =
		{
		  {
				type = "unlock-recipe",
				recipe = "basic-pump"
		  },
		  {
			type = "unlock-recipe",
			recipe = "froth-flotation-unit"
		  },
		  {
			type = "unlock-recipe",
			recipe = "iron-concentrate"
		  },
		  {
			type = "unlock-recipe",
			recipe = "copper-concentrate"
		  },
		},
		order = "a-a-a-a",
	},
  
	{
		type = "technology",
		name = "chemical-processing-1",
		icon = "__NARMod__/graphics/icons/technology/chemistry.png",
		prerequisites= {"cokery-manufacturing","extraction-technology"},
		unit =
		{
		  count = 20,
		  ingredients = {{"science-pack-1", 1}},
		  time = 10,
		},
		effects =
		{
			{
				type= "unlock-recipe",
				recipe= "powdered-silicon",
			},
			{
				type = "unlock-recipe",
				recipe = "glass-plate"
			},
			{
				type = "unlock-recipe",
				recipe = "chemical-furnace"
			},
		},
		order = "a-a-b"
	},
	
	{
    type = "technology",
    name = "electrolysis-1",
    icon = "__NARMod__/graphics/icons/technology/electrolysis.png",
	prerequisites = {"chemical-processing-1"},
	unit =
    {
      count = 40,
      ingredients =
      {
        {"science-pack-1", 1},
      },
      time = 25
    },
	order = "a-a-b-b",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "electrolyser"
      },
      {
        type = "unlock-recipe",
        recipe = "water-electrolysis"
      },
    },
  },
  
  {
    type = "technology",
    name = "evaporators",
    icon = "__NARMod__/graphics/icons/technology/evaporation.png",
    prerequisites =
    {
	  "electrolysis-1", "air-compressor"
    },
	unit =
    {
      count = 40,
      ingredients =
      {
        {"science-pack-1", 1},
      },
      time = 25
    },
	order = "a-a-b-c",
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "evaporator"
      },
	  {
        type = "unlock-recipe",
        recipe = "hydrogen-gas-to-atmosphere"
      },
	  {
        type = "unlock-recipe",
        recipe = "oxygen-gas-to-atmosphere"
      },
	  {
        type = "unlock-recipe",
        recipe = "water-evaporation"
      },
	  	  	  {
        type = "unlock-recipe",
        recipe = "nitrogen-gas-to-atmosphere"
      },
	  {
        type = "unlock-recipe",
        recipe = "co2-gas-to-atmosphere"
      },
	  {
        type = "unlock-recipe",
        recipe = "argon-gas-to-atmosphere"
      },
    },
  },
  
	{
		type = "technology",
		name= "tin-and-lead-processing",
		icon="__NARMod__/graphics/icons/technology/tin-lead-plate.png",
		prerequisites= {"advanced-material-processing"},
		unit=
		{
		  count= 20,
		  time= 10,
		  ingredients= {{"science-pack-1", 1}}
		},
		effects=
		{
		  {
			type = "unlock-recipe",
			recipe = "tin-concentrate"
		  },
		  {
			type = "unlock-recipe",
			recipe = "molten-tin"
		  },
		  {
			type = "unlock-recipe",
			recipe = "forge-tin"
		  },
		  {
			type = "unlock-recipe",
			recipe = "lead-concentrate"
		  },
		  {
			type = "unlock-recipe",
			recipe = "molten-lead"
		  },
		  {
			type = "unlock-recipe",
			recipe = "forge-lead"
		  },
		 {
			type = "unlock-recipe",
			recipe = "solder"
		  },
		},
		order = "a-a-c",
	},
	
	{
		type = "technology",
		name = "optics",
		icon = "__base__/graphics/technology/optics.png",
		unit=
		{
		  count= 20,
		  time= 10,
		  ingredients= {{"science-pack-1", 1}}
		},
		effects =
		{
		  {
			type = "unlock-recipe",
			recipe = "small-lamp"
		  }
		},
		order = "a-a-d",
  },
  
  {
		type = "technology",
		name = "cokery-manufacturing",
		icon = "__NARMod__/graphics/icons/technology/cokery-manufacturing.png",
		unit =
		{
			count = 30,
			ingredients = {{"science-pack-1", 1}},
			time = 15
		},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "tf-cokery"
			},
			{
				type = "unlock-recipe",
				recipe = "tf-charcoal"
			},
			{
				type = "unlock-recipe",
				recipe = "tf-coke-coal"
			},
			{
				type = "unlock-recipe",
				recipe = "tf-ash"
			},
		},
		order = "a-b-d",
	},
  
  -- RED SCIENCE TIER TWO RST2
  
  	{
		type = "technology",
		name = "automation-2",
		icon = "__base__/graphics/technology/automation.png",
		unit =
		{
		  count = 30,
		  ingredients = {{"science-pack-1", 1}},
		  time = 15
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "assembling-machine-2"
			},
		},
		prerequisites = {"automation"},
		order = "a-b-a",
	},
  
	{
		type = "technology",
		name = "blast-furnaces",
		icon = "__NARMod__/graphics/icons/technology/blast-furnaces.png",
		prerequisites= {"stone-walls","air-compressor"},
		unit =
		{
		  count = 30,
		  ingredients = {{"science-pack-1", 1}},
		  time = 15
		},
		effects =
		{
		  {
			type = "unlock-recipe",
			recipe = "crucible"
		},
		{
			type = "unlock-recipe",
			recipe = "blast-furnace"
		},
		{
			type = "unlock-recipe",
			recipe = "forge"
		 },
		  {
			type = "unlock-recipe",
			recipe = "molten-copper"
		  },
		  {
			type = "unlock-recipe",
			recipe = "copper-electrolysis"
		  },
		  {
			type = "unlock-recipe",
			recipe = "forge-copper"
		  }, 
		  {
			type = "unlock-recipe",
			recipe = "copper-cable"
		  }, 
		},
		order = "a-b-b"
	},
	
	{
		type = "technology",
		name = "steel-processing",
		icon = "__base__/graphics/technology/steel-processing.png",
		prerequisites= {"blast-furnaces","electrolysis-1","evaporators"},
		unit =
		{
		  count = 30,
		  ingredients = {{"science-pack-1", 1}},
		  time = 15
		},
		effects =
		{
		  {
			type = "unlock-recipe",
			recipe = "molten-iron"
		  },
		  {
			type = "unlock-recipe",
			recipe = "forge-steel"
		  },
		  {
			type = "unlock-recipe",
			recipe = "steel-chest"
		  },
		  {
			type = "unlock-recipe",
			recipe = "steel-axe"
		  },
		  {
				type = "unlock-recipe",
				recipe = "steel-parts"
		  },
		},
		order = "a-b-b-a"
	},
	
	
	{
		type = "technology",
		name = "extraction-technology",
		icon = "__NARMod__/graphics/icons/technology/extraction-technology.png",
		unit =
		{
		  count = 30,
		  ingredients = {{"science-pack-1", 1}},
		  time = 15
		},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "stone-sorter"
			},
			{
				type = "unlock-recipe",
				recipe = "quartz"
			},
			{
				type = "unlock-recipe",
				recipe = "limestone"
			},
			{
				type = "unlock-recipe",
				recipe = "clay"
			},
			{
				type = "unlock-recipe",
				recipe = "salt"
			},
			{
				type = "unlock-recipe",
				recipe = "phosphate-rock"
			},
			{
				type = "unlock-recipe",
				recipe = "tf-crushed-stone"
			},
		},
		order = "a-b-c"
	},
	
	{
    type = "technology",
    name = "chemical-processing-2",
    icon = "__NARMod__/graphics/icons/technology/chemistry.png",
    prerequisites =
    {
      "chemical-processing-1",
    },
	unit =
		{
		  count = 30,
		  ingredients = {{"science-pack-1", 1}},
		  time = 15
		},
    effects =
    {
		{
			type = "unlock-recipe",
			recipe = "potash"
		},
		{
			type = "unlock-recipe",
			recipe = "potassium-nitrate"
		},
		{
			type = "unlock-recipe",
			recipe = "sodium-hydroxide"
		},
    },
    order = "a-b-f"
  },
	
	{
		type = "technology",
		name = "air-compressor",
		icon = "__NARMod__/graphics/icons/air-pump.png",
		unit =
		{
		  count = 30,
		  ingredients = {{"science-pack-1", 1}},
		  time = 15
		},
		effects =
		{
		  {
			type = "unlock-recipe",
			recipe = "air-compressor"
		  },
		  {
			type = "unlock-recipe",
			recipe = "compressed-air"
		  },
		},
		order = "a-b-g",
	},
	
	
	-- RED SCIENCE TIER THREE RST3
  
	{
		type = "technology",
		name = "logistics",
		icon = "__base__/graphics/technology/logistics.png",
		prerequisites = {"automation-2", "steel-processing"},
		unit =
		{
		  count = 40,
		  ingredients = {{"science-pack-1", 1}},
		  time = 20
		},
		effects =
		{
		  {
			type = "unlock-recipe",
			recipe = "smart-chest"
		  },
		  {
			type = "unlock-recipe",
			recipe = "red-wire"
		  },
		  {
			type = "unlock-recipe",
			recipe = "green-wire"
		  },
		},
		order = "a-c-a",
  },

	{
		type = "technology",
		name = "stone-walls",
		icon = "__NARMod__/graphics/icons/technology/concrete-manufacturing.png",
		prerequisites =
		{
			"cokery-manufacturing",
			"extraction-technology",
		},
		unit =
			{
			  count = 40,
			  ingredients = {{"science-pack-1", 1}},
			  time = 20
			},
		effects =
		{
		  {
			type = "unlock-recipe",
			recipe = "cement"
		  },
		  {
			type = "unlock-recipe",
			recipe = "stone-brick"
		  },
		  {
			type = "unlock-recipe",
			recipe = "stone-wall"
		  },
		  {
				type = "unlock-recipe",
				recipe = "chemical-furnace"
		  },
		},
		order = "a-c-b"
  },  
  
  {
    type = "technology",
    name = "advanced-material-processing",
    icon = "__NARMod__/graphics/icons/technology/electric-furnaces.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "electric-furnace-2"
      }
    },
    prerequisites = {"stone-walls","steel-processing"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
      },
      time = 30
    },
    order = "a-c-c"
  },
  
	{
		type = "technology",
		name = "electronics",
		icon = "__base__/graphics/technology/electronics.png",
		prerequisites = {"tin-and-lead-processing","chemical-processing-1"},
		unit =
		{
			count = 40,
			ingredients = {{"science-pack-1", 1}},
			time = 20
		},
		effects =
		{
		  {
			type = "unlock-recipe",
			recipe = "fiberglass-substrate"
		  },
		  {
			type = "unlock-recipe",
			recipe = "tinned-copper-wire"
		  },
		  {
			type = "unlock-recipe",
			recipe = "resistors"
		  },
		  {
			type = "unlock-recipe",
			recipe = "inductors-2"
		  },
		  {
			type = "unlock-recipe",
			recipe = "capacitors"
		  },
		},
		unit =
		{
		  count = 30,
		  ingredients = {{"science-pack-1", 1}},
		  time = 15
		},
		order = "a-c-c",
  },
  
  {
    type = "technology",
    name = "sulfur-processing",
    icon = "__base__/graphics/technology/sulfur-processing.png",
    prerequisites = {"chemical-processing-2", "blast-furnaces"},
	unit =
    {
      count = 30,
      ingredients =
      {
        {"science-pack-1", 1},
      },
      time = 20
    },
	order = "a-c-c-a",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "copper-concentrate-with-sulfur"
      },
	  {
        type = "unlock-recipe",
        recipe = "sulfur-dioxide"
      },
	  {
        type = "unlock-recipe",
        recipe = "sulfuric-acid"
      },
    },
  },
  
  {
		type = "technology",
		name = "military",
		icon = "__base__/graphics/technology/military.png",
		prerequisites =
		{
			"cokery-manufacturing",
		},
		unit =
		{
			count = 30,
			ingredients = {{"science-pack-1", 1}},
			time = 15
		},
		effects =
		{
		  {
			type = "unlock-recipe",
			recipe = "submachine-gun"
		  },
		  {
			type = "unlock-recipe",
			recipe = "rifle-magazine"
		  },
		  {
			type = "unlock-recipe",
			recipe = "shotgun"
		  },
		  {
			type = "unlock-recipe",
			recipe = "shotgun-shell"
		  }
		},
		order = "a-c-d"
  },
  
  {
    type = "technology",
    name = "military-2",
    icon = "__base__/graphics/technology/military.png",
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "piercing-bullet-magazine"
      },
	  {
        type = "unlock-recipe",
        recipe = "heavy-machine-gun"
      },
    },
    prerequisites = {"military","zinc-and-brass-processing","chemical-processing-2","steel-processing"},
    unit =
    {
      count = 40,
      ingredients =
      {
        {"science-pack-1", 1},
      },
      time = 25
    },
	order = "a-c-e",
  },
  
  {
    type = "technology",
    name = "turrets",
    icon = "__base__/graphics/technology/turrets.png",
	prerequisites =
		{
			"military"
		},
	unit =
		{
			count = 20,
			ingredients = {{"science-pack-1", 1}},
			time = 15
		},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "gun-turret"
      },
    },
    order = "a-c-f"
  },
  
  {
    type = "technology",
    name = "advanced-electronics",
    icon = "__base__/graphics/technology/advanced-electronics.png",
	prerequisites = {"electronics"},
	unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
      },
      time = 20
    },
	order = "a-c-f",
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "advanced-circuit"
      },
    },
  },
  
  -- GREEN SCIENCE TIER ONE GST1
   
   {
    type = "technology",
    name = "engine",
    icon = "__NARMod__/graphics/icons/technology/electric-motor.png",
    prerequisites = {"steel-processing", "automation-2", "zinc-and-brass-processing"},
	unit =
    {
      count = 40,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
      },
      time = 25
    },
	order = "b-a-c",
	effects =
    {
      {
        type = "unlock-recipe",
        recipe = "electric-motor"
      }
    },
  },
  
  {
    type = "technology",
    name = "air-handling",
    icon = "__NARMod__/graphics/icons/technology/air-handling.png",
    prerequisites =
    {
	  "air-compressor",
	  "engine",
    },
	unit =
    {
      count = 40,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
      },
      time = 25
    },
	order = "b-a-e",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "heat-exchanger"
      },
	  {
        type = "unlock-recipe",
        recipe = "air-liquefaction"
      },
	  {
        type = "unlock-recipe",
        recipe = "air-separation-unit"
      },
	  {
        type = "unlock-recipe",
        recipe = "air-separation"
      },
	  {
        type = "unlock-recipe",
        recipe = "storage-tank"
      },
	  	  {
        type = "unlock-recipe",
        recipe = "dry-ice-to-co2-gas"
      },
    },
  },
  
  {
    type = "technology",
    name = "advanced-material-processing-2",
    icon = "__NARMod__/graphics/icons/technology/electric-furnaces.png",
    prerequisites =
    {
	  "advanced-material-processing",
    },
	unit =
    {
      count = 40,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
      },
      time = 25
    },
	order = "b-a-g",
    effects =
    {
    },
  },
  
  -- GREEN SCIENCE TIER TWO GST2
  
  {
    type = "technology",
    name = "arc-welding",
    icon = "__NARMod__/graphics/icons/technology/arc-welding.png",
    prerequisites =
    {
      "air-handling",
    },
	unit =
    {
      count = 45,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
      },
      time = 25
    },
	order = "b-b-a",
    effects =
    {
		{
				type = "unlock-recipe",
				recipe = "arc-welding-electrode"
		}
    },
  },
  
  {
    type = "technology",
    name = "oil-processing",
    icon = "__base__/graphics/technology/oil-gathering.png",
    prerequisites = {"arc-welding","chemical-processing-2"},
	unit =
    {
      count = 45,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
      },
      time = 25
    },
	order = "b-b-b",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pumpjack"
      },
      {
        type = "unlock-recipe",
        recipe = "oil-refinery"
      },
      {
        type = "unlock-recipe",
        recipe = "basic-oil-processing"
      },
    },
  },
  
  {
    type = "technology",
    name = "advanced-oil-processing",
    icon = "__base__/graphics/technology/oil-processing.png",
    prerequisites = {"oil-processing"},
	unit =
    {
      count = 45,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
      },
      time = 25
    },
	order = "b-b-c",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "advanced-oil-processing"
      },
      {
        type = "unlock-recipe",
        recipe = "heavy-oil-cracking"
      },
      {
        type = "unlock-recipe",
        recipe = "light-oil-cracking"
      }
    },
  },
  
  {
    type = "technology",
    name = "chemical-processing-3",
    icon = "__NARMod__/graphics/icons/technology/chemistry.png",
    prerequisites =
    {
      "chemical-processing-2","arc-welding","oil-processing",
    },
	unit =
    {
      count = 45,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
      },
      time = 25
    },
	order = "b-b-d",
    effects =
    {
		{
			type = "unlock-recipe",
			recipe = "chemical-plant"
		},
		{
        type = "unlock-recipe",
        recipe = "solid-fuel-from-light-oil"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-fuel-from-heavy-oil"
      },
	   {
        type = "unlock-recipe",
        recipe = "solid-fuel-from-petroleum-gas"
      },
	  {
        type = "unlock-recipe",
        recipe = "solid-fuel-from-hydrogen"
      },
	  {
        type = "unlock-recipe",
        recipe = "petroleum-gas-desulfurization"
      },
	  {
        type = "unlock-recipe",
        recipe = "lubricant"
      },
	  {
        type = "unlock-recipe",
        recipe = "ammonia"
      },
    },
  },
  
  {
    type = "technology",
    name = "barrels",
    icon = "__base__/graphics/icons/fluid/empty-barrel.png",
    prerequisites =
    {
      "steel-processing",
	  "oil-processing",
    },
	unit =
    {
      count = 45,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
      },
      time = 25
    },
	order = "b-b-e",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "empty-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-crude-oil-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-crude-oil-barrel"
      },
    },
  },
  
  {
    type = "technology",
    name = "electrolysis-2",
    icon = "__NARMod__/graphics/icons/technology/electrolysis.png",
    prerequisites =
    {
      "electrolysis-1",
    },
	unit =
    {
      count = 45,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
      },
      time = 25
    },
	order = "b-b-g",
    effects =
    {
      {
        type = "unlock-recipe",
		recipe = "pumpjack",
      },
	  {
        type = "unlock-recipe",
        recipe = "salt-water-electrolysis"
      },
	  {
        type = "unlock-recipe",
        recipe = "hydrogen-chloride"
      },
      {
        type = "unlock-recipe",
        recipe = "calcium-chloride"
      },
    },
  },
  
  {
    type = "technology",
    name = "logistics-2",
    icon = "__base__/graphics/technology/logistics.png",
	prerequisites = {"logistics","engine","zinc-and-brass-processing"},
	unit =
    {
      count = 45,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
      },
      time = 25
    },
	order = "b-b-h",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fast-transport-belt"
      },
      {
        type = "unlock-recipe",
        recipe = "fast-transport-belt-to-ground"
      },
      {
        type = "unlock-recipe",
        recipe = "fast-splitter"
      },
    },
  },
  
  {
    type = "technology",
    name = "electric-engine",
    icon = "__NARMod__/graphics/icons/technology/large-electric-motor.png",
    prerequisites = {"engine", "chemical-processing-3", "ceramics"},
	unit =
    {
      count = 45,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
      },
      time = 25
    },
	order = "b-b-i",
	effects =
    {
		{
        type = "unlock-recipe",
        recipe = "large-electric-motor"
      }
    },
  },
  
  {
    type = "technology",
    name = "ceramics",
    icon = "__NARMod__/graphics/icons/technology/ceramics.png",
    prerequisites =
    {
      "air-handling",
    },
	unit =
    {
      count = 45,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
      },
      time = 25
    },
	order = "b-b-j",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ceramic-plate"
      },
	  {
        type = "unlock-recipe",
        recipe = "silicon-nitride"
      },
      {
        type = "unlock-recipe",
        recipe = "ceramic-ball-bearing"
      },
      {
        type = "unlock-recipe",
        recipe = "ceramic-bearing"
      },
    },
  },
  
  {
    type = "technology",
    name = "railway",
    icon = "__base__/graphics/technology/railway.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "straight-rail"
      },
      {
        type = "unlock-recipe",
        recipe = "curved-rail"
      },
      {
        type = "unlock-recipe",
        recipe = "diesel-locomotive"
      }
    },
    prerequisites = {"logistics-2", "steel-processing", "engine"},
   unit =
    {
      count = 45,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
      },
      time = 25
    },
	order = "b-b-k",
  },
  {
    type = "technology",
    name = "automated-rail-transportation",
    icon = "__base__/graphics/technology/automated-rail-transportation.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "train-stop"
      },
      {
        type = "unlock-recipe",
        recipe = "cargo-wagon"
      }
    },
    prerequisites = {"railway"},
    unit =
    {
      count = 45,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
      },
      time = 25
    },
	order = "b-b-l",
  },
  {
    type = "technology",
    name = "rail-signals",
    icon = "__base__/graphics/technology/rail-signals.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "rail-signal"
      }
    },
    prerequisites = {"automated-rail-transportation"},
    unit =
    {
      count = 45,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
      },
      time = 25
    },
	order = "b-b-m",
  },
  {
    type = "technology",
    name = "automobilism",
    icon = "__NARMod__/graphics/icons/technology/military-vehicles.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "car"
      },
    },
    prerequisites = {"logistics-2", "engine"},
    unit =
    {
      count = 45,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
      },
      time = 25
    },
	order = "b-b-n",
  },
  
  {
    type = "technology",
    name = "laser",
    icon = "__NARMod__/graphics/icons/technology/laser.png",
    prerequisites = {"optics", "advanced-electronics","air-handling"},
	effects =
    {
      {
        type = "unlock-recipe",
        recipe = "co2-laser-emitter"
      },
    },
    unit =
    {
      count = 45,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
      },
      time = 25
    },
	order = "b-b-o",
    
  },
  {
    type = "technology",
    name = "laser-turrets",
    icon = "__base__/graphics/technology/laser-turrets.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "laser-turret"
      }
    },
    prerequisites = {"turrets", "laser"},
    unit =
    {
      count = 45,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
      },
      time = 25
    },
	order = "b-b-p",
  },
  
    -- GREEN SCIENCE TIER THREE GST3
  
  {
    type = "technology",
    name = "synthetic-rubber",
    icon = "__NARMod__/graphics/icons/technology/synthetic-rubber.png",
    prerequisites = {"chemical-processing-3"},
	unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
      },
      time = 30
    },
	order = "b-c-c",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "butadiene"
      },
      {
        type = "unlock-recipe",
        recipe = "hexane"
      },
      {
        type = "unlock-recipe",
        recipe = "rubber"
      },
	  {
        type = "unlock-recipe",
        recipe = "insulated-copper-wire"
      },
    },
  },
  
  {
    type = "technology",
    name = "zinc-and-brass-processing",
    icon = "__NARMod__/graphics/icons/technology/zinc-and-brass-processing.png",
    prerequisites =
    {
	  "tin-and-lead-processing",
    },
	unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
      },
      time = 30
    },
	order = "b-c-d",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "zinc-concentrate"
      },
	  {
        type = "unlock-recipe",
        recipe = "zinc-oxide"
      },
	  {
        type = "unlock-recipe",
        recipe = "pure-zinc-isp"
      },
	  {
        type = "unlock-recipe",
        recipe = "pure-zinc-melt"
      },
	  {
        type = "unlock-recipe",
        recipe = "zinc-sulphate"
      },
	  {
        type = "unlock-recipe",
        recipe = "zinc-electrolysis"
      },
	  {
        type = "unlock-recipe",
        recipe = "forge-zinc"
      },
	    {
        type = "unlock-recipe",
        recipe = "brass-plate"
		},
	  {
        type = "unlock-recipe",
        recipe = "brass-ball-bearing"
      },
	  {
        type = "unlock-recipe",
        recipe = "brass-bearing"
      },	
    },
  },
  
  {
    type = "technology",
    name = "solar-energy",
    icon = "__base__/graphics/technology/solar-energy.png",
    prerequisites = {"optics","zinc-and-brass-processing", "synthetic-rubber", "ceramics"},
	unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
      },
      time = 30
    },
	order = "b-c-e",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "polycrystalline-silicon-plate"
      },
	  {
        type = "unlock-recipe",
        recipe = "photovoltaic-cell"
      },
	  {
        type = "unlock-recipe",
        recipe = "solar-panel"
      }
    },
  },
  
  {
    type = "technology",
    name = "electric-energy-accumulators-1",
    icon = "__base__/graphics/technology/electric-energy-acumulators.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "basic-accumulator"
      }
    },
    prerequisites = {"solar-energy",},
    unit =
    {
      count = 60,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
    order = "b-c-e-a",
  },
  
  {
	type = "technology",
    name= "gold-processing",
    prerequisites= {"advanced-material-processing-2","electrolysis-2"},
	unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
      },
      time = 30
    },
	order = "b-c-f",
	icon="__NARMod__/graphics/icons/technology/gold-processing.png",
    effects=
    {
	  {
        type= "unlock-recipe",
        recipe= "ammonia"
      },
	  {
        type= "unlock-recipe",
        recipe= "methane"
      },
	  {
        type= "unlock-recipe",
        recipe= "cyanide"
      },
	  {
        type= "unlock-recipe",
        recipe= "sodium-cyanide"
      },
	  {
        type= "unlock-recipe",
        recipe= "gold-cyanide-solution"
      },
	  	  {
        type= "unlock-recipe",
        recipe= "gold-concentrate"
      },
	  {
        type= "unlock-recipe",
        recipe= "pure-gold"
      },
      {
        type= "unlock-recipe",
        recipe= "forge-gold"
      },
    }
  },
  
  {
	type = "technology",
    name= "aluminium-processing",
    prerequisites= {"advanced-material-processing-2"},
	unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
      },
      time = 30
    },
	order = "b-c-g",
	icon="__NARMod__/graphics/icons/plate/aluminium-plate.png",
    effects=
    {
      {
        type= "unlock-recipe",
        recipe= "bauxite-concentrate"
      },
	  {
        type= "unlock-recipe",
        recipe= "aluminate"
      },
	  {
        type= "unlock-recipe",
        recipe= "molten-aluminium-hydroxide"
      },
	  {
        type= "unlock-recipe",
        recipe= "molten-aluminium-oxide"
      },
      {
        type= "unlock-recipe",
        recipe= "molten-aluminium"
      },
      	  {
        type= "unlock-recipe",
        recipe= "aluminium-plate"
      },
      	  {
        type= "unlock-recipe",
        recipe= "pressure-vessel"
      },
    },
   },
   
   {
    type = "technology",
    name = "explosives",
    icon = "__base__/graphics/technology/explosives.png",
    prerequisites = {"sulfur-processing"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
      },
      time = 30
    },
	order = "b-c-h",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "nitrogen-dioxide"
      },
      {
        type = "unlock-recipe",
        recipe = "nitric-acid"
      },
	  {
        type = "unlock-recipe",
        recipe = "nitroglycerin"
      },
	  {
        type = "unlock-recipe",
        recipe = "explosives"
      },
	  {
        type = "unlock-recipe",
        recipe = "basic-grenade"
      },
    },
  },
  
  {
    type = "technology",
    name = "land-mine",
    icon = "__base__/graphics/technology/land-mine.png",
	unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
      },
      time = 30
    },
	order = "b-c-i",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "land-mine"
      }
    },
    prerequisites = {"explosives", "military-2"},
  },
  
  {
    type = "technology",
    name = "flammables",
    icon = "__base__/graphics/technology/flammables.png",
    prerequisites = {"oil-processing", "aluminium-processing"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
      },
      time = 30
    },
	order = "b-c-j",
	effects =
    {
      {
        type = "unlock-recipe",
        recipe = "flame-thrower-ammo"
      }
    },
  },
  
  {
    type = "technology",
    name = "flame-thrower",
    icon = "__base__/graphics/technology/flame-thrower.png",
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
      },
      time = 30
    },
	order = "b-c-k",
	effects =
    {
      {
        type = "unlock-recipe",
        recipe = "flame-thrower"
      },
    },
    prerequisites = {"flammables", "military-2"},
  },
  
  {
    type = "technology",
    name = "rocketry",
    icon = "__base__/graphics/technology/rocketry.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "rocket-launcher"
      },
	  {
        type = "unlock-recipe",
        recipe = "solid-rocket-fuel"
      },
      {
        type = "unlock-recipe",
        recipe = "rocket"
      }
    },
    prerequisites = {"electronics", "flammables", "explosives"},
    unit = 
	{
      count = 80,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
      },
      time = 30
    },
	order = "b-c-l",
  },
  
  {
    type = "technology",
    name = "flying",
    icon = "__base__/graphics/technology/flying.png",
    prerequisites = {"engine", "advanced-electronics"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
	order = "b-c-m",
  },
  
  {
    type = "technology",
    name = "advanced-electronics-2",
    icon = "__base__/graphics/technology/advanced-electronics.png",
    prerequisites = {"advanced-electronics","gold-processing","oil-processing"},
    effects = {
		{
        type = "unlock-recipe",
        recipe = "superior-fiberglass-substrate"
		},
		{
        type = "unlock-recipe",
        recipe = "epoxy"
		},
	    {
        type = "unlock-recipe",
        recipe = "gilded-copper-wire"
		},
		{
        type = "unlock-recipe",
        recipe = "ferric-chloride-solution"
		},
	},
	unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
	order = "b-c-n",
  },
  
  {
    type = "technology",
    name = "advanced-electronics-3",
    icon = "__NARMod__/graphics/icons/technology/monocrystalline-silicon.png",
    prerequisites =
    {
      "advanced-electronics-2"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "monocrystalline-silicon-plate"
      },
	  {
        type= "unlock-recipe",
        recipe= "silicon-wafer"
      },
	  
	  {
        type= "unlock-recipe",
        recipe= "hermetically-sealed-assembler"
      },
	  {
			type= "unlock-recipe",
			recipe= "doping-solution"
		},
	  {
        type = "unlock-recipe",
        recipe = "integrated-circuit"
      },
	  
	  {
        type = "unlock-recipe",
        recipe = "processing-unit"
      },
    },
	unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 40
    },
	order = "b-c-o",
},

{
    type = "technology",
    name = "modules",
    icon = "__base__/graphics/technology/module.png",
    prerequisites = {"advanced-electronics-2"},
	effects =
    {
      {
        type = "unlock-recipe",
        recipe = "module-case-mk1"
      },
	  {
        type= "unlock-recipe",
        recipe= "module-contact"
      },
	  	  {
        type= "unlock-recipe",
        recipe= "speed-module"
      },
	  {
        type= "unlock-recipe",
        recipe= "effectivity-module"
      },
	  {
        type= "unlock-recipe",
        recipe= "productivity-module"
      },
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
	order = "b-c-p",
  },
   
   -- BLUE PACK TIER 1
   
   {
    type = "technology",
    name = "modules-2",
    icon = "__base__/graphics/technology/module.png",
    prerequisites = {"modules","advanced-electronics-4"},
	effects =
    {
      {
        type = "unlock-recipe",
        recipe = "module-case-mk2"
      },
	  {
        type = "unlock-recipe",
        recipe = "module-case-mk3"
      },
	},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 30
    },
	order = "c-a-g",
  },
   
   {
	type = "technology",
    name= "lithium-processing",
    prerequisites= {"advanced-material-processing-2","electrolysis-2"},
	icon="__NARMod__/graphics/icons/plate/lithium-plate.png",
    effects=
    {
	  {
        type= "unlock-recipe",
        recipe= "lithium-chloride"
      },
	  {
        type= "unlock-recipe",
        recipe= "lithium-perchlorate"
      },
	  {
        type= "unlock-recipe",
        recipe= "lithium-plate"
      },
	},
	unit =
    {
      count = 80,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 30
    },
	order = "c-a-a-d",
  },
  
  {
	type = "technology",
    name= "titanium-processing",
    prerequisites= {"advanced-material-processing-2"},
	icon="__NARMod__/graphics/icons/technology/titanium-processing.png",
    unit=
    {
      count= 75,
      time= 30,
      ingredients= { {"science-pack-1", 1}, {"science-pack-2", 1},{"science-pack-3", 1}}
    },
    effects=
    {
		{
			type= "unlock-recipe",
			recipe= "titanium-concentrate"
		},
		{
			type= "unlock-recipe",
			recipe= "titanium-tetrachloride"
		},
		{
			type= "unlock-recipe",
			recipe= "pure-titanium"
		},
		{
			type= "unlock-recipe",
			recipe= "forge-titanium"
		},
		{
			type= "unlock-recipe",
			recipe= "titanium-axe"
		},
	},
	unit =
    {
      count = 80,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 30
    },
	order = "c-a-c",
  },
  
  {
	type = "technology",
    name= "tungsten-processing",
    prerequisites= {"advanced-material-processing-2"},
	icon="__NARMod__/graphics/icons/technology/tungsten-processing.png",
    unit=
    {
      count= 75,
      time= 30,
      ingredients= { {"science-pack-1", 1}, {"science-pack-2", 1},{"science-pack-3", 1}}
    },
    effects=
    {
		{
        type= "unlock-recipe",
        recipe= "tungstic-acid"
      },
	  {
        type= "unlock-recipe",
        recipe= "tungsten-oxide"
      },
	  {
        type= "unlock-recipe",
        recipe= "powdered-tungsten"
      },
	  {
        type= "unlock-recipe",
        recipe= "tungsten-carbide-plate"
      },
	  {
        type= "unlock-recipe",
        recipe= "copper-tungsten-plate"
      },
	  {
        type= "unlock-recipe",
        recipe= "tungsten-parts"
      },
	},
	unit =
    {
      count = 80,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 30
    },
	order = "c-a-d",
  },
  
  {
	type = "technology",
    name= "cobalt-processing",
    prerequisites= {"advanced-material-processing-2"},
	icon="__NARMod__/graphics/icons/technology/cobalt-processing.png",
    effects=
    {
	  {
        type= "unlock-recipe",
        recipe= "cobalt-concentrate"
      },
	  {
        type= "unlock-recipe",
        recipe= "cobalt-oxide"
      },
    },
	unit =
    {
      count = 80,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 30
    },
	order = "c-a-e",
  },
  
  {
		type = "technology",
		name = "biotechnology",
		icon = "__NARMod__/graphics/icons/technology/biotechnology.png",
		prerequisites = {"advanced-electronics-2", "air-handling"},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "tf-bioreactor"
			},
			{
				type = "unlock-recipe",
				recipe = "magnesium-chloride"
			},
			{
				type = "unlock-recipe",
				recipe = "magnesium-oxide"
			},
			{
				type = "unlock-recipe",
				recipe = "epsomite"
			},
			{
				type = "unlock-recipe",
				recipe = "nutrient-solution"
			},
			{
				type = "unlock-recipe",
				recipe = "cellulose"
			},
		},
		unit = {
			count = 100,
			ingredients = {
				{"science-pack-1", 2},
				{"science-pack-2", 2},
				{"science-pack-3", 1}
			},
			time = 30
		},
		order = "c-a-h",
	},
	
	{
		type = "technology",
		name = "fertilizer",
		icon = "__NARMod__/graphics/icons/technology/fertilizer.png",
		prerequisites = {"biotechnology"},
		effects = {
				{
					type = "unlock-recipe",
					recipe = "nitrogen-fertilizer"
				},
				{
					type = "unlock-recipe",
					recipe = "phosphate-rock"
				},
				{
					type = "unlock-recipe",
					recipe = "phosphate-fertilizer"
				},
				{
					type = "unlock-recipe",
					recipe = "potassium-chloride-1"
				},
				{
					type = "unlock-recipe",
					recipe = "potassium-chloride-2"
				},
				{
					type = "unlock-recipe",
					recipe = "potassium-fertilizer"
				},
				{
					type = "unlock-recipe",
					recipe = "fertilizer"
				},
		},
		unit = {
			count = 100,
			ingredients = {
				{"science-pack-1", 2},
				{"science-pack-2", 2},
				{"science-pack-3", 1}
			},
			time = 30
		},
		order = "c-a-h-a",
	},
	
	{
    type = "technology",
    name = "chemical-processing-4",
    icon = "__NARMod__/graphics/icons/technology/chemistry.png",
    prerequisites =
    {
      "chemical-processing-3",
    },
    effects =
    {
		{
			type= "unlock-recipe",
			recipe= "sodium-sulfite"
		},
		{
			type= "unlock-recipe",
			recipe= "hydroquinone"
		},
		{
			type= "unlock-recipe",
			recipe= "photoresist-solution"
		},
		{
			type= "unlock-recipe",
			recipe= "developer-solution"
		},
    },
	unit = {
			count = 100,
			ingredients = {
				{"science-pack-1", 2},
				{"science-pack-2", 2},
				{"science-pack-3", 1}
			},
			time = 30
		},
		order = "c-a-i",
  },
  
  {
    type = "technology",
    name = "military-3",
    icon = "__base__/graphics/technology/military.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "poison-capsule"
      },
      {
        type = "unlock-recipe",
        recipe = "slowdown-capsule"
      },
      {
        type = "unlock-recipe",
        recipe = "combat-shotgun"
      }
    },
    prerequisites = {"military-2", "gold-processing", "advanced-electronics-2"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 2},
        {"science-pack-3", 1}
      },
      time = 30
    },
    order = "c-a-j"
  },
  
  -- BLUE SCIENCE TIER TWO
  
  {
    type = "technology",
    name = "battery",
    icon = "__NARMod__/graphics/icons/battery.png",
    prerequisites =
    {
      "lithium-processing",
      "cobalt-processing",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "lithium-cobalt-oxide"
      },
	  {
        type = "unlock-recipe",
        recipe = "battery"
      },
    },
	unit = {
			count = 100,
			ingredients = {
				{"science-pack-1", 2},
				{"science-pack-2", 2},
				{"science-pack-3", 1}
			},
			time = 40
		},
		order = "c-b-a",
  },
  
  {
		type = "technology",
		name = "hydroponics",
		icon = "__NARMod__/graphics/icons/technology/hydroponic-farms.png",
		prerequisites = {"biotechnology"},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "tf-biolab"
			},
			{
				type = "unlock-recipe",
				recipe = "biomass"
			},
		},

		unit = {
			count = 100,
			ingredients = {
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1}
			},
			time = 40
		},
		order = "c-b-b",
	},

	{
		type = "technology",
		name = "organic-plastic",
		icon = "__NARMod__/graphics/icons/cellulose.png",
		prerequisites = {"biotechnology"},
		effects = {
			{
				type = "unlock-recipe",
				recipe = "organic-plastic"
			}
		},

		unit = {
			count = 100,
			ingredients = {
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1}
			},
			time = 40
		},
		order = "c-b-c",
	},

	{
		type = "technology",
		name = "medicine",
		icon = "__NARMod__/graphics/icons/healing-pack.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "healing-pack"
			}
		},
		prerequisites = {
			"biotechnology"
		},
		unit = {
			count = 75,
			ingredients = {
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1}
			},
			time = 45
		},
		order = "c-b-d",
	},

	{
		type = "technology",
		name = "advanced-treefarming",
		icon = "__NARMod__/graphics/icons/fieldmk2.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "tf-fieldmk2"
			}
		},
		prerequisites = {
			"construction-robotics",
			"logistic-robotics"
		},
		unit = {
			count = 100,
			ingredients = {
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1}
			},
			time = 30
		},
		order = "c-b-e",
	},
	
	{
    type = "technology",
    name = "automation-3",
    icon = "__base__/graphics/technology/automation.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "assembling-machine-3"
      }
    },
    prerequisites = {"speed-module", "automation-2"},
    unit =
    {
      count = 100,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}},
      time = 60
    },
    order = "c-b-f"
  },
  
  {
    type = "technology",
    name = "advanced-electronics-4",
    icon = "__NARMod__/graphics/icons/technology/microchip-fabrication.png",
    prerequisites = {"advanced-electronics-3", "chemical-processing-4"},
    effects =
    {
		{
			type = "unlock-recipe",
			recipe = "microchip"
		},
		{
			type = "unlock-recipe",
			recipe = "cpu"
		},
		{
			type = "unlock-recipe",
			recipe = "fr4-substrate"
		},
		{
			type = "unlock-recipe",
			recipe = "bromine"
		},
		{
			type = "unlock-recipe",
			recipe = "heatsink"
		},
		{
			type = "unlock-recipe",
			recipe = "motherboard"
		},
    },
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    order = "c-b-g",
  },
  
  {
    type = "technology",
    name = "logistics-3",
    icon = "__base__/graphics/technology/logistics.png",
	prerequisites = {"logistics-2", "tungsten-processing","ceramics"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "express-transport-belt"
      },
      {
        type = "unlock-recipe",
        recipe = "express-transport-belt-to-ground"
      },
      {
        type = "unlock-recipe",
        recipe = "express-splitter"
      }
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    },
    order = "c-b-h",
  },
  
  {
    type = "technology",
    name = "robotics",
    icon = "__base__/graphics/technology/robotics.png",
    prerequisites = {"flying", "engine", "battery"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 30
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "flying-robot-frame"
      }
    },
	order = "c-b-i",
  },
  
  {
    type = "technology",
    name = "construction-robotics",
    icon = "__base__/graphics/technology/construction-robotics.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "roboport"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-passive-provider"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-storage"
      },
      {
        type = "unlock-recipe",
        recipe = "construction-robot"
      },
      {
        type = "ghost-time-to-live",
        modifier = 60 * 60 * 5
      }
    },
    prerequisites = {"robotics", "flying"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 30
    },
	order = "c-b-j",
  },
  {
    type = "technology",
    name = "automated-construction",
    icon = "__base__/graphics/technology/automated-construction.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "blueprint"
      },
      {
        type = "unlock-recipe",
        recipe = "deconstruction-planner"
      },
      {
        type = "ghost-time-to-live",
        modifier = 60 * 60 * 5
      }
    },
    prerequisites = {"construction-robotics"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 30
    },
	order = "c-b-k",
  },
  
  {
    type = "technology",
    name = "logistic-robotics",
    icon = "__base__/graphics/technology/logistic-robotics.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "roboport"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-passive-provider"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-robot"
      }
    },
    prerequisites = {
      "robotics",
      "flying"
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 30
    },
	order = "c-b-l",
  },

  {
    type = "technology",
    name = "logistic-system",
    icon = "__base__/graphics/technology/logistic-system.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-active-provider"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-requester"
      }
    },
    prerequisites = { "logistic-robotics"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 30
    },
	order = "c-b-m",
  },
  
  {
    type = "technology",
    name = "military-4",
    icon = "__base__/graphics/technology/military.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "piercing-shotgun-shell"
      },
    },
    prerequisites = {"military-3"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 2},
        {"science-pack-3", 1},
      },
      time = 45
    },
    order = "c-b-n"
  },
  
  {
    type = "technology",
    name = "explosive-rocketry",
    icon = "__base__/graphics/technology/explosive-rocketry.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "explosive-rocket"
      }
    },
    prerequisites = {"rocketry","military-3"},
	unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 30
    },
	order = "c-b-o",
  }, 
  
  {
    type = "technology",
    name = "rocket-travel",
    icon = "__NARMod__/graphics/icons/technology/space-travel.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "lox-kerosene-propellant"
      },
	  {
        type = "unlock-recipe",
        recipe = "lox-hydrogen-propellant"
      },
    },
    prerequisites = {"rocketry"},
	unit =
    {
      count = 300,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 30
    },
	order = "c-b-p",
  }, 
  
  
})
