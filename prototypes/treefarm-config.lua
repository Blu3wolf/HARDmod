	-- This file makes changes to treefarm-AC and treefarm-Lite
	
	-- This changes the some children of the TF itemgroup

data.raw["item-subgroup"]["tf-raw-materials"].group = "bob-resource-products"
data.raw["item-subgroup"]["tf-intermediate"].group = "intermediate-products"

	-- This changes the icon of the TF group

data.raw["item-group"]["treefarm"].icon = "__HARDmod__/placeholder-graphics/icons/technology/hydroponic-farms.png"

	-- this enables the crusher recipe from the start of the game
	
data.raw.recipe["tf-stone-crusher"].enabled = "true"
data.raw.recipe["tf-crushed-stone"].enabled = "true"
data.raw.item["tf-stone-crusher"].subgroup = "production-machine"
data.raw.item["tf-stone-crusher"].icon = "__HARDmod__/placeholder-graphics/icons/crusher.png"

	-- This redefines the fertilizer tech to remove the crusher and crushed stone recipe

data.raw.technology["tf-fertilizer"].effects = {
	{
		type = "unlock-recipe",
		recipe = "tf-biolab"
	},
	{
		type = "unlock-recipe",
		recipe = "tf-liquid-air"
	},
	{
		type = "unlock-recipe",
		recipe = "tf-liquid-nitrogen"
	},
	{
		type = "unlock-recipe",
		recipe = "tf-fill-liquid-nitrogen-barrel"
	},
	{
		type = "unlock-recipe",
		recipe = "tf-empty-liquid-nitrogen-barrel"
	},
	{
		type = "unlock-recipe",
		recipe = "tf-phosphate"
	},
	{
		type = "unlock-recipe",
		recipe = "tf-potassium"
	},
	{
		type = "unlock-recipe",
		recipe = "tf-fertilizer1"
	},
	{
		type = "unlock-recipe",
		recipe = "tf-fertilizer2"
	}
}

	-- This removes the tf-biological-warfare research tech
	
data.raw.technology["tf-biological-warfare"] = nil

	


