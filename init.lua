minetest.register_entity("unknown_object:unknown_object", {
    hp_max = 1,
    physical = true,
    weight = 5,
    collisionbox = {-0.5,-0.5,-0.5, 0.5,0.5,0.5},
    visual = "sprite",
    visual_size = {x=0.8, y=0.8},
    textures = {"unknown_object.png"}, -- number of required textures depends on visual
    colors = {}, -- number of required colors depends on visual
    spritediv = {x=1, y=1},
    initial_sprite_basepos = {x=0, y=0},
    is_visible = true,
    makes_footstep_sound = false,
})

minetest.register_craftitem("unknown_object:unknown_object_spawner", {
    description = "Fake Unknown Object Spawner",
    inventory_image = "unknown_object.png",
    on_place = function(itemstack, placer, pointed_thing)
        if pointed_thing.above then
            minetest.env:add_entity(pointed_thing.above, "unknown_object:unknown_object")
            itemstack:take_item()
        end
        return itemstack
    end,
})
