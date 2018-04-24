
minetest.register_privilege("debug", "Lets person set debug a system for this level has to use with an access for i could debug in system special linux")
minetest.register_privilege("homtprivs", "Lets person set level of privlege people have info the moderator level")
minetest.register_privilege("homtprivs_admin", "Lets person set level of privlege people have info the admin level")
minetest.register_privilege("usertv", "Lets person set usertv have info to people grant missing privileges level chat")
minetest.register_privilege("zoom", "Lets person set zoom so that even zoom is put to the false who put shop mark can access level de homtprivs is ready for people")

minetest.register_chatcommand("homtprivs_commands", {
	privs = {homtprivs_admin = true},
	func = function(name, param)
		minetest.chat_send_player(name,"Available commands - /addprivs_admin, /addprivs_mod, /addprivs_helper, /addprivs_vip, /addprivs_norm, /add_revokeprivs")
		return true
	end,
})

minetest.register_chatcommand("homtprivs_commands_safe", {
	privs = {homtprivs = true},
	func = function(name, param)
		minetest.chat_send_player(name,"Available commands - /addprivs_helper, /addprivs_norm, /addprivs_revoke, /addprivs_vip")
		return true
	end,
})

minetest.register_chatcommand("addprivs_owner", {
	params = "",
	description = "Owner",
	privs={homtprivs_admin=true, server=true},
	func = function(name, param)
		if minetest.get_player_by_name(param) then
		minetest.set_player_privs(param, {})
		local privs=minetest.get_player_privs(param)
			privs.shout=true
			privs.interact=true
			privs.home=true
			privs.settime=true
			privs.teleport=true
			privs.creative=true
			privs.bring=true
			privs.fast=true
			privs.fly=true
			privs.noclip=true
			privs.basic_privs=true
			privs.kick=true
			privs.ban=true
			privs.worldedit=true
			privs.areas=true
			privs.areas_high_limit=true
			privs.password=true
			privs.privs=true
			privs.protection_bypass=true
			privs.rollback=true
			privs.server=true
			privs.ui_full=true
			privs.give=true
			privs.homtextras=true
			privs.homtextras_admin=true
			privs.homtnametag=true
			privs.homtnametag_admin=true
			privs.homtprivs=true
			privs.homtprivs_admin=true
			privs.usertv=true
			privs.jail=true
			privs.spill=true
			privs.spawn=true
			privs.debug=true
			privs.zoom=true
			privs.watch=true
			minetest.set_player_privs(param,privs)
			minetest.chat_send_player(param, "You are now a Owner")
			minetest.chat_send_all(""..param.." Has been granted to owner by "..name.."")
			return true
		end
end})

minetest.register_chatcommand("addprivs_admin", {
	params = "",
	description = "Administrator",
	privs={homtprivs=true},
	func = function(name, param)
		if minetest.get_player_by_name(param) then
		minetest.set_player_privs(param, {})
		local privs=minetest.get_player_privs(param)
			privs.shout=true
			privs.interact=true
			privs.home=true
			privs.settime=true
			privs.teleport=true
			privs.creative=true
			privs.bring=true
			privs.fast=true
			privs.fly=true
			privs.noclip=true
			privs.basic_privs=true
			privs.kick=true
			privs.ban=true
			privs.worldedit=true
			privs.areas=true
			privs.areas_high_limit=true
			privs.password=true
			privs.protection_bypass=true
			privs.rollback=true
			privs.ui_full=true
			privs.give=true
			privs.homtextras=true
			privs.homtextras_admin=true
			privs.homtnametag=true
			privs.homtnametag_admin=true
			privs.homtprivs=true
			privs.homtprivs_admin=true
			privs.usertv=true
			privs.jail=true
			privs.spill=true
			privs.spawn=true
			privs.debug=true
			privs.zoom=true
			privs.watch=true
			minetest.set_player_privs(param,privs)
			minetest.chat_send_player(param, "You are now an Admin")
			minetest.chat_send_all(""..param.." Has been granted to admin by "..name.."")
			return true
		end
end})

