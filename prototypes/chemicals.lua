

data:extend(
{

	-- AMMONIA

   {
    type = "fluid",
    name = "ammonia",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.4, g=0, b=0.4},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__NARMod__/graphics/icons/ammonia.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-e[ammonia]"
  },
  
  {
    type = "recipe",
    name = "ammonia",
    category = "chemistry",
    energy_required = 5,
    ingredients =
    {
      {type="fluid", name="hydrogen-gas", amount=1},
	  {type="fluid", name="nitrogen-gas", amount=1}
    },
    results=
    {
		{type="fluid", name="ammonia", amount=1},
    },
    icon = "__NARMod__/graphics/icons/ammonia.png",
    subgroup = "chemistry",
    enabled = "false",
    order = "b[fluid-chemistry]-c[ammonia]"
  },
  
  -- CYANIDE

   {
    type = "fluid",
    name = "cyanide",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.4, g=0, b=0.4},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__NARMod__/graphics/icons/cyanide.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-e[cyanide]"
  },
  
  {
    type = "recipe",
    name = "cyanide",
    category = "chemistry",
    energy_required = 5,
    ingredients =
    {
      {type="fluid", name="ammonia", amount=1},
	  {type="fluid", name="methane", amount=1}
    },
    results=
    {
		{type="fluid", name="cyanide", amount=1},
    },
    icon = "__NARMod__/graphics/icons/cyanide.png",
    subgroup = "chemistry",
    enabled = "false",
    order = "b[fluid-chemistry]-c[cyanide]"
  },
  
  -- SODIUM CYANIDE

  {
    type = "item",
    name = "sodium-cyanide",
    icon = "__NARMod__/graphics/icons/sodium-cyanide-2.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "chemistry",
    order = "f[sodium-cyanide]",
    stack_size = 50
  },
  
  {
    type = "recipe",
    name = "sodium-cyanide",
    category = "chemistry",
    energy_required = 5,
    ingredients =
    {
      {type="item", name="salt", amount=1},
	  {type="fluid", name="cyanide", amount=1}
    },
    results=
    {
		{type="item", name="sodium-cyanide", amount=1},
    },
    icon = "__NARMod__/graphics/icons/sodium-cyanide-2.png",
    subgroup = "chemistry",
    enabled = "false",
    order = "b[fluid-chemistry]-c[sodium-cyanide]"
  },
  
  -- METHANE

   {
    type = "fluid",
    name = "methane",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.4, g=0, b=0.4},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__NARMod__/graphics/icons/methane.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-e[methane]"
  },
  
  {
    type = "recipe",
    name = "methane",
    category = "chemistry",
    energy_required = 5,
    ingredients =
    {
      {type="fluid", name="hydrogen-gas", amount=8},
	  {type="fluid", name="co2-gas", amount=1}
    },
    results=
    {
		{type="fluid", name="methane", amount=1},
		{type="fluid", name="water", amount=2},
    },
    icon = "__NARMod__/graphics/icons/methane.png",
    subgroup = "chemistry",
    enabled = "false",
    order = "b[fluid-chemistry]-c[methane]"
  },
  
  -- PHOTORESIST SOLUTION
  
  {
    type = "fluid",
    name = "photoresist-solution",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.4, g=0, b=0.4},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__NARMod__/graphics/icons/photoresist-solution.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-e[photoresist-solution]"
  },
  
  {
    type = "recipe",
    name = "photoresist-solution",
    category = "chemistry",
    energy_required = 10,
    ingredients =
    {
      {type="fluid", name="petroleum-gas", amount=1},
	  {type="fluid", name="water", amount=1}
    },
    results=
    {
		{type="fluid", name="photoresist-solution", amount=5},
    },
    icon = "__NARMod__/graphics/icons/photoresist-solution.png",
    subgroup = "chemicals-microchip",
    enabled = "false",
    order = "b[fluid-chemistry]-c[photoresist-solution]"
  },
	
	
	-- SODIUM SULFITE
	
	{
    type = "fluid",
    name = "sodium-sulfite",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.4, g=0, b=0.4},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__NARMod__/graphics/icons/sodium-sulfite.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-e[sodium-sulfite]"
  },
  
  {
    type = "recipe",
    name = "sodium-sulfite",
    category = "chemistry",
    energy_required = 5,
    ingredients =
    {
      {type="item", name="sodium-hydroxide", amount=2},
	  {type="fluid", name="sulfur-dioxide", amount=1}
    },
    results=
    {
		{type="fluid", name="sodium-sulfite", amount=1},
		{type="fluid", name="water", amount=1},
    },
    icon = "__NARMod__/graphics/icons/sodium-sulfite.png",
    subgroup = "chemistry",
    enabled = "false",
    order = "b[fluid-chemistry]-c[sodium-sulfite]"
  },
	
	-- HYDROQUINONE
	
	{
    type = "fluid",
    name = "hydroquinone",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.4, g=0, b=0.4},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__NARMod__/graphics/icons/hydroquinone.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-e[hydroquinone]"
  },
  
  {
    type = "recipe",
    name = "hydroquinone",
    category = "chemistry",
    energy_required = 5,
    ingredients =
    {
      {type="fluid", name="heavy-oil", amount=3},
	  {type="fluid", name="light-oil", amount=3}
    },
    results=
    {
		{type="fluid", name="hydroquinone", amount=1},
    },
    icon = "__NARMod__/graphics/icons/hydroquinone.png",
    subgroup = "chemistry",
    enabled = "false",
    order = "b[fluid-chemistry]-c[hydroquinone]"
  },
  
  -- DEVELOPER SOLUTION
  
  {
    type = "fluid",
    name = "developer-solution",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.4, g=0, b=0.4},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__NARMod__/graphics/icons/developer-solution.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-e[developer-solution]"
  },
  
  {
    type = "recipe",
    name = "developer-solution",
    category = "chemistry",
    energy_required = 10,
    ingredients =
    {
      {type="fluid", name="hydroquinone", amount=3},
	  {type="fluid", name="sodium-sulfite", amount=1},
	  {type="item", name="sodium-hydroxide", amount=1},
    },
    results=
    {
		{type="fluid", name="developer-solution", amount=5},
    },
    icon = "__NARMod__/graphics/icons/developer-solution.png",
    subgroup = "chemicals-microchip",
    enabled = "false",
    order = "b[fluid-chemistry]-c[developer-solution]"
  },
  
  -- DOPING SOLUTION
  
  {
    type = "fluid",
    name = "doping-solution",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.4, g=0, b=0.4},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__NARMod__/graphics/icons/doping-solution.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-e[doping-solution]"
  },
  
  {
    type = "recipe",
    name = "doping-solution",
    category = "chemistry",
    energy_required = 10,
    ingredients =
    {
      {type="item", name="aluminium-plate", amount=1},
	  {type="item", name="sulfur", amount=1},
	  {type="fluid", name="water", amount=5},
    },
    results=
    {
		{type="fluid", name="doping-solution", amount=5},
    },
    icon = "__NARMod__/graphics/icons/doping-solution.png",
    subgroup = "chemicals-microchip",
    enabled = "false",
    order = "b[fluid-chemistry]-c[doping-solution]"
  },
  
  -- NITROGLYCERIN
  
  {
    type = "fluid",
    name = "nitroglycerin",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.4, g=0, b=0.4},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__NARMod__/graphics/icons/nitroglycerin.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-e[nitroglycerine]"
  },
	
	{
    type = "recipe",
    name = "nitroglycerin",
    category = "chemistry",
    energy_required = 10,
    ingredients =
    {
		{type="fluid", name="sulfuric-acid", amount=5},
		{type="fluid", name="nitric-acid", amount=5},
    },
    results=
    {
		{type="fluid", name="nitroglycerin", amount=5},
    },
    icon = "__NARMod__/graphics/icons/nitroglycerin.png",
    subgroup = "chemistry",
    enabled = "false",
    order = "b[fluid-chemistry]-c[nitroglycerin]"
  },
  
  -- EXPLOSIVES
  
  {
    type = "recipe",
    name = "explosives",
    category = "chemistry",
    energy_required = 10,
    ingredients =
    {
		{type="fluid", name="nitroglycerin", amount=9},
		{type="item", name="clay", amount=3},
    },
    results=
    {
		{type="item", name="explosives", amount=3},
    },
    icon = "__base__/graphics/icons/explosives.png",
    subgroup = "chemistry",
    enabled = "false",
    order = "b[fluid-chemistry]-c[explosives]"
  },
  
  -- HYDROGEN SULFIDE
  
  {
    type = "fluid",
    name = "hydrogen-sulfide",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.4, g=0, b=0.4},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__NARMod__/graphics/icons/hydrogen-sulfide.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-e[hydrogen-sulfide]"
  },
	
	-- SULFUR
	
	{
    type = "recipe",
    name = "claus-process",
    category = "chemistry",
    energy_required = 10,
    ingredients =
    {
		{type="fluid", name="hydrogen-sulfide", amount=10},
      {type="fluid", name="oxygen-gas", amount=5},
    },
    results=
    {
		{type="item", name="sulfur", amount=10},
		{type="fluid", name="water", amount=5},
    },
    icon = "__base__/graphics/icons/sulfur.png",
    subgroup = "chemistry",
    enabled = "false",
    order = "b[fluid-chemistry]-c[sulfur]"
  },
  
  -- HEXANE
  
  {
    type = "fluid",
    name = "hexane",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.4, g=0, b=0.4},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__NARMod__/graphics/icons/hexane.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-e[hexane]"
  },
	
	{
    type = "recipe",
    name = "hexane",
    category = "chemistry",
    energy_required = 10,
    ingredients =
    {
      {type="fluid", name="petroleum-gas", amount=5},
    },
    results=
    {
		{type="fluid", name="hexane", amount=5},
    },
    icon = "__NARMod__/graphics/icons/hexane.png",
    subgroup = "chemistry",
    enabled = "false",
    order = "b[fluid-chemistry]-c[hexane]"
  },
  
  -- BUTADIENE
  
  {
    type = "fluid",
    name = "butadiene",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.4, g=0, b=0.4},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__NARMod__/graphics/icons/butadiene.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-e[butadiene]"
  },
	
	{
    type = "recipe",
    name = "butadiene",
    category = "chemistry",
    energy_required = 10,
    ingredients =
    {
      {type="fluid", name="petroleum-gas", amount=5},
    },
    results=
    {
		{type="fluid", name="butadiene", amount=5},
		{type="fluid", name="hydrogen-gas", amount=10},
    },
    icon = "__NARMod__/graphics/icons/butadiene.png",
    subgroup = "chemistry",
    enabled = "false",
    order = "b[fluid-chemistry]-c[butadiene]"
  },
	
	-- SOLID FUEL FROM HYDROGEN
	
	{
    type = "recipe",
    name = "solid-fuel-from-hydrogen",
    category = "chemistry",
    energy_required = 3,
    ingredients =
    {
      {type="fluid", name="hydrogen-gas", amount=25}
    },
    results=
    {
      {type="item", name="solid-fuel", amount=1}
    },
    icon = "__NARMod__/graphics/icons/solid-fuel-from-hydrogen.png",
    subgroup = "power-fuels",
    enabled = "false",
    order = "b[fluid-chemistry]-c[solid-fuel-from-hydrogen]"
  },

	-- WATER ELECTROLYSIS
	
  {
    type = "recipe",
    name = "water-electrolysis",
    category = "electrolysis",
    enabled = "false",
    energy_required = 0.5,
    ingredients =
    {
      {type="fluid", name="water", amount=1}
    },
    results=
    {
      {type="fluid", name="hydrogen-gas", amount=1},
      {type="fluid", name="oxygen-gas", amount=0.5}
    },
    subgroup = "chemical-electrolysis",
    icon = "__NARMod__/graphics/icons/water-electrolysis.png",
    order = "b[fluid-chemistry]-b[water-electrolysis]"
  },
  
  	-- SODIUM HYDROXIDE --
	{
		type = "recipe",
		name = "sodium-hydroxide",
		category = "chemical-furnace",
		energy_required = 5,
		icon = "__NARMod__/graphics/icons/sodium-hydroxide.png",
		ingredients =
		{
		  {type="fluid", name="water", amount=3},
		  {type="item", name="tf-ash", amount=2},
		},
		results=
		{
			{type="item", name="sodium-hydroxide", amount=1}
		},
		enabled = "false"
	},
	
	  
  {
    type = "item",
    name = "sodium-hydroxide",
    icon = "__NARMod__/graphics/icons/sodium-hydroxide.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "organic-chemicals",
    order = "f[sodium-hydroxide]",
    stack_size = 50
  },

	-- SALT WATER ELECTROLYSIS
  
  {
    type = "recipe",
    name = "salt-water-electrolysis",
    category = "electrolysis",
    enabled = "false",
    energy_required = 1,
    ingredients =
    {
      {type="fluid", name="brine-water", amount=2}
    },
    results=
    {
      {type="item", name="sodium-hydroxide", amount=1},
      {type="fluid", name="chlorine", amount=1},
      {type="fluid", name="hydrogen-gas", amount=1},
    },
    icon = "__NARMod__/graphics/icons/salt-water-electrolysis.png",
    subgroup = "chemical-electrolysis",
    order = "b[fluid-chemistry]-b[salt-water-electrolysis]"
  },

  -- CHLORINE
  
    {
    type = "fluid",
    name = "chlorine",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0, g=1, b=0},
    flow_color = {r=0, g=1, b=0},
    max_temperature = 100,
    icon = "__NARMod__/graphics/icons/chlorine.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-g[chlorine]"
  },
  
  -- HYDROGEN CHLORIDE
  
  {
    type = "fluid",
    name = "hydrogen-chloride",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.2, g=0.7, b=0},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__NARMod__/graphics/icons/hydrogen-chloride.png",
