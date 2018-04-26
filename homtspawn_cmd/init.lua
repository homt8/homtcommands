
minetest.register_privilege("spawn", "Spawn point have for teleport to levels building spawn")

spawn_command = {}
spawn_command.pos = {x=0, y=3, z=0}

if minetest.setting_get_pos("static_spawnpoint") then
    spawn_command.pos = minetest.setting_get_pos("static_spawnpoint")
end

minetest.register_chatcommand("spawn", {
    description = "Teleport you to spawn point.",
	privs={spawn = true},
    func = function(name)
        local player = minetest.get_player_by_name(name)
        if player == nil then
            -- just a check to prevent the server crashing
            return false
        end
        local pos = player:getpos()
        if pos.x>-20 and pos.x<20 and pos.y>-20 and pos.z>-20 and pos.z<20 then
        
        else
            player:setpos(spawn_command.pos)
            minetest.chat_send_player(name, "Teleported to spawn!")
        end
    end,
})
