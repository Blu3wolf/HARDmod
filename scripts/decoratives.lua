require("defines")   
 
function BuiltEntity(event)
	if event.created_entity.name == "workshop-placeable" then   
		local e = event.created_entity
		local s = e.surface
		local X = e.position.x
		local Y = e.position.y

		local l = s.create_entity{name = "workshop", position = {X,Y}, force= game.forces.player}
		l.destructible = false
	end
end

function MinedEntity(event)
	if event.entity.name == "workshop" then
		local b = event.entity
		local X = b.position.x
		local Y = b.position.y   
		lamp =   b.surface.find_entities_filtered{area = {{X - 1.0, Y - 1.0 }, {X + 1.0  , Y + 1.0 }}, name= "workshop-placeable"}
		if lamp[1] ~= nil then
			lamp[1].destroy()   
		end
	end
end

script.on_event(defines.events.on_built_entity, BuiltEntity)
script.on_event(defines.events.on_robot_built_entity, BuiltEntity)
script.on_event(defines.events.on_preplayer_mined_item , MinedEntity)
script.on_event(defines.events.on_entity_died , MinedEntity)
script.on_event(defines.events.on_robot_pre_mined  , MinedEntity)
