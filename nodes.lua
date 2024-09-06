minetest.register_node("magic_materials:stone_with_februm", {
    description = magic_materials.S("Februm Ore"),
    tiles = {"default_stone.png^magic_materials_mineral_februm.png"},
    groups = {cracky = 1},
    drop = "magic_materials:februm_crystal",
    sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("magic_materials:stone_with_egerum", {
    description = magic_materials.S("Egerum Ore"),
    tiles = {"default_stone.png^magic_materials_mineral_egerum.png"},
    groups = {cracky = 1},
    drop = "magic_materials:egerum_crystal",
    sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("magic_materials:arcanite_block", {
    description = magic_materials.S("Arcanite Block"),
    tiles = {"magic_materials_arcanite_block.png"},
    is_ground_content = false,
    groups = {cracky = 1, level = 2},
    sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("magic_materials:februm_block", {
    description = magic_materials.S("Februm Block"),
    tiles = {"magic_materials_februm_block.png"},
    is_ground_content = false,
    groups = {cracky = 1, level = 2},
    sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("magic_materials:egerum_block", {
    description = magic_materials.S("Egerum Block"),
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
        magic_materials.S("Arcanite Stair"),
        magic_materials.S("Arcanite Slab"),
        default.node_sound_stone_defaults(),
        false,
        magic_materials.S("Inner Arcanite Stair"),
        magic_materials.S("Outer Arcanite Stair")
    )

    stairs.register_stair_and_slab(
        "februm",
        "magic_materials:februm_block",
        {cracky=1, level=2},
        {"magic_materials_februm_block.png"},
        magic_materials.S("Februm Stair"),
        magic_materials.S("Februm Slab"),
        default.node_sound_stone_defaults(),
        false,
        magic_materials.S("Inner Februm Stair"),
        magic_materials.S("Outer Februm Stair")
    )

    stairs.register_stair_and_slab(
        "egerum",
        "magic_materials:egerum_block",
        {cracky=1, level=2},
        {"magic_materials_egerum_block.png"},
        magic_materials.S("Egerum Stair"),
        magic_materials.S("Egerum Slab"),
        default.node_sound_stone_defaults(),
        false,
        magic_materials.S("Inner Egerum Stair"),
        magic_materials.S("Outer Egerum Stair")
    )
end
