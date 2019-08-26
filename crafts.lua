--Blocks
for _,v in pairs({"februm", "egerum", "arcanite"}) do
    minetest.register_craft({
        output = 'magic_materials:' .. v .. '_block',
        recipe = {
                {'magic_materials:' .. v .. '_crystal', 'magic_materials:' .. v .. '_crystal', 'magic_materials:' .. v .. '_crystal'},
                {'magic_materials:' .. v .. '_crystal', 'magic_materials:' .. v .. '_crystal', 'magic_materials:' .. v .. '_crystal'},
                {'magic_materials:' .. v .. '_crystal', 'magic_materials:' .. v .. '_crystal', 'magic_materials:' .. v .. '_crystal'},
            },
    })

    minetest.register_craft({
        type = "shapeless",
        output = 'magic_materials:' .. v .. '_crystal 9',
        recipe = {
            "magic_materials:" .. v .. "_block",
        },
    })
end

--Craft items
minetest.register_craft({
    type = "cooking",
    output = "magic_materials:arcanite_crystal",
    recipe = "magic_materials:arcanite_fragments",
    cooktime = 3,
})

minetest.register_craft({
    type = "shapeless",
    output = 'magic_materials:arcanite_fragments',
    recipe = {
            "magic_materials:februm_crystal",
            "magic_materials:egerum_crystal",
    },
})

minetest.register_craft({
    output = "magic_materials:enchanted_page",
    recipe = {
        {"magic_materials:egerum_crystal", "magic_materials:arcanite_crystal", "magic_materials:egerum_crystal"},
        {"magic_materials:arcanite_crystal", "default:paper", "magic_materials:arcanite_crystal"},
        {"magic_materials:egerum_crystal", "magic_materials:arcanite_crystal", "magic_materials:egerum_crystal"},
    },
})

minetest.register_craft({
    output = "magic_materials:enchanted_book",
    recipe = {
        {"", "magic_materials:enchanted_page", ""},
        {"", "magic_materials:enchanted_page", ""},
        {"", "magic_materials:enchanted_page", ""},
    },
})

minetest.register_craft({
    output = "magic_materials:enchanted_rune",
    recipe = {
        {"magic_materials:arcanite_crystal", "magic_materials:egerum_crystal", "magic_materials:arcanite_crystal"},
        {"magic_materials:egerum_crystal", "default:stone", "magic_materials:egerum_crystal"},
        {"magic_materials:arcanite_crystal", "magic_materials:egerum_crystal", "magic_materials:arcanite_crystal"},
    },
})

minetest.register_craft({
    output = "magic_materials:enchanted_staff",
    recipe = {
        {"magic_materials:enchanted_rune", "default:steel_ingot", "magic_materials:enchanted_rune"},
        {"magic_materials:enchanted_rune", "group:stick", "magic_materials:enchanted_rune"},
        {"magic_materials:enchanted_rune", "group:stick", "magic_materials:enchanted_rune"},
    },
})

--Tools
minetest.register_craft({
    output = "magic_materials:pickaxe_arcanite",
    recipe = {
        {"magic_materials:arcanite_crystal", "magic_materials:arcanite_crystal", "magic_materials:arcanite_crystal"},
        {"", "group:stick", ""},
        {"", "group:stick", ""},
    },
})

minetest.register_craft({
    output = "magic_materials:axe_arcanite",
    recipe = {
        {"magic_materials:arcanite_crystal", "magic_materials:arcanite_crystal", ""},
        {"magic_materials:arcanite_crystal", "group:stick", ""},
        {"", "group:stick", ""},
    },
})

minetest.register_craft({
    output = "magic_materials:sword_arcanite",
    recipe = {
        {"", "magic_materials:arcanite_crystal", ""},
        {"", "magic_materials:arcanite_crystal", ""},
        {"", "group:stick", ""},
    },
})

minetest.register_craft({
    output = "magic_materials:shovel_arcanite",
    recipe = {
        {"", "magic_materials:arcanite_crystal", ""},
        {"", "group:stick", ""},
        {"", "group:stick", ""},
    },
})

if minetest.get_modpath("farming") then
    minetest.register_craft({
        output = "magic_materials:hoe_arcanite",
        recipe = {
            {"magic_materials:arcanite_crystal", "magic_materials:arcanite_crystal", ""},
            {"", "group:stick", ""},
            {"", "group:stick", ""},
        },
    })
end