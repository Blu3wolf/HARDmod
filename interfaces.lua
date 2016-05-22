module(..., package.seeall)

remote.add_interface("treefarm",
{
	addSeed = function(seedInfo)
		if global.treefarm == nil then
			return "treefarm isn't initialized yet. Save the game and reload it."
		end

		if global.treefarm.seedTypes[seedInfo.name] == nil then
			global.treefarm.seedTypes[seedInfo.name] = {}
			if seedInfo.states ~= nil then
				global.treefarm.seedTypes[seedInfo.name].states = seedInfo.states
			else
				return "growing states not defined"
			end
			if seedInfo.output ~= nil then
				global.treefarm.seedTypes[seedInfo.name].output = seedInfo.output
			else
				return "result not defined"
			end
			if seedInfo.efficiency then
				global.treefarm.seedTypes[seedInfo.name].efficiency = seedInfo.efficiency
			else
				return "efficiency not defined"
			end
			if seedInfo.basicGrowingTime ~= nil then
				global.treefarm.seedTypes[seedInfo.name].basicGrowingTime = seedInfo.basicGrowingTime
			else
				return "basicGrowingTime not defined"
			end
			if seedInfo.randomGrowingTime ~= nil then			
				global.treefarm.seedTypes[seedInfo.name].randomGrowingTime = seedInfo.randomGrowingTime
			else
				return "randomGrowingTime not defined"
			end
			if seedInfo.fertilizerBoost ~= nil then
				global.treefarm.seedTypes[seedInfo.name].fertilizerBoost = seedInfo.fertilizerBoost
			else
				return "fertilizerBoost not defined"
			end
			global.treefarm.isGrowing[seedInfo.name] = {}
			global.treefarm.requestLookUpTableUpdate = true
		else
			return "seed type already present"
		end
	end,

	readSeed = function(seedName)
		return global.treefarm.seedTypes[seedName]
	end,

	getSeedTypesData = function()
		return global.treefarm.seedTypes
	end,


	getNumTrees = function()
		return #global.treefarm.isGrowing.basicTrees
	end,

	getFirstTreeTick = function()
		return global.treefarm.isGrowing.basicTrees[1].nextUpdate
	end,

	getFirstTreeEff = function()
		return global.treefarm.isGrowing.basicTrees[1].efficiency
	end,

	fixTreeTicks = function()
		global.treefarm.seedTypes.basicTrees.efficiency.other = 0.01
		for _, tree in ipairs(global.treefarm.isGrowing.basicTrees) do
			if tree.efficiency == 0 then
				tree.efficiency = 1
				tree.nextUpdate = game.tick + 60
			end
		end
	end,

	removeAllTrees = function()
		for _, tree in ipairs(global.treefarm.isGrowing.basicTrees) do
			if tree.entity.valid then
				tree.entity.destroy()
			end
		end

		while (#global.treefarm.isGrowing.basicTrees > 0) do
			table.remove(global.treefarm.isGrowing.basicTrees)
		end
	end
 })