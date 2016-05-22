data.raw["item"]["tf-germling"].subgroup = "organic-fields"
data.raw["item"]["tf-germling"].stack_size = 50
data.raw["item"]["tf-coral-seed"].subgroup = "organic-fields"
data.raw["item"]["tf-charcoal"].subgroup = "cokery-crafting"
data.raw["recipe"]["tf-charcoal"].category = "cokery-crafting"
data.raw["recipe"]["tf-charcoal"].subgroup = "cokery-crafting"
data.raw["recipe"]["tf-charcoal"].ingredients = {{"raw-wood",10}}
data.raw["recipe"]["tf-charcoal"].result_count = 9
data.raw["recipe"]["tf-coal"].hidden = true
data.raw["recipe"]["tf-coal-2"].hidden = true
data.raw["item"]["tf-coke-coal"].subgroup = "cokery-crafting"
data.raw["recipe"]["tf-coke-coal"].category = "cokery-crafting"
data.raw["item"]["tf-ash"].subgroup = "cokery-crafting"
data.raw["item"]["tf-ash"].stack_size = 50
data.raw["recipe"]["tf-ash"].category = "cokery-crafting"
data.raw["item"]["tf-field"].subgroup = "organic-fields"
data.raw["item"]["tf-field"].stack_size = 1
data.raw["recipe"]["tf-field"].ingredients = {
	{"wooden-chest", 1},
	{"burner-inserter", 1}
}
data.raw["item"]["tf-fieldmk2"].subgroup = "organic-fields"
data.raw["item"]["tf-fieldmk2"].stack_size = 1
data.raw["recipe"]["tf-fieldmk2"].ingredients = {
	{"advanced-circuit",20},
	{"copper-cable",40},
	{"steel-plate",20}
}
data.raw["recipe"]["tf-fieldmk2"].energy_required = 30
data.raw["item"]["tf-cokery"].subgroup = "alt-production"
data.raw["item"]["tf-cokery"].stack_size = 5
data.raw["recipe"]["tf-cokery"].ingredients = {
	{"iron-plate",10},
	{"iron-gear-wheel",5},
	{"stone-furnace",2}
}
data.raw["recipe"]["tf-cokery"].energy_required = 10
data.raw["assembling-machine"]["tf-cokery"].crafting_categories = "cokery-crafting"
data.raw["item"]["tf-bioreactor"].subgroup = "organic-production"
data.raw["item"]["tf-bioreactor"].stack_size = 3
data.raw["recipe"]["tf-bioreactor"].ingredients = {
	{"assembling-machine-2",1},
	{"storage-tank-2",4},
	{"steel-plate",5}
}
data.raw["recipe"]["tf-bioreactor"].energy_required = 20
data.raw["item"]["tf-stone-crusher"].subgroup = "production-machine"
data.raw["recipe"]["tf-stone-crusher"].enabled = "true"
bobmods.lib.remove_technology_recipe("tf-fertilizer", "tf-stone-crusher")
data.raw["item"]["tf-stone-crusher"].icon = "__NARMod__/graphics/icons/crusher.png"
data.raw["item"]["tf-stone-crusher"].stack_size = 5
data.raw["recipe"]["tf-stone-crusher"].ingredients = {
	{"iron-plate", 5},
	{"basic-motor", 2},
    {"iron-gear-wheel",8}
}
data.raw["item"]["tf-biolab"].icon = "__NARMod__/graphics/icons/hydroponic-farm.png"
data.raw["item"]["tf-biolab"].subgroup = "organic-production"
data.raw["item"]["tf-biolab"].order = "a[hydroponic-farm]"
data.raw["item"]["tf-biolab"].stack_size = 3
data.raw["recipe"]["tf-biolab"].ingredients =
{
	{"steel-plate",20},
	{"storage-tank-2",4},
	{"glass-plate", 10},
	{"pipe", 10},
	{"air-compressor", 2}
}
data.raw["assembling-machine"]["tf-biolab"].icon = "__NARMod__/graphics/icons/hydroponic-farm.png"
data.raw["assembling-machine"]["tf-biolab"].crafting_categories = "hydroponic-farm-crafting"
--data.raw["assembling-machine"]["tf-biolab"].animation.filename = "__NARMod__/graphics/entity/hydroponic-farm/hydroponic-farm.png"
data.raw["assembling-machine"]["tf-biolab"].animation = {
	filename = "__NARMod__/graphics/entity/hydroponic-farm/hydroponic-farm.png",
	priority = "extra-high",
	width = 99,
	height = 107,
	frame_count = 1,
	shift = {0.0, 0.0}
}
