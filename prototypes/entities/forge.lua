data:extend({
  {
    type= "assembling-machine",
    name= "forge",
    flags= {"placeable-neutral", "placeable-player", "player-creation"},
    collision_box= {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box= {{-1.5, -1.5}, {1.5, 1.5}},
    minable= 
	{ 
		hardness= 0.2, 
		mining_time= 0.5, 
		result= "forge" 
	},
    crafting_categories= { "forge" },
    max_health= 150,
    ingredient_count= 1,
    energy_usage= "300kW",
    crafting_speed= 1,
	icon="__HARDmod__/graphics/icons/forge icon.png",
    energy_source=
    {
      type= "electric",
      usage_priority = "secondary-input",
    },
    animation=
    {
      filename= "__HARDmod__/graphics/entity/forge/forge2.png",
      priority= "medium",
      width= 113,
      height= 91,
      line_length= 11,
      frame_count= 33,
      shift = {0.2, 0}
    },
	fluid_boxes ={
      {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-2, 0} }}
      }, 
	  {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {2, 0} }}
      }, 
      {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_level = -1,
        pipe_connections = {{ type="input", position = {0,-2} }}
      }, 
	  {
        production_type = "input",
        --pipe_covers = pipecoverspictures(),
        base_level = -1,
        pipe_connections = {{ type="input", position = {0,2} }}
      }, 
	 },
  },
  
{
   	type = "recipe",
   	name =  "forge",
   	result= "forge",
   	ingredients= { {"steel-plate", 100}, {"fast-inserter", 9} },
	energy_required= 60,
    enabled= "false",
	category= "crafting"
  },
  
	{
	type= "item",
	name= "forge",
	order = "z-z-f",
	place_result= "forge",
	stack_size= 10,
	flags= { "goes-to-quickbar" },
	icon="__HARDmod__/graphics/icons/forge icon.png",
	subgroup = "production-machine",
	},
})
