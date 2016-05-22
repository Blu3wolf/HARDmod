require "utils"
require "defines"
require "interfaces"

remote.add_interface("narmod",
{
  Regenerate = function()
	game.regenerate_entity("tin-ore")
	game.regenerate_entity("zinc-ore")
	game.regenerate_entity("tungsten-ore")
	game.regenerate_entity("gold-ore")
	game.regenerate_entity("bauxite-ore")
	game.regenerate_entity("lead-ore")
	game.regenerate_entity("rutile-ore")
	game.regenerate_entity("quartz")
	game.regenerate_entity("uraninite-ore")
	game.regenerate_entity("fluorite-ore")
  end
}
)
