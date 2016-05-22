
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

  {
    type = "item",
    name = "glass-plate",
    icon = "__NARMod__/graphics/icons/glass-plate.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "raw-material",
    order = "f[glass-plate]",
    stack_size = 50
  }, 
  
  {
    type = "recipe",
    name = "glass-plate",
    category = "chemical-furnace",
    energy_required = 4,
	enabled = false,
    ingredients = {{ "quartz", 2}, { "limestone", 1} },
    result = "glass-plate"
  },

  {
    type = "item",
    name = "silicon-wafer",
    icon = "__NARMod__/graphics/icons/silicon-wafer.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "electronic-components",
    order = "f[silicon-wafer]",
    stack_size = 50
  },

    {
    type = "recipe",
    name = "silicon-wafer",
    category = "clean-room-crafting",
    enabled = "false",
    energy_required = 5,
    ingredients = {{"monocrystalline-silicon-plate", 1}},
    result = "silicon-wafer",
    result_count = 8
  },
}
)

