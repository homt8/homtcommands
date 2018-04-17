minetest.register_privilege("homtextras_admin", "Need to use the extras in setbar")
minetest.register_privilege("homtextras", "Need to use the extras in setbar safe plus")

minetest.register_chatcommand("homtsetbar", {
	params = "",
	description = "Sets the size of your hotbar. 1 - 16",
	privs = {homtextras_admin=true},
	func = function(name, param)
		if param == "" then
			minetest.chat_send_player(name, "Use a number from 1 - 16")
			return
		end
		if type(tonumber(param)) ~= "number" then
			minetest.chat_send_player(name, "This is not a number.")
			return
		end
		if tonumber(param) < 1 or tonumber(param) > 16 then
			minetest.chat_send_player(name, "The number of slots must be between 1 and 16.")
			return
		end
		local player = minetest.get_player_by_name(name)
		player:hud_set_hotbar_itemcount(tonumber(param))
		player:hud_set_hotbar_image("")
	end,
})

minetest.register_chatcommand("homtsetbar_safe", {
	params = "",
	description = "Sets the size of your hotbar. 1 - 10",
	privs = {homtextras=true},
	func = function(name, param)
		if param == "" then
			minetest.chat_send_player(name, "Use a number from 1 - 10")
			return
		end
		if type(tonumber(param)) ~= "number" then
			minetest.chat_send_player(name, "This is not a number.")
			return
		end
		if tonumber(param) < 1 or tonumber(param) > 10 then
			minetest.chat_send_player(name, "The number of slots must be between 1 and 10.")
			return
		end
		local player = minetest.get_player_by_name(name)
		player:hud_set_hotbar_itemcount(tonumber(param))
		player:hud_set_hotbar_image("")
	end,
})
