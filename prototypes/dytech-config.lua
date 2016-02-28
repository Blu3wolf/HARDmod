-- this removes the dytech gems item category

data.raw["item-subgroup"]["dytech-gem-crystal"] = nil
data.raw["item-subgroup"]["dytech-gem-raw"] = nil
data.raw["item-subgroup"]["dytech-gem-cut"] = nil
data.raw["item-subgroup"]["dytech-gem-compressed"] = nil 
data.raw["item-group"]["dytech-gem"] = nil

-- this removes all the dytech items that needed that category

data.raw.item["crystal"] = nil
data.raw.item["raw-ruby"] = nil
data.raw.item["raw-sapphire"] = nil
data.raw.item["raw-emerald"] = nil
data.raw.item["raw-topaz"] = nil
data.raw.item["raw-diamond"] = nil
data.raw.item["cut-ruby"] = nil
data.raw.item["cut-sapphire"] = nil
data.raw.item["cut-emerald"] = nil
data.raw.item["cut-topaz"] = nil
data.raw.item["cut-diamond"] = nil
data.raw.item["compressed-ruby"] = nil
data.raw.item["compressed-sapphire"] = nil
data.raw.item["compressed-emerald"] = nil
data.raw.item["compressed-topaz"] = nil
data.raw.item["compressed-diamond"] = nil

data.raw.recipe["crystal-ruby"] = nil
data.raw.recipe["crystal-sapphire"] = nil
data.raw.recipe["crystal-emerald"] = nil
data.raw.recipe["crystal-topaz"] = nil
data.raw.recipe["crystal-diamond"] = nil
data.raw.recipe["raw-cut-ruby"] = nil
data.raw.recipe["raw-cut-sapphire"] = nil
data.raw.recipe["raw-cut-emerald"] = nil
data.raw.recipe["raw-cut-topaz"] = nil
data.raw.recipe["raw-cut-diamond"] = nil
data.raw.recipe["cut-compressed-ruby"] = nil
data.raw.recipe["cut-compressed-sapphire"] = nil
data.raw.recipe["cut-compressed-emerald"] = nil
data.raw.recipe["cut-compressed-topaz"] = nil
data.raw.recipe["cut-compressed-diamond"] = nil

data.raw.resource["gems"] = nil

data.raw.recipe["logic-diamond"] = nil
data.raw.recipe["logic-diamond-processor"] = nil
data.raw.technology["logic-diamond-processor"] = nil

data.raw.recipe["coal-ruby"] = nil
data.raw.recipe["coal-sapphire"] = nil
data.raw.recipe["coal-emerald"] = nil
data.raw.recipe["coal-topaz"] = nil
data.raw.recipe["coal-diamond"] = nil

data.raw.recipe["crystal-sand"] = nil
data.raw.recipe["crystal-stone"] = nil

--dytech metallurgy

data.raw.recipe["metallurgy-copper-smelt"] = nil
data.raw.recipe["metallurgy-iron-smelt"] = nil
data.raw.recipe["metallurgy-ardite-smelt"] = nil
data.raw.recipe["metallurgy-gold-smelt"] = nil
data.raw.recipe["metallurgy-cobalt-smelt"] = nil
data.raw.recipe["metallurgy-lead-smelt"] = nil
data.raw.recipe["metallurgy-silver-smelt"] = nil
data.raw.recipe["metallurgy-steel-smelt"] = nil
data.raw.recipe["metallurgy-tin-smelt"] = nil
data.raw.recipe["metallurgy-tungsten-smelt"] = nil
data.raw.recipe["metallurgy-zinc-smelt"] = nil

