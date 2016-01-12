	-- This file makes changes to treefarm-AC and treefarm-Lite
	
	-- This changes the some children of the TF itemgroup

data.raw["item-subgroup"]["tf-raw-materials"].group = "raw-materials"
data.raw["item-subgroup"]["tf-intermediate"].group = "intermediate-products"


	-- this enables the crusher recipe from the start of the game
	
data.raw.recipe["tf-stone-crusher"].enabled = "true"
data.raw.recipe["tf-crushed-stone"].enabled = "true"

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

	