--    pressure_to_speed_ratio = 0.6,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-g[hydrogen-chloride]"
  },
  
    {
    type = "recipe",
    name = "hydrogen-chloride",
    category = "chemistry",
    enabled = "false",
	subgroup = "chemicals",
    energy_required = 0.5,
    ingredients =
    {
      {type="fluid", name="chlorine", amount=0.5},
      {type="fluid", name="hydrogen-gas", amount=0.5},
    },
    results=
    {
      {type="fluid", name="hydrogen-chloride", amount=1}
    },
    icon = "__NARMod__/graphics/icons/hydrogen-chloride.png",
    order = "b[fluid-chemistry]-b[hydrogen-chloride]"
  },
  
  -- LITHIUM PERCHLORATE

   {
    type = "recipe",
    name = "lithium-perchlorate",
    category = "electrolysis",
    enabled = "false",
    energy_required = 1,
    ingredients =
    {
      {type="item", name="lithium-chloride", amount=1},
      {type="fluid", name="water", amount=2}
    },
    results=
    {
      {type="item", name="lithium-perchlorate", amount=1},
      {type="fluid", name="hydrogen-gas", amount=1},
    },
	subgroup = "chemical-electrolysis",
    icon = "__NARMod__/graphics/icons/lithium-perchlorate.png",
    order = "b[fluid-chemistry]-b[lithium-perchlorate]"
  },
  
    {
    type = "item",
    name = "lithium-perchlorate",
    icon = "__NARMod__/graphics/icons/lithium-perchlorate.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "chemical-electrolysis",
    order = "f[lithium-perchlorate]",
    stack_size = 50
  },
  
  -- LITHIUM PLATE
  
   {
    type = "recipe",
    name = "lithium-plate",
    category = "electrolysis",
    enabled = "false",
    energy_required = 1,
    ingredients =
    {
      {type="item", name="lithium-chloride", amount=1},
      {type="item", name="potash", amount=1}
    },
    results=
    {
      {type="item", name="lithium-plate", amount=1},
      {type="fluid", name="hydrogen-gas", amount=1},
    },
	subgroup = "raw-plates",
    icon = "__NARMod__/graphics/icons/plate/lithium-plate.png",
    order = "b[fluid-chemistry]-b[lithium-plate]"
  },
  
    {
    type = "item",
    name = "lithium-plate",
    icon = "__NARMod__/graphics/icons/plate/lithium-plate.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-plates",
    order = "c-a-e[lithium-plate]",
    stack_size = 50
  },
  
  -- NITROGEN DIOXIDE
  
  {
    type = "fluid",
    name = "nitrogen-dioxide",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.8, g=0.0, b=1.0},
    flow_color = {r=0.0, g=0.0, b=1.0},
    max_temperature = 100,
    icon = "__NARMod__/graphics/icons/nitrogen-dioxide.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-g[nitrogen-dioxide]"
  },
  
  {
    type = "recipe",
    name = "nitrogen-dioxide",
    category = "chemistry",
	subgroup = "chemicals",
    enabled = "false",
    energy_required = 2,
    ingredients =
    {
      {type="fluid", name="nitrogen-gas", amount=1},
      {type="fluid", name="oxygen-gas", amount=2}
    },
    results=
    {
      {type="fluid", name="nitrogen-dioxide", amount=2},
    },
    icon = "__NARMod__/graphics/icons/nitrogen-dioxide.png",
    order = "b[fluid-chemistry]-b[nitrogen-dioxide]"
  },
  
  -- POLYCRYSTALLINE SILICON PLATE
  
  {
    type = "recipe",
    name = "polycrystalline-silicon-plate",
    category = "chemistry",
    enabled = "false",
    energy_required = 5,
    ingredients =
    {
      {type="item", name="powdered-silicon", amount=5},
      {type="item", name="zinc-plate", amount=2}
    },
    results=
    {
      {type="item", name="polycrystalline-silicon-plate", amount=1},
    },
    icon = "__NARMod__/graphics/icons/polycrystalline-silicon-plate.png",
    order = "b"
  },
  
    {
    type = "item",
    name = "polycrystalline-silicon-plate",
    icon = "__NARMod__/graphics/icons/polycrystalline-silicon-plate.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-plates",
    order = "c-a-b[polycrystalline-silicon-plate]",
    stack_size = 50
  },
  
  -- MONOCRYSTALLINE SILICON PLATE
  
  {
    type = "recipe",
    name = "monocrystalline-silicon-plate",
    category = "chemistry",
    enabled = "false",
    energy_required = 30,
    ingredients =
    {
      {type="item", name="powdered-silicon", amount=5},
	  {type="fluid", name="argon-gas", amount=0.5}
    },
    results=
    {
      {type="item", name="monocrystalline-silicon-plate", amount=1},
    },
    icon = "__NARMod__/graphics/icons/monocrystalline-silicon-plate.png",
    order = "c"
  },
  
    {
    type = "item",
    name = "monocrystalline-silicon-plate",
    icon = "__NARMod__/graphics/icons/monocrystalline-silicon-plate.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-plates",
    order = "c-a-b[monocrystalline-silicon-plate]",
    stack_size = 50
  },
  
  -- SULFUR DIOXIDE

  {
    type = "fluid",
    name = "sulfur-dioxide",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.7, g=0.7, b=0},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__NARMod__/graphics/icons/sulfur-dioxide.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-g[sulfur-dioxide]"
  },
  
   {
    type = "recipe",
    name = "sulfur-dioxide",
    category = "chemical-furnace",
	subgroup = "chemicals",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="item", name="sulfur", amount=1},
	  {type="fluid", name="oxygen-gas", amount=2}
    },
    results=
    {
      {type="fluid", name="sulfur-dioxide", amount=2}
    },
    main_product= "sulfur-dioxide",
    icon = "__NARMod__/graphics/icons/sulfur-dioxide.png",
    order = "b[fluid-chemistry]-f[sulfuric-acid]"
  },


  {
    
	type = "recipe",
    
	name = "sulfur-dioxide-to-atmosphere",
    
	category = "evaporator-crafting",
	
	subgroup = "evaporation",
	
	order = "c",
    
	enabled = false,
    
	energy_required = 10,
    
	ingredients =
    
	{
		
		{type="fluid", name="sulfur-dioxide", amount=10}
    
	},
    
	results = 
    
	{
       
		{type="fluid", name="sulfur-dioxide", amount=1}
    
	},
    
	icon = "__NARMod__/graphics/icons/sulfur-dioxide-to-atmosphere.png",
    
	order = "b[fluid-chemistry]-b"
  
  },
  
  -- NITRIC ACID

  {
    type = "fluid",
    name = "nitric-acid",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=1.0, g=0.7, b=0.0},
    flow_color = {r=0.0, g=0.0, b=1.0},
    max_temperature = 100,
    icon = "__NARMod__/graphics/icons/nitric-acid.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-g[nitric-acid]"
  },
  
  {
    type = "recipe",
    name = "nitric-acid",
    category = "chemistry",
	subgroup = "chemicals",
    enabled = "false",
    energy_required = 1,
    ingredients =
    {
      {type="fluid", name="water", amount=1},
      {type="fluid", name="nitrogen-dioxide", amount=1},
    },
    results=
    {
      {type="fluid", name="nitric-acid", amount=1},
    },
    icon = "__NARMod__/graphics/icons/nitric-acid.png",
    order = "b[fluid-chemistry]-b[nitric-acid]"
  },
  
  -- TUNGSTIC ACID

  {
    type = "fluid",
    name = "tungstic-acid",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0, g=0.2, b=0.7},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__NARMod__/graphics/icons/tungstic-acid.png",
    pressure_to_speed_ratio = 0.2,
    flow_to_energy_ratio = 0.3,
    order = "a[fluid]-g[tungstic-acid]"
  },

  {
    type = "recipe",
    name = "tungstic-acid",
    category = "chemistry",
    enabled = "false",
	subgroup = "chemicals",
    energy_required = 2,
    ingredients =
    {
      {type="item", name="tungsten-ore", amount=2},
      {type="fluid", name="hydrogen-chloride", amount=4}
    },
    results=
    {
      {type="fluid", name="tungstic-acid", amount=2},
      {type="item", name="calcium-chloride", amount=1}
    },
    main_product= "tungstic-acid",
    icon = "__NARMod__/graphics/icons/tungstic-acid.png",
    order = "b[fluid-chemistry]-b[tungstic-acid]"
  },
  
  -- FERRIC CHLORIDE SOLUTION
  
  {
    type = "fluid",
    name = "ferric-chloride-solution",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.7, g=0.6, b=0.2},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__NARMod__/graphics/icons/ferric-chloride-solution.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-g[ferric-chloride-solution]"
  },
  
  {
    type = "recipe",
    name = "ferric-chloride-solution",
    category = "chemistry",
	subgroup = "chemicals",
    enabled = "false",
    energy_required = 2.5,
    ingredients =
    {
      {type="item", name="iron-ore", amount=1},
      {type="fluid", name="hydrogen-chloride", amount=6},
    },
    results=
    {
      {type="fluid", name="ferric-chloride-solution", amount=5}
    },
    icon = "__NARMod__/graphics/icons/ferric-chloride-solution.png",
    order = "b[fluid-chemistry]-a[ferric-chloride-solution]"
  },
  
  -- BROMINE
  
  {
    type = "fluid",
    name = "bromine",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.7, g=0.6, b=0.2},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__NARMod__/graphics/icons/bromine.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-g[bromine]"
  },

  {
    type = "recipe",
    name = "bromine",
    category = "chemistry",
    subgroup = "chemistry",
    energy_required = 3,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="brine-water", amount=5},
	  {type="fluid", name="chlorine", amount=1}
    },
    results = {
		{type="fluid", name="bromine", amount=3}
	},
  },

  -- CALCIUM CHLORIDE
  
  {
    type = "item",
    name = "calcium-chloride",
    icon = "__NARMod__/graphics/icons/calcium-chloride.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "chemistry",
    order = "f[calcium-chloride]",
    stack_size = 50
  },
  
    {
    type = "recipe",
    name = "calcium-chloride",
    category = "chemistry",
    subgroup = "chemistry",
    energy_required = 5,
    enabled = "false",
    ingredients =
    {
      {type="item", name="tf-crushed-stone", amount=1},
      {type="fluid", name="hydrogen-chloride", amount=4},
    },
    result="calcium-chloride",
	result_count = 5,
    order = "f[calcium-chloride]"
  },

  -- TUNGSTEN OXIDE
  
  {
    type = "item",
    name = "tungsten-oxide",
    icon = "__NARMod__/graphics/icons/tungsten-oxide.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "chemical-furnace",
    order = "f[tungsten-oxide]",
    stack_size = 50
  },
  
    {
    type = "recipe",
    name = "tungsten-oxide",
    category = "chemical-furnace",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="tungstic-acid", amount=1},
    },
    result="tungsten-oxide",
  },
  
  -- POWDERED TUNGSTEN

  {
    type = "item",
    name = "powdered-tungsten",
    icon = "__NARMod__/graphics/icons/powdered-tungsten.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "chemical-furnace",
    order = "f[powdered-tungsten]",
    stack_size = 50
  },
  
    {
    type = "recipe",
    name = "powdered-tungsten",
    category = "chemical-furnace",
    energy_required = 3.5,
    enabled = "false",
    ingredients =
    {
      {type="item", name="tungsten-oxide", amount=1},
      {type="fluid", name="hydrogen-gas", amount=3}
    },
    result="powdered-tungsten",
  },
  
  -- POWDERED SILICON

  {
    type = "item",
    name = "powdered-silicon",
    icon = "__NARMod__/graphics/icons/powdered-silicon.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "chemical-furnace",
    order = "f[powdered-silicon]",
    stack_size = 50
  },
  
    {
    type = "recipe",
    name = "powdered-silicon",
    category = "chemical-furnace",
    energy_required = 5,
    enabled = "false",
    ingredients =
    {
      {type="item", name="quartz", amount=3},
	  {type="item", name="raw-wood", amount=1},
      {type="item", name="tf-charcoal", amount=1},
	  {type="item", name="coal", amount=1}
    },
    result = "powdered-silicon",
    result_count = 3,
  },

  -- SILICON NITRATE
  
  {
    type = "item",
    name = "silicon-nitride",
    icon = "__NARMod__/graphics/icons/silicon-nitride.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "chemical-furnace",
    order = "f[silicon-nitride]",
    stack_size = 50
  },
  
  {
    type = "recipe",
    name = "silicon-nitride",
    category = "chemical-furnace",
    enabled = "false",
    energy_required = 7.5,
    ingredients =
    {
      {"powdered-silicon", 1},
      {type="fluid", name="nitrogen-gas", amount=2},
    },
    result = "silicon-nitride",
  },
  
  -- LITHIUM COBALT OXIDE
  
    {
    type = "item",
    name = "lithium-cobalt-oxide",
    icon = "__NARMod__/graphics/icons/lithium-cobalt-oxide.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "chemical-furnace",
    order = "c-b[lithium-cobalt-oxide]",
    stack_size = 50
  },
  
    {
    type = "recipe",
    name = "lithium-cobalt-oxide",
    category = "chemical-furnace",
    energy_required = 5,
    enabled = "false",
    ingredients =
    {
      {"lithium-plate", 1},
      {"cobalt-oxide", 1},
    },
    result = "lithium-cobalt-oxide",
    result_count = 2,
  },
  
  -- SULFURIC ACID
	-- item is vanilla
  
  {
    type = "recipe",
    name = "sulfuric-acid",
    category = "chemistry",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="water", amount=1},
      {type="fluid", name="sulfur-dioxide", amount=1},
    },
    results=
    {
      {type="fluid", name="sulfuric-acid", amount=1}
    },
    main_product= "sulfuric-acid",
	subgroup = "chemicals",
    icon = "__base__/graphics/icons/fluid/sulfuric-acid.png",
    order = "b[fluid-chemistry]-f[sulfuric-acid]"
  },
  
  -- LITHIUM CHLORIDE
  
  {
    type = "item",
    name = "lithium-chloride",
    icon = "__NARMod__/graphics/icons/lithium-chloride.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "chemistry",
	enabled = false,
    order = "f[lithium-chloride]",
    stack_size = 50
  },
  
  {
    type = "recipe",
    name = "lithium-chloride",
    category = "chemistry",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="brine-water", amount=2.5},
	  {type="fluid", name="hydrogen-chloride", amount=1}
    },
    result="lithium-chloride",
  },

  -- CO2 LASER EMITTER
  
  {
    type = "item",
    name = "co2-laser-emitter",
    icon = "__NARMod__/graphics/icons/co2-laser-emitter.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "chemistry",
	enabled = false,
    order = "f[co2-laser-emitter]",
    stack_size = 50
  },
  
  {
    type = "recipe",
    name = "co2-laser-emitter",
    category = "chemistry",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
	  {type="item", name="glass-plate", amount=5},
      {type="fluid", name="co2-gas", amount=5},
	  {type="fluid", name="nitrogen-gas", amount=5},
	  {type="item", name="zinc-plate", amount=3},
    },
    result="co2-laser-emitter",
	result_count = 5,
  },
}
)