data.raw.technology["lava-02"] = nil
data.raw.technology["lava-03"] = nil
data.raw.technology["lava-04"] = nil
data.raw.technology["molten-machine-1"] = nil
data.raw.technology["molten-machine-2"] = nil
data.raw.technology["molds-belt-1"] = nil
data.raw.technology["molds-belt-2"] = nil
data.raw.technology["molds-belt-3"] = nil
data.raw.technology["molds-belt-4"] = nil
data.raw.technology["molds-machine"] = nil
data.raw.technology["molds-tool"] = nil
data.raw.technology["molds-circuit"] = nil
data.raw.technology["molds-ammo"] = nil
data.raw.technology["molds-wire"] = nil
data.raw.technology["molds-gear"] = nil
data.raw.technology["molds-rotor"] = nil
data.raw.technology["molds-exit"] = nil
data.raw.technology["molds-frame"] = nil
data.raw.technology["molds-blade"] = nil
data.raw.technology["molds-science"] = nil

--This removes obsidian

RemoveFromRecipe("assembling-machine-7", "obsidian")
--data.raw.item["obsidian"] = nil
data.raw.recipe["obsidian"] = nil
data.raw.recipe["obsidian-processing"] = nil

--This overrides the dytech base overrides

--This removes the Dytech intermediates category

data.raw["item-group"]["dytech-intermediates"] = nil

-- And this moves the subgroups to the regular intermediates category

data.raw["item-subgroup"]["dytech-intermediates-raw"].group = "intermediate-products"
data.raw["item-subgroup"]["dytech-intermediates-processing"].group = "intermediate-products"
data.raw["item-subgroup"]["dytech-intermediates-processed"].group = "intermediate-products"
data.raw["item-subgroup"]["dytech-intermediates-repair"].group = "intermediate-products"
data.raw["item-subgroup"]["dytech-intermediates-tools"].group = "intermediate-products"
data.raw["item-subgroup"]["dytech-intermediates-gears"].group = "intermediate-products"
data.raw["item-subgroup"]["dytech-intermediates-machine"].group = "intermediate-products"
data.raw["item-subgroup"]["dytech-intermediates-power"].group = "intermediate-products"
data.raw["item-subgroup"]["dytech-intermediates-circuitry"].group = "intermediate-products"
data.raw["item-subgroup"]["dytech-intermediates-tank"].group = "intermediate-products"
data.raw["item-subgroup"]["dytech-intermediates-molds"].group = "intermediate-products"
data.raw["item-subgroup"]["dytech-intermediates-enemies"].group = "intermediate-products"

-- This removes the Dytech inserters category

data.raw["item-group"]["dytech-inserters"] = nil

-- and this moves the subgroups to the regular logistics category

data.raw["item-subgroup"]["inserters-dytech-1"].group = "logistics"
data.raw["item-subgroup"]["inserters-dytech-2"].group = "logistics"
data.raw["item-subgroup"]["inserters-dytech-3"].group = "logistics"
data.raw["item-subgroup"]["inserters-dytech-4"].group = "logistics"
data.raw["item-subgroup"]["inserters-dytech-5"].group = "logistics"
data.raw["item-subgroup"]["inserters-dytech-6"].group = "logistics"
data.raw["item-subgroup"]["inserters-dytech-7"].group = "logistics"
data.raw["item-subgroup"]["inserters-dytech-8"].group = "logistics"

-- This removes the Dytech Machines Category

data.raw["item-group"]["dytech-machines"] = nil

-- And this moves the subgroups to the regular production category

data.raw["item-subgroup"]["dytech-machines-belts"].group = "production"
data.raw["item-subgroup"]["dytech-machines-chest"].group = "production"
data.raw["item-subgroup"]["dytech-machines-smart"].group = "production"
data.raw["item-subgroup"]["dytech-machines-logistic"].group = "production"
data.raw["item-subgroup"]["dytech-machines-logistic-chest"].group = "production"
data.raw["item-subgroup"]["dytech-machines-cleaning"].group = "production"
data.raw["item-subgroup"]["dytech-machines-furnace"].group = "production"
data.raw["item-subgroup"]["dytech-machines-assembling"].group = "production"
data.raw["item-subgroup"]["dytech-machines-extractors"].group = "production"
data.raw["item-subgroup"]["dytech-machines-transport"].group = "production"
data.raw["item-subgroup"]["dytech-machines-metallurgy"].group = "production"
data.raw["item-subgroup"]["metallurgy-machines"].group = "production"



