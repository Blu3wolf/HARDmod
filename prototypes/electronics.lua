data.raw["item"]["copper-cable"].subgroup = "wiring"

data:extend( {
{ 

	-- PHOTOVOLTAIC CELL
	
    type = "item",
    name = "photovoltaic-cell",
    icon = "__HARDmod__/placeholder-graphics/icons/photovoltaic-cell.png",
    flags = {"goes-to-main-inventory"},
    order = "0-a1[photovoltaic-cell]",
	subgroup = "power-source",
    stack_size = 50
  },
  
  {
    type = "recipe",
    name = "photovoltaic-cell",
	enabled=false,
	energy_required = 2,
    ingredients =
    {
      {"glass-plate",1},
	  {"polycrystalline-silicon-plate",1},
	  {"silicon-nitride",1},
	  {"aluminium-plate",1},
	  {"copper-cable",4},
    },
    result = "photovoltaic-cell",
    result_count = 5
  },
  
  -- WOODEN SUBSTRATE
  
    {
    type = "item",
    name = "wooden-substrate",
    icon = "__HARDmod__/graphics/icons/wooden-board.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "substrates",
    order = "a",
    stack_size = 50
  },
  
    {
    type = "recipe",
    name = "wooden-substrate",
    ingredients =
    {
      {"wood", 1},
    },
    result = "wooden-substrate",
    result_count = 2
  },
  
  -- FIBERGLASS SUBSTRATE
  
  {
    type = "item",
    name = "fiberglass-substrate",
    icon = "__HARDmod__/graphics/icons/fiberglass-board-2.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "substrates",
    order = "b",
    stack_size = 50
  },
  
     {
    type = "recipe",
    name = "fiberglass-substrate",
	enabled = false,
	energy_required = 1,
    ingredients =
    {
      {"quartz", 2},
	  {"clay", 1},
      {"copper-cable", 6},
    },
    result = "fiberglass-substrate",
  },
  
  -- SUPERIOR FIBERGLASS SUBSTRATE
  
  {
    type = "item",
    name = "superior-fiberglass-substrate",
    icon = "__HARDmod__/graphics/icons/superior-circuit-board.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "substrates",
    order = "c",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "superior-fiberglass-substrate",
	enabled = false,
	energy_required = 2,
	category = "clean-room-crafting",
    ingredients =
    {
      {"quartz", 3},
	  {"epoxy", 2},
      {"copper-cable", 8},
	  {"tin-plate", 1},
	  {type="fluid", name="ferric-chloride-solution", amount=2}
    },
    result = "superior-fiberglass-substrate",
  },
  
  -- FR4 SUBSTRATE
  
  {
    type = "item",
    name = "fr4-substrate",
    icon = "__HARDmod__/graphics/icons/multi-layer-circuit-board.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "substrates",
    order = "d",
    stack_size = 50
  },
  
  {
    type = "recipe",
    name = "fr4-substrate",
	enabled = false,
	energy_required = 3,
	category = "clean-room-crafting",
    ingredients =
    {
      {"quartz", 4},
	  {"epoxy", 3},
      {"copper-cable", 10},
	  {"tin-plate", 1},
	  {"gold-plate", 1},
	  {type="fluid", name="bromine", amount=2},
	  {type="fluid", name="ferric-chloride-solution", amount=2}
    },
    result = "fr4-substrate",
  },
  
	-- TINNED COPPER WIRE
  
  {
    type = "item",
    name = "tinned-copper-wire",
    icon = "__HARDmod__/graphics/icons/tinned-copper-cable.png",
    flags = {"goes-to-main-inventory"},
    order = "b",
	subgroup = "wiring",
    stack_size = 50
  },
  
    {
    type = "recipe",
    name = "tinned-copper-wire",
	enabled=false,
    ingredients =
    {
      {"copper-cable", 3},
      {"tin-plate", 1},
    },
    result = "tinned-copper-wire",
    result_count = 3
  },
 
	--INSULATED COPPER WIRE

  {
    type = "item",
    name = "insulated-copper-wire",
    icon = "__HARDmod__/graphics/icons/insulated-cable.png",
    flags = {"goes-to-main-inventory"},
    order = "c",
		subgroup = "wiring",
    stack_size = 50
  },
  
    {
    type = "recipe",
    name = "insulated-copper-wire",
	enabled = false,
    ingredients =
    {
      {"rubber", 1},
      {"copper-cable", 3},
    },
    result = "insulated-copper-wire",
    result_count = 3
  },

  -- GILDED COPPER WIRE
  
  {
    type = "item",
    name = "gilded-copper-wire",
    icon = "__HARDmod__/graphics/icons/gilded-copper-cable.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "wiring",
    order = "d",
    stack_size = 50
  },

 {
    type = "recipe",
    name = "gilded-copper-wire",
    enabled = false,
    ingredients =
    {
      {"copper-cable", 3},
      {"gold-plate", 1},
    },
    result = "gilded-copper-wire",
    result_count = 3
  },
  
  -- SOLDER
  
  {
    type = "item",
    name = "solder",
    icon = "__HARDmod__/graphics/icons/solder.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "wiring",
    order = "e",
    stack_size = 50
  },

   {
    type = "recipe",
    name = "solder",
    energy_required = 2,
	category = "electric-furnace",
    enabled = false,
    ingredients =
    {
      {"tin-plate", 6},
	  {"lead-plate", 4},
    },
    result = "solder",
    result_count = 10
  },
  
    
  -- EPOXY
  
  {
    type = "item",
    name = "epoxy",
    icon = "__HARDmod__/placeholder-graphics/icons/electronics/epoxy.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "wiring",
    order = "f",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "epoxy",
	enabled = false,
	energy_required = 2,
	category = "chemistry",
    ingredients =
    {
	  {type="fluid", name="light-oil", amount=1},
	  {type="fluid", name="heavy-oil", amount=1}
    },
    result = "epoxy",
  },
  
  -- RESISTORS
  
  {
    type = "item",
    name = "resistors",
    icon = "__HARDmod__/graphics/icons/basic-electronic-components.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "electronic-components",
    order = "a",
    stack_size = 50
  },
  
  {
    type = "recipe",
    name = "resistors",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      {"tf-charcoal", 1},
      {"tinned-copper-wire", 1},
    },
    result = "resistors",
    result_count = 3
  },

  -- inductors-2
  
  {
    type = "item",
    name = "inductors-2",
    icon = "__HARDmod__/placeholder-graphics/icons/electronics/inductors-2.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "electronic-components",
    order = "b",
    stack_size = 50
  },
  
  {
    type = "recipe",
    name = "inductors-2",
    energy_required = 3,
    enabled = false,
    ingredients =
    {
      {"copper-cable", 4},
      {"iron-plate", 1},
    },
    result = "inductors-2",
    result_count = 3
  },
  
  -- CAPACITORS
  
  {
    type = "item",
    name = "capacitors",
    icon = "__HARDmod__/placeholder-graphics/icons/electronics/capacitors.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "electronic-components",
    order = "c",
    stack_size = 50
  },
  
  {
    type = "recipe",
    name = "capacitors",
    energy_required = 4,
    enabled = false,
    ingredients =
    {
      {"tinned-copper-wire", 2},
	  {"glass-plate", 1},
      {"copper-plate", 2},
    },
    result = "capacitors",
    result_count = 3
  },

  -- INTEGRATED CIRCUIT
  
  {
    type = "item",
    name = "integrated-circuit",
    icon = "__HARDmod__/graphics/icons/integrated-electronics.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "electronic-components",
    order = "e",
    stack_size = 50
  },
  
    {
    type = "recipe",
    name = "integrated-circuit",
    category = "clean-room-crafting",
    energy_required = 5,
    enabled = false,
    ingredients =
    {
      {"plastic-bar", 1},
      {"copper-plate", 1},
      {"silicon-wafer", 3},
      {type="fluid", name = "doping-solution", amount = 1},
    },
    result = "integrated-circuit",
    result_count = 3
  },
  
  -- MICROCHIP
  
  {
    type = "item",
    name = "microchip",
    icon = "__HARDmod__/placeholder-graphics/icons/electronics/microchip.png",
    flags = {"goes-to-main-inventory"},
    order = "f",
	subgroup = "electronic-components",
    stack_size = 50
  },
  
  {
    type = "recipe",
    name = "microchip",
	category = "clean-room-crafting",
	energy_required = 30,
	enabled=false,
	ingredients = 
    {
      {type="item", name="silicon-wafer", amount=5},
	  {type="fluid", name="photoresist-solution", amount=1},
	  {type="fluid", name="developer-solution", amount=1},
	  {type="fluid", name="doping-solution", amount=1},
	  {type="item", name="copper-plate", amount=1},
    },
    results=
    {
		{type="item", name="microchip", amount=2},
    },
  },
  
  -- CENTRAL PROCESSING UNIT
  
  {
    type = "item",
    name = "cpu",
    icon = "__HARDmod__/graphics/icons/cpu.png",
    flags = {"goes-to-main-inventory"},
    order = "g",
	    subgroup = "electronic-components",
    stack_size = 50
  },
  
  {
    type = "recipe",
    name = "cpu",
		category = "clean-room-crafting",
	energy_required = 30,
	enabled=false,
	ingredients = 
    {
      {type="item", name="ceramic-plate", amount=1},
	  {type="item", name="microchip", amount=1},
	  {type="item", name="solder", amount=1},
	  {type="item", name="aluminium-plate", amount=1},
    },
    results=
    {
		{type="item", name="cpu", amount=1},
    },
  },
  
  -- HEATSINK
  
  {
    type = "item",
    name = "heatsink",
    icon = "__HARDmod__/placeholder-graphics/icons/electronics/heatsink.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "wiring",
    order = "g",
    stack_size = 50
  },
  
  {
    type = "recipe",
    name = "heatsink",
	energy_required = 10,
	enabled=false,
	ingredients = 
    {
      {type="item", name="plastic-bar", amount=3},
	  {type="item", name="copper-plate", amount=1},
	  {type="item", name="aluminium-plate", amount=2},
	  {type="item", name="solder", amount=1},
    },
    results=
    {
		{type="item", name="heatsink", amount=1},
    },
  },
 
 -- BASIC ELECTRONIC CIRCUIT BOARD
 
  {
    type = "item",
    name = "electronic-circuit",
    icon = "__HARDmod__/graphics/icons/basic-electronic-circuit-board.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "circuit-boards",
    order = "a",
    stack_size = 50
  },
  
    {
    type = "recipe",
	energy_required = 2,
    name = "electronic-circuit",
    ingredients =
    {
      {"wooden-substrate", 1},
      {"copper-cable", 3},
    },
    result = "electronic-circuit",
  },

  -- ADVANCED CIRCUIT BOARD
  
    {
    type = "item",
    name = "advanced-circuit",
    icon = "__HARDmod__/graphics/icons/advanced-electronic-circuit-board.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "circuit-boards",
    order = "b",
    stack_size = 50
  },
  
    {
    type = "recipe",
    name = "advanced-circuit",
    category = "crafting",
    energy_required = 5,
    enabled = false,
    ingredients =
    {
      {"fiberglass-substrate", 1},
      {"resistors", 3},
      {"inductors-2", 3},
	  {"capacitors", 3},
	  {"solder", 2},
    },
    result = "advanced-circuit",
  },

  -- ELECTRONIC PROCESSING BOARD
  
    {
    type = "item",
    name = "processing-unit",
    icon = "__HARDmod__/graphics/icons/electronic-logic-board.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "circuit-boards",
    order = "c",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "processing-unit",
    energy_required = 10,
	category = "clean-room-crafting",
    enabled = false,
    ingredients =
    {
      {"superior-fiberglass-substrate", 1},
	  {"resistors", 5},
      {"inductors-2", 5},
	  {"capacitors", 5},
	  {"integrated-circuit", 5},
      {"solder", 2},
    },
    result = "processing-unit",
  },

  -- MOTHERBOARD
  
    {
    type = "item",
    name = "motherboard",
    icon = "__HARDmod__/graphics/icons/electronic-processing-board.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "circuit-boards",
    order = "d",
    stack_size = 50
  },
  
  {
    type = "recipe",
    name = "motherboard",
    energy_required = 10,
	category = "clean-room-crafting",
    enabled = false,
    ingredients =
    {
      {"fr4-substrate", 1},
	  {"resistors", 3},
      {"inductors-2", 3},
	  {"capacitors", 3},
      {"integrated-circuit", 10},
      {"cpu", 1},
    },
    result = "motherboard",
  },
  
  -- MODULE CASE MK1
  
  {
    type = "item",
    name = "module-case-mk1",
    icon = "__bobmodules__/graphics/icons/module-case.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "module-intermediates",
    order = "c-0[module-case-mk1]",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "module-case-mk1",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
	  {"aluminium-plate", 2},
	  {"module-contact", 5},
	  {"insulated-copper-wire", 3}
    },
    result = "module-case-mk1",
  },
  
  -- MODULE CASE MK2
  
  {
    type = "item",
    name = "module-case-mk2",
    icon = "__HARDmod__/placeholder-graphics/icons/electronics/module-case-mk2.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "module-intermediates",
    order = "c-0[module-case-mk2]",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "module-case-mk2",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
	  {"aluminium-plate", 3},
	  {"plastic-bar", 2},
	  {"module-contact", 5}, 
	  {"insulated-copper-wire", 5},
	  {"heatsink", 1}
    },
    result = "module-case-mk2",
  },
  
  -- MODULE CASE MK3
  
  {
    type = "item",
    name = "module-case-mk3",
    icon = "__HARDmod__/placeholder-graphics/icons/electronics/module-case-mk3.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "module-intermediates",
    order = "c-0[module-case-mk3]",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "module-case-mk3",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
	  {"aluminium-plate", 5},
	  {"plastic-bar", 4},
	  {"insulated-copper-wire", 10},
	  {"module-contact", 5},
	  {"heatsink", 2}
    },
    result = "module-case-mk3",
  },
  
  -- MODULE CONTACT
  
  {
    type = "item",
    name = "module-contact",
    icon = "__bobmodules__/graphics/icons/module-contact.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "module-intermediates",
    order = "c-1[module-contact]",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "module-contact",
    energy_required = 5,
    enabled = false,
    ingredients =
    {
      {"gold-plate", 1},
    },
    result = "module-contact",
    result_count = 3,
  },
  })
