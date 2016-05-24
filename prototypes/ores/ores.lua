require("prototypes.ores.haematite")
require("prototypes.ores.cuprite")

for i, ore in pairs(hardmod.ores) do
	bobmods.lib.generate_ore(ore)
end
