local S = default.get_translator

minetest.register_craftitem("amethyst:amethyst_ingot", {
	description = S("Amethyst Ingot"),
	inventory_image = "amethyst_ingot.png"
})

minetest.register_node("amethyst:amethyst", {
	description = S("Amethyst Ore"),
	tiles = {"mineral_amethyst.png"},
	groups = {cracky = 2, level = 2},
	sounds = default.node_sound_stone_defaults(),
	light_source = 3,
	drop = "amethyst:amethyst_ingot",
})

minetest.register_ore({
		ore_type       = "scatter",
		ore            = "amethyst:amethyst",
		wherein        = "default:stone",
		clust_scarcity = 40 * 40 * 40,
		clust_num_ores = 5,
		clust_size     = 8,
		y_max          = -2048,
		y_min          = -31000,
	})
	
	
if minetest.get_modpath("3d_armor") then
	armor:register_armor("amethyst:helmet_amethyst", {
		description = S("Amethyst Helmet"),
		inventory_image = "amethyst_helmet_amethyst_preview.png",
		armor_groups = {fleshy=10},
		groups = {armor_head=1, armor_heal=3, armor_use=50},
		damage_groups = {cracky=1, snappy=2, choppy=2, crumbly=1, level=2},
	})
	
	

	armor:register_armor("amethyst:chestplate_amethyst", {
		description = S("Amethyst chestplate"),
		inventory_image = "amethyst_chestplate_amethyst_preview.png",
		armor_groups = {fleshy=10},
		groups = {armor_torso=1, armor_heal=5, armor_use=50},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
	})
	
	


	armor:register_armor("amethyst:leggings_amethyst", {
		description = S("Amethyst Leggigns"),
		inventory_image = "amethyst_leggins_amethyst_preview.png",
		armor_groups = {fleshy=10},
		groups = {armor_legs=1, armor_heal=5, armor_use=800},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
	})
	
	

	armor:register_armor("amethyst:boots_amethyst", {
		description = S("Amethyst Boots"),
		inventory_image = "amethyst_boots.png",
		armor_groups = {fleshy=10},
		groups = {armor_feet=1, armor_heal=5, armor_use=800, physics_speed = 1, puts_out_fire = 5},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
	})
	
	
end


minetest.register_craft({
		output = "amethyst:helmet_amethyst",
		recipe = {
			{"amethyst:amethyst_ingot", "amethyst:amethyst_ingot", "amethyst:amethyst_ingot"},
			{"amethyst:amethyst_ingot", "", "amethyst:amethyst_ingot"}
		}
	})


minetest.register_craft({
		output = "amethyst:chestplate_amethyst",
		recipe = {
			{"amethyst:amethyst_ingot", "", "amethyst:amethyst_ingot"},
			{"amethyst:amethyst_ingot", "amethyst:amethyst_ingot", "amethyst:amethyst_ingot"},
			{"amethyst:amethyst_ingot", "amethyst:amethyst_ingot", "amethyst:amethyst_ingot"}
		}
	})



minetest.register_craft({
		output = "amethyst:leggings_amethyst",
		recipe = {
			{"amethyst:amethyst_ingot", "amethyst:amethyst_ingot", "amethyst:amethyst_ingot"},
			{"amethyst:amethyst_ingot", "", "amethyst:amethyst_ingot"},
			{"amethyst:amethyst_ingot", "", "amethyst:amethyst_ingot"}
		}
	})


minetest.register_craft({
		output = "amethyst:boots_amethyst",
		recipe = {
			{"amethyst:amethyst_ingot", "", "amethyst:amethyst_ingot"},
			{"amethyst:amethyst_ingot", "", "amethyst:amethyst_ingot"}
		}
	})