minetest.register_chatcommand("addprivs_mod", {
	params = "",
	description = "Moderator",
	privs={homtprivs_admin=true},
	func = function(name, param)
		if minetest.get_player_by_name(param) then
		minetest.set_player_privs(param, {})
		local privs=minetest.get_player_privs(param)
			privs.shout=true
			privs.interact=true
			privs.home=true
			privs.teleport=true
			privs.fast=true
			privs.fly=true
			privs.noclip=true
			privs.settime=true
			privs.teleport=true
			privs.creative=true
			privs.bring=true
			privs.basic_privs=true
			privs.kick=true
			privs.ban=true
			privs.areas=true
			privs.areas_high_limit=true
			privs.protection_bypass=true
			privs.rollback=true
			privs.give=true
			privs.homtextras=true
			privs.homtnametag=true
			privs.homtprivs=true
			privs.usertv=true
			privs.jail=true
			privs.spill=true
			privs.spawn=true
			privs.zoom=true
			privs.watch=true
			minetest.set_player_privs(param,privs)
			minetest.chat_send_player(param, "You are now a Moderator")
			minetest.chat_send_all(""..param.." Has been granted to moderator by "..name.."")
			return true
		end
end})

minetest.register_chatcommand("addprivs_helper", {
	params = "",
	description = "Helper",
	privs={homtprivs=true},
	func = function(name, param)
		if minetest.get_player_by_name(param) then
		minetest.set_player_privs(param, {})
		local privs=minetest.get_player_privs(param)
			privs.shout=true
			privs.interact=true
			privs.home=true
			privs.fast=true
			privs.fly=true
			privs.noclip=true
			privs.settime=true
			privs.teleport=true
			privs.creative=true
			privs.bring=true
			privs.basic_privs=true
			privs.kick=true
			privs.areas_high_limit=true
			privs.homtnametag=true
			privs.usertv=true
			privs.jail=true
			privs.spill=true
			privs.spawn=true
			privs.zoom=true
			minetest.set_player_privs(param,privs)
			minetest.chat_send_player(param, "You are now a Helper")
			minetest.chat_send_all(""..param.." Has been granted to helper by "..name.."")
			return true
		end
end})

minetest.register_chatcommand("addprivs_vip", {
	params = "",
	description = "VIP",
	privs={homtprivs=true},
	func = function(name, param)
		if minetest.get_player_by_name(param) then
		minetest.set_player_privs(param, {})
		local privs=minetest.get_player_privs(param)
			privs.shout=true
			privs.interact=true
			privs.home=true
			privs.fast=true
			privs.fly=true
			privs.noclip=true
			privs.settime=true
			privs.teleport=true
			privs.creative=true
			privs.areas_high_limit=true
			privs.usertv=true
			privs.spawn=true
			minetest.set_player_privs(param,privs)
			minetest.chat_send_player(param, "You are now a VIP")
			minetest.chat_send_all(""..param.." Has been granted to vip by "..name.."")
			return true
		end
end})

minetest.register_chatcommand("addprivs_norm", {
	params = "",
	description = "Normal-Player",
	privs={basic_privs=true, homtprivs=true},
	func = function(name, param)
		if minetest.get_player_by_name(param) then
		minetest.set_player_privs(param, {})
		local privs=minetest.get_player_privs(param)
			privs.spawn=true
			privs.shout=true
			privs.interact=true
			privs.home=true
			privs.usertv=true
			minetest.set_player_privs(param,privs)
			minetest.chat_send_player(param, "You are now a Normal-Player")
			minetest.chat_send_all(""..param.." Has been granted to normal-player by "..name.."")
			return true
		end
end})

minetest.register_chatcommand("addprivs_revoke", {
	params = "",
	description = "Remove all privs",
	privs={basic_privs=true, homtprivs=true},
	func = function(name, param)
		if minetest.get_player_by_name(param) then
		minetest.set_player_privs(param, {})
			minetest.chat_send_player(param, "You are now a privs revoke")
			minetest.chat_send_player(name, param .. " is now privs revoke")
			return true
		end
end})
