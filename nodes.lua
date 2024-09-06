local S = magic_materials.S

minetest.register_node("magic_materials:stone_with_februm", {
    description = S("Februm Ore"),
    tiles = {"default_stone.png^magic_materials_mineral_februm.png"},
    groups = {cracky = 1},
    drop = "magic_materials:februm_crystal",
    sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("magic_materials:stone_with_egerum", {
    description = S("Egerum Ore"),
    tiles = {"default_stone.png^magic_materials_mineral_egerum.png"},
    groups = {cracky = 1},
    drop = "magic_materials:egerum_crystal",
    sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("magic_materials:arcanite_block", {
    description = S("Arcanite Block"),
    tiles = {"magic_materials_arcanite_block.png"},
    is_ground_content = false,
    groups = {cracky = 1, level = 2},
    sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("magic_materials:februm_block", {
    description = S("Februm Block"),
    tiles = {"magic_materials_februm_block.png"},
    is_ground_content = false,
    groups = {cracky = 1, level = 2},
    sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("magic_materials:egerum_block", {
    description = S("Egerum Block"),
    tiles = {"magic_materials_egerum_block.png"},
    is_ground_content = false,
    groups = {cracky = 1, level = 2},
    sounds = default.node_sound_stone_defaults(),
})

if minetest.get_modpath("stairs") then
    stairs.register_stair_and_slab(
        "arcanite",
        "magic_materials:arcanite_block",
        {cracky=1, level=2},
        {"magic_materials_arcanite_block.png"},
        S("Arcanite Stair"),
        S("Arcanite Slab"),
        default.node_sound_stone_defaults(),
        false,
        S("Inner Arcanite Stair"),
        S("Outer Arcanite Stair")
    )

    stairs.register_stair_and_slab(
        "februm",
        "magic_materials:februm_block",
        {cracky=1, level=2},
        {"magic_materials_februm_block.png"},
        S("Februm Stair"),
        S("Februm Slab"),
        default.node_sound_stone_defaults(),
        false,
        S("Inner Februm Stair"),
        S("Outer Februm Stair")
    )

    stairs.register_stair_and_slab(
        "egerum",
        "magic_materials:egerum_block",
        {cracky=1, level=2},
        {"magic_materials_egerum_block.png"},
        S("Egerum Stair"),
        S("Egerum Slab"),
        default.node_sound_stone_defaults(),
        false,
        S("Inner Egerum Stair"),
        S("Outer Egerum Stair")
    )
end
