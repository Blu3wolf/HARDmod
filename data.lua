require("config")

require("prototypes.assemblers")
require("prototypes.asu")
require("prototypes.brine")
require("prototypes.categories")
require("prototypes.ceramics")
require("prototypes.chemicals")
require("prototypes.concrete")
require("prototypes.electronics")
require("prototypes.furnaces")
require("prototypes.metallurgy")
require("prototypes.misc")
require("prototypes.module")
require("prototypes.offworld-teleportation")
require("prototypes.organics")
require("prototypes.parts")
require("prototypes.petrolium-products")
require("prototypes.plates")
require("prototypes.resources")
require("prototypes.technology")
require("prototypes.treefarm-replace")
require("prototypes.vanilla-replace1")
require("prototypes.vanilla-replace2")
require("prototypes.vanilla-stack-size")
require("prototypes.vanilla-warfare")

if narmod.ChallengeMode == true then
  require("prototypes.challengemode")
  else
	require("prototypes.normalmode")
end

-- Default = 0.000008
data.raw["map-settings"]["map-settings"]["enemy_evolution"].time_factor = 0.000001

-- Default = 0.00003          
data.raw["map-settings"]["map-settings"]["enemy_evolution"].pollution_factor = 0.00002

-- Default = 0.005
data.raw["map-settings"]["map-settings"]["enemy_evolution"].destroy_factor = 0.010
