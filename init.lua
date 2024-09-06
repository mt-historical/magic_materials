local path = minetest.get_modpath(minetest.get_current_modname())

magic_materials = {}

magic_materials.S = minetest.get_translator(minetest.get_current_modname())

dofile(path .. "/nodes.lua")
dofile(path .. "/craftitems.lua")
dofile(path .. "/crafts.lua")
dofile(path .. "/mapgen.lua")
dofile(path .. "/tools.lua")

if minetest.get_modpath("technic") then
    dofile(path .. "/technic.lua")
end
