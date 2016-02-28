function AddToRecipe(Name, Ingredient, Amount)
	table.insert(data.raw.recipe[Name].ingredients,{Ingredient, Amount})
end

function RemoveFromRecipe(Name, Ingredient)
	for k, v in pairs(data.raw["recipe"][Name].ingredients) do
		if v[1] == Ingredient or v.name == Ingredient then
			table.remove(data.raw.recipe[Name].ingredients, k)
		end
	end
end

function AddUnlockToTech(Name, Recipe)
	table.insert(data.raw.technology[Name].effects,{type = "unlock-recipe",recipe = Recipe})
end

function AddPrereqToTech(Name, Requirement)
	table.insert(data.raw.technology[Name].prerequisites, Requirement)
end

--[[RemoveFromRecipe("assembling-machine-7", "obsidian")
	for k, v in pairs(data.raw.recipe["assembling-machine-7"].ingredients) do
		if v[1] == "obsidian" or v.name == "obsidian" then
			table.remove(data.raw.recipe
			

pairs(data.raw.recipe["assembling-machine-7"].ingredients)
	return next, data.raw.recipe["assembling-machine-7"].ingredients, nil
	
next(data.raw.recipe["assembling-machine-7"].ingredients, nil)

--]]