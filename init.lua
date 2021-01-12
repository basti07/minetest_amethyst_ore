local S = default.get_translator

minetest.register_node("amethyst:amethyst", {
	description = S("Amethyst Ore"),
	tiles = {"mineral_amethyst.png"},
	groups = {cracky = 2, level = 2},
	sounds = default.node_sound_stone_defaults(),
	light_source = 3,
})


minetest.register_ore({
		ore_type       = "scatter",
		ore            = "amethyst:amethyst",
		wherein        = "default:stone",
		clust_scarcity = 45 * 45 * 45,
		clust_num_ores = 30,
		clust_size     = 5,
		y_max          = -2048,
		y_min          = -31000,
	})
	
	
if minetest.get_modpath("3d_armor") then
	armor:register_armor("amethyst:helmet_amethyst", {
		description = S("Fast Helmet"),
		inventory_image = "3d_armor_helmet_amethyst.png",
		armor_groups = {fleshy=10},
		groups = {armor_head=1, armor_heal=3, armor_use=50},
		damage_groups = {cracky=1, snappy=2, choppy=2, crumbly=1, level=2},
	})

	armor:register_armor("amethyst:chestplate_amethyst", {
		description = S("Fast chestplate"),
		inventory_image = "3d_armor_inv_chestplate_amethyst.png",
		armor_groups = {fleshy=10},
		groups = {armor_torso=1, armor_heal=5, armor_use=50},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
	})


	armor:register_armor("amethyst:leggings_amethyst", {
		description = S("Fast Leggigns"),
		inventory_image = "3d_armor_inv_leggings_amethyst.png",
		armor_groups = {fleshy=10},
		groups = {armor_legs=1, armor_heal=5, armor_use=800},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
	})

	armor:register_armor("amethyst:boots_amethyst", {
		description = S("Fast Boots"),
		inventory_image = "3d_armor_inv_boots_amethyst.png",
		armor_groups = {fleshy=10},
		groups = {armor_feet=1, armor_heal=5, armor_use=800, physics_speed = 1, puts_out_fire = 5},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
	})
end
	

	

