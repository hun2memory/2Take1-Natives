<div align="center">
  <h1>2Take1 Natives</h1>
  <p>
    A Lua Native library for 2Take1 Menu
    <br />
    <a href="https://github.com/hun2memory/2Take1-Natives/releases">Releases</a>
    .
    <a href="https://github.com/hun2memory/2Take1-Natives#installation">Installation</a>
    .
    <a href="https://github.com/hun2memory/2Take1-Natives#usage">Usage</a>
  </p>
</div>

## About The Library
Basically, nobody wants to bother passing a hash argument any time you call a native function with [`native.call`](https://gta.2take1.menu/dev/lua-api/#nativeresult-calluint64_t-id)<br />
And because Native has such a large database, it will take your time to manually write wrapper functions one by one.<br />
So then this library is the result.<br />
I'm not sure if it's really useful, but I hope it makes your code cleaner and easier to read.<br />
It uses [Alloc8or's native data](https://github.com/alloc8or/gta5-nativedb-data), which is more up-to-date and has the correct naming for all of the namespaces.<br />
The library is encrypted with [2Take1's own encryptor](https://gta.2take1.menu/dev/lua-api/#bool-_encryptstring-path). to meet the requirement that this library can only run with 2Take1 and not just out of point.<br />
And for that reason, So this library has **no any malicious things** but only natives table (There is nothing to blame with this library).<br /><br />
The filename should be natives-**x**-**s**.lua where:
- **x** represents the version
- **s** represents whether it is uppercase (if there is none, then it is lowercase).

*Please note Any given version may not be compatible with any given script using this library.<br />
Additionally, you should bundle the version of this library that you are developing against with your script.<br />
And for the last thing, it should be self-explanatory, but it is required **"Trusted Natives"** toggled on your script.<br />
That's pretty much it. Tell me if I forgot something, and I'll edit this page.
## Installation
1. Download the archived library from the <a href="https://github.com/hun2memory/2Take1-Natives/releases">releases</a> page.
  
2. Extract the archive and place the lua library anywhere inside the scripts folder (%appdata%/PopstarDevs/2Take1Menu/scripts).<br />
## Usage
Example.lua Uppercase
```lua
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
```
Example.lua Lower-case
```lua
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
```
## Documentation
[Native Documentation](https://nativedb.dotindustries.dev/natives)


