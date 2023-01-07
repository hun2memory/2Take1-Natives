--Uppercase
local NATIVES = require("natives-x-U") --Replace this with the actual library file name.

local PLAYER_ID = NATIVES.PLAYER.PLAYER_ID()
local PLAYER_PED = NATIVES.PLAYER.PLAYER_PED_ID()
local IS_DEAD_OR_DYING = NATIVES.PED.IS_PED_DEAD_OR_DYING(PLAYER_PED, FALSE)
local COORDS = NATIVES.ENTITY.GET_ENTITY_COORDS(PLAYER_PED, FALSE)
local GET_GAME_TIMER = NATIVES.MISC.GET_GAME_TIMER()

menu.notify(string.format("player_id: %s\nis_dead_or_dying: %s\ncoords: %s\nget_game_timer: %s",
	tostring(PLAYER_ID),
	tostring(PLAYER_PED),
	tostring(COORDS),
	tostring(GET_GAME_TIMER)))
	
--Lower-case
local natives = require("natives-x") --Replace this with the actual library file name.

local player_id = natives.player.player_id()
local player_ped = natives.player.player_ped_id()
local is_dead_or_dying = natives.ped.is_ped_dead_or_dying(player_ped, false)
local coords = natives.entity.get_entity_coords(player_ped, false)
local get_game_timer = natives.misc.get_game_timer()

menu.notify(string.format("player_id: %s\nis_dead_or_dying: %s\ncoords: %s\nget_game_timer: %s",
	tostring(player_id),
	tostring(is_dead_or_dying),
	tostring(coords),
	tostring(get_game_timer)))