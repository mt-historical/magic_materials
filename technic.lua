local S = magic_materials.S

--Dusts
minetest.register_craftitem("magic_materials:arcanite_dust", {
    description = S("Arcanite Dust"),
    inventory_image = "magic_materials_arcanite_dust.png",
})

minetest.register_craftitem("magic_materials:februm_dust", {
    description = S("Februm Dust"),
    inventory_image = "magic_materials_februm_dust.png",
})

minetest.register_craftitem("magic_materials:egerum_dust", {
    description = S("Egerum Dust"),
    inventory_image = "magic_materials_egerum_dust.png",
})

--Machine-specific recipies
technic.register_separating_recipe({
    input = {"magic_materials:arcanite_dust" .. " 2"},
    output = {"magic_materials:februm_dust", "magic_materials:egerum_dust"},
})

technic.register_grinder_recipe({
    input = {"magic_materials:februm_crystal"},
    output = "magic_materials:februm_dust",
})

technic.register_grinder_recipe({
    input = {"magic_materials:egerum_crystal"},
    output = "magic_materials:egerum_dust",
})

technic.register_grinder_recipe({
    input = {"magic_materials:arcanite_crystal"},
    output = "magic_materials:arcanite_dust",
})

technic.register_grinder_recipe({
    input = {"magic_materials:arcanite_fragments"},
    output = "magic_materials:arcanite_dust",
})

technic.register_alloy_recipe({
    input = {"magic_materials:februm_crystal", "magic_materials:egerum_crystal"},
    output = "magic_materials:arcanite_crystal 2",
    time = 3
})

technic.register_alloy_recipe({
    input = {"magic_materials:februm_dust", "magic_materials:egerum_dust"},
    output = "magic_materials:arcanite_crystal 2",
    time = 3
})

--Smelting dusts
minetest.register_craft({
    type = "cooking",
    output = "magic_materials:februm_crystal",
    recipe = "magic_materials:februm_dust",
    cooktime = 3,
})

minetest.register_craft({
    type = "cooking",
    output = "magic_materials:egerum_crystal",
    recipe = "magic_materials:egerum_dust",
    cooktime = 3,
})

minetest.register_craft({
    type = "cooking",
    output = "magic_materials:arcanite_crystal",
    recipe = "magic_materials:arcanite_dust",
    cooktime = 3,
})
