

--This removes the Bobs mods tabs

--This removes the children of the Bobs intermediate-products tab
data.raw["item-subgroup"]["bob-intermediates"].group = "intermediate-products"
data.raw["item-subgroup"]["bob-electronic-components"].group = "intermediate-products"
data.raw["item-subgroup"]["bob-boards"].group = "intermediate-products"
data.raw["item-subgroup"]["bob-electronic-boards"].group = "intermediate-products"
data.raw["item-subgroup"]["bob-gears"].group = "intermediate-products"
data.raw["item-subgroup"]["bob-bearings"].group = "intermediate-products"
data.raw["item-subgroup"]["bob-roboport-parts"] = nil

-- This removes the Bobs intermediate-products tab
data.raw["item-group"]["bob-intermediate-products"] = nil

-- this removes the bob gems tab
data.raw["item-group"]["bob-gems"] = nil
data.raw["item-subgroup"]["bob-gems-ore"] = nil
data.raw["item-subgroup"]["bob-gems-raw"] = nil
data.raw["item-subgroup"]["bob-gems-cut"] = nil
data.raw["item-subgroup"]["bob-gems-polished"] = nil

--this removes the stuff that was in the gems tab

data.raw.recipe["bob-ruby-3"] = nil
data.raw.recipe["bob-sapphire-3"] = nil
data.raw.recipe["bob-emerald-3"] = nil
data.raw.recipe["bob-amethyst-3"] = nil
data.raw.recipe["bob-topaz-3"] = nil
data.raw.recipe["bob-diamond-3"] = nil
data.raw.recipe["bob-ruby-4"] = nil
data.raw.recipe["bob-sapphire-4"] = nil
data.raw.recipe["bob-emerald-4"] = nil
data.raw.recipe["bob-amethyst-4"] = nil
data.raw.recipe["bob-topaz-4"] = nil
data.raw.recipe["bob-diamond-4"] = nil
data.raw.recipe["bob-ruby-5"] = nil
data.raw.recipe["bob-sapphire-5"] = nil
data.raw.recipe["bob-emerald-5"] = nil
data.raw.recipe["bob-amethyst-5"] = nil
data.raw.recipe["bob-topaz-5"] = nil
data.raw.recipe["bob-diamond-5"] = nil
data.raw.recipe["sort-gem-ore"] = nil

data.raw.item["ruby-3"].subgroup = nil
data.raw.item["sapphire-3"].subgroup = nil
data.raw.item["emerald-3"].subgroup = nil
data.raw.item["amethyst-3"].subgroup = nil
data.raw.item["topaz-3"].subgroup = nil
data.raw.item["diamond-3"].subgroup = nil
data.raw.item["ruby-4"].subgroup = nil
data.raw.item["sapphire-4"].subgroup = nil
data.raw.item["emerald-4"].subgroup = nil
data.raw.item["amethyst-4"].subgroup = nil
data.raw.item["topaz-4"].subgroup = nil
data.raw.item["diamond-4"].subgroup = nil
data.raw.item["ruby-5"].subgroup = nil
data.raw.item["sapphire-5"].subgroup = nil
data.raw.item["emerald-5"].subgroup = nil
data.raw.item["amethyst-5"].subgroup = nil
data.raw.item["topaz-5"].subgroup = nil
data.raw.item["diamond-5"].subgroup = nil

data.raw.technology["gem-processing-1"] = nil
data.raw.technology["gem-processing-2"] = nil

data.raw.item["gem-ore"].subgroup = nil
data.raw.item["ruby-ore"].subgroup = nil
data.raw.item["sapphire-ore"].subgroup = nil
data.raw.item["emerald-ore"].subgroup = nil
data.raw.item["amethyst-ore"].subgroup = nil
data.raw.item["topaz-ore"].subgroup = nil
data.raw.item["diamond-ore"].subgroup = nil
