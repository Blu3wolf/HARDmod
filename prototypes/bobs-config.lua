

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
