---@meta

---@class Player
Player = {}

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Abort a hit
---@param message string -- The reason why the hit was aborted
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/abortHit)
function Player:abortHit(message) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Add a custom entity to the player's limit.
---@param tblEnt table -- The entity table (from the DarkRPEntities table).
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/addCustomEntity)
function Player:addCustomEntity(tblEnt) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Give money to a player.
---@param amount number -- The amount of money to give to the player. A negative amount means you're substracting money.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/addMoney)
function Player:addMoney(amount) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Add an item to the pocket of the player.
---@param ent Entity -- The entity to add.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/addPocketItem)
function Player:addPocketItem(ent) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Applies all variables in a player's associated GMod player class to the player.
---@param applyHealth boolean -- Whether the player's health should be set to the starting health.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/applyPlayerClassVars)
function Player:applyPlayerClassVars(applyHealth) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Arrest a player.
---@param time number -- For how long the player is arrested.
---@param Arrester Player -- The player who arrested the target.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/arrest)
function Player:arrest(time,Arrester) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Whether the player can afford the given amount of money
---@param amount number -- The amount of money
---@return boolean answer Whether the player can afford it
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Shared/canAfford)
function Player:canAfford(amount) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Whether the player can lock a given door.
---@param door Entity -- The door
---@return boolean allowed Whether the player is allowed to lock the door.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Shared/canKeysLock)
function Player:canKeysLock(door) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Whether the player can unlock a given door.
---@param door Entity -- The door
---@return boolean allowed Whether the player is allowed to unlock the door.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Shared/canKeysUnlock)
function Player:canKeysUnlock(door) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Returns whether a player is allowed to get a certain job.
---@param team number -- The job.
---@return boolean allowed Whether the player is allowed to get the job.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/changeAllowed)
function Player:changeAllowed(team) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Change the team of a player.
---@param team number -- The team (job number).
---@param force boolean -- Force the change (ignore restrictions that players usually have to get the job).
---@param suppressNotification boolean -- Suppress any notifications.
---@return boolean allowed Whether the player is allowed to get the job.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/changeTeam)
function Player:changeTeam(team,force,suppressNotification) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Set a shared variable.
---@param tblEnt table -- The entity table (from the DarkRPEntities table).
---@return boolean limitReached Whether the limit has been reached.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/customEntityLimitReached)
function Player:customEntityLimitReached(tblEnt) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Tax a player based on the amount of doors and vehicles they have.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/doPropertyTax)
function Player:doPropertyTax() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/90/NewerClient.png)
--- Start drawing the hit information above a hitman.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Client/drawHitInfo)
function Player:drawHitInfo() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/90/NewerClient.png)
--- Draw player info above a player's head (name, health job). Override this function to disable or change drawing behaviour in DarkRP.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Client/drawPlayerInfo)
function Player:drawPlayerInfo() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/90/NewerClient.png)
--- Draw the wanted info above a player's head. Override this to disable or change the drawing of wanted info above players' heads.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Client/drawWantedInfo)
function Player:drawWantedInfo() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Drop the weapon with animations.
---@param weapon Entity -- The weapon to drop
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/dropDRPWeapon)
function Player:dropDRPWeapon(weapon) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Make the player drop an item from the pocket.
---@param ent Entity -- The entity to drop.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/dropPocketItem)
function Player:dropPocketItem(ent) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- End a hit without a message
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/finishHit)
function Player:finishHit() end

---![(Realm)](https:https://upload.wikimedia.org/wikipedia/commons/4/49/Error.png)
--- Get the agenda a player manages.
---@return table agenda The agenda.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Shared/getAgenda)
function Player:getAgenda() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Get the agenda a player can see. Note: when a player is not the manager of an agenda, it returns the agenda of the manager.
---@return table agenda The agenda.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Shared/getAgendaTable)
function Player:getAgendaTable() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Get the value of a DarkRPVar, which is shared between server and client.
---@param var string -- The name of the variable.
---@return any value The value of the DarkRP variable.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Shared/getDarkRPVar)
function Player:getDarkRPVar(var) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Get the entity that is closest to a player's line of sight and its distance.
---@param searchDistance number -- How far to look. You usually don't want this function to return an entity millions of units away. The default is 100 units.
---@param hitDistance number -- The maximum distance between the player's line of sight and the object. Basically how far the player can be 'looking away' from the object. The default is 15 units.
---@param filter function -- The filter for which entities to look for. By default it only looks for players.
---@return Entity closestEnt The entity that is closest to the player's line of sight. Returns nil when not found.
---@return number distance The (minimum) distance between the player's line of sight and the object.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Shared/getEyeSightHitEntity)
function Player:getEyeSightHitEntity(searchDistance,hitDistance,filter) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Get the customer for the current hit
---@return Player customer The customer for the current hit
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/getHitCustomer)
function Player:getHitCustomer() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Get the price the hitman demands for his work.
---@return number price The price of the next hit.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Shared/getHitPrice)
function Player:getHitPrice() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Get the target of a hitman.
---@return Player target The target of the hit.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Shared/getHitTarget)
function Player:getHitTarget() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Get the job table of a player.
---@return table job Table with the job information ( The table structure is something similar when you create the job but parsed in some sections ) .
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Shared/getJobTable)
function Player:getJobTable() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Get a player's pocket items.
---@return table items A table containing crucial information about the items in the pocket.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Shared/getPocketItems)
function Player:getPocketItems() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Get the preferred model of a player for a job.
---@param TeamNr number -- The job number.
---@return string model The preferred model for the job.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/getPreferredModel)
function Player:getPreferredModel(TeamNr) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Get the reason why someone is wanted
---@return string answer The reason
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Shared/getWantedReason)
function Player:getWantedReason() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Whether the player has a certain privilege.
---@param priv string -- The name of the privilege.
---@return boolean answer Whether the player has the privilege.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Shared/hasDarkRPPrivilege)
function Player:hasDarkRPPrivilege(priv) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Whether this hitman has a hit.
---@return boolean answer Whether this player has a hit.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Shared/hasHit)
function Player:hasHit() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Makes the player slightly more hungry. Called in a timer by default.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/hungerUpdate)
function Player:hungerUpdate() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Internal function, starts the timer that taxes the player every once in a while.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/initiateTax)
function Player:initiateTax() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Whether this player is arrested
---@return boolean answer Whether this player is arrested
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Shared/isArrested)
function Player:isArrested() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Whether this player is a Chief.
---@return boolean answer Whether this player is a Chief.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Shared/isChief)
function Player:isChief() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Whether this player is a cook. This function is only available if hungermod is enabled.
---@return boolean answer Whether this player is a cook.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Shared/isCook)
function Player:isCook() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Whether this player is part of the police force (mayor, cp, chief).
---@return boolean answer Whether this player is part of the police force.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Shared/isCP)
function Player:isCP() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Whether this player is a hitman.
---@return boolean answer Whether this player is a hitman.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Shared/isHitman)
function Player:isHitman() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/90/NewerClient.png)
--- Whether the player is in the same room as the LocalPlayer.
---@return boolean inRoom Whether the player is in the same room.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Client/isInRoom)
function Player:isInRoom() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Whether this player is a mayor.
---@return boolean answer Whether this player is a mayor.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Shared/isMayor)
function Player:isMayor() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Whether this player is a medic.
---@return boolean answer Whether this player is a medic.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Shared/isMedic)
function Player:isMedic() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Whether this player is wanted
---@return boolean answer Whether this player is wanted
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Shared/isWanted)
function Player:isWanted() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Unown every door and vehicle owned by this player.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/keysUnOwnAll)
function Player:keysUnOwnAll() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Create the initial hunger data (called on PlayerInitialSpawn).
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/newHungerData)
function Player:newHungerData() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Give a player their salary.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/payDay)
function Player:payDay() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Place an actual hit.
---@param customer Player -- The customer who paid for the hit.
---@param target Player -- The target of the hit.
---@param price number -- The price of the hit.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/placeHit)
function Player:placeHit(customer,target,price) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Remove a custom entity to the player's limit.
---@param tblEnt table -- The entity table (from the DarkRPEntities table).
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/removeCustomEntity)
function Player:removeCustomEntity(tblEnt) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Remove a shared variable. Exactly the same as ply:setDarkRPVar(nil).
---@param variable string -- The name of the variable.
---@param target table -- The clients to whom this variable is sent. Defaults to all players.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/removeDarkRPVar)
function Player:removeDarkRPVar(variable,target) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Remove an item from the pocket of the player.
---@param item number -- The index of the entity to remove from pocket.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/removePocketItem)
function Player:removePocketItem(item) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Request a hit to a hitman.
---@param customer Player -- The customer who paid for the hit.
---@param target Player -- The target of the hit.
---@param price number -- The price of the hit.
---@return boolean succeeded Whether the hit request could be made.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/requestHit)
function Player:requestHit(customer,target,price) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- File a request for a search warrant.
---@param suspect Player -- The player who is suspected.
---@param actor Player -- The player who wants the warrant.
---@param reason string -- The reason for the warrant.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/requestWarrant)
function Player:requestWarrant(suspect,actor,reason) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Internal function. Sends all visibleDarkRPVars of all players to this player.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/sendDarkRPVars)
function Player:sendDarkRPVars() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Internal function. Sends all door data to a player.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/sendDoorData)
function Player:sendDoorData() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Set a shared variable. Make sure the variable is registered with DarkRP.registerDarkRPVar!
---@param variable string -- The name of the variable.
---@param value any -- The value of the variable.
---@param target table -- The clients to whom this variable is sent. Defaults to all players.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/setDarkRPVar)
function Player:setDarkRPVar(variable,value,target) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Set the customer who pays for the hit.
---@param customer Player -- The customer who paid for the hit.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/setHitCustomer)
function Player:setHitCustomer(customer) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Set the price of a hit
---@param price number -- The price of the hit.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/setHitPrice)
function Player:setHitPrice(price) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Set the target of a hit
---@param target Player -- The target of the hit.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/setHitTarget)
function Player:setHitTarget(target) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Set the RPName of a player.
---@param name string -- The new name of the player.
---@param firstrun boolean -- Whether to play nice and find a different name if it has been taken (true) or to refuse the name change when taken (false).
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/setRPName)
function Player:setRPName(name,firstrun) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Set a shared variable that is only seen by the player to whom this variable applies.
---@param variable string -- The name of the variable.
---@param value any -- The value of the variable.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/setSelfDarkRPVar)
function Player:setSelfDarkRPVar(variable,value) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Retrieve a player's real (steam) name.
---@return string name The player's steam name.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Shared/SteamName)
function Player:SteamName() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/90/NewerClient.png)
--- Stop drawing the hit information above a hitman.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Client/stopHitInfo)
function Player:stopHitInfo() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Ban someone from getting a certain job.
---@param team number -- the number of the job (e.g. TEAM_MEDIC).
---@param time number -- For how long the player is banned from this job.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/teamBan)
function Player:teamBan(team,time) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Returns the time left on a player's teamban.
---@param team number -- the number of the job (e.g. TEAM_MEDIC). Uses the player's team if not defined.
---@return number time The time left on the teamban in seconds.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/teamBanTimeLeft)
function Player:teamBanTimeLeft(team) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Unban someone from a team.
---@param team number -- The team to unban from.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/teamUnBan)
function Player:teamUnBan(team) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Unarrest a player.
---@param Unarrester Player -- The player who unarrested the target.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/unArrest)
function Player:unArrest(Unarrester) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Clear the wanted status for this person.
---@param actor Player -- The player who cleared the wanted status.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/unWanted)
function Player:unWanted(actor) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Remove the search warrant for this person.
---@param unwarranter Player -- The player who removed the warrant.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/unWarrant)
function Player:unWarrant(unwarranter) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Set the job name of a player (doesn't change the actual team).
---@param job string -- The name of the job.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/updateJob)
function Player:updateJob(job) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Make this person wanted by the police.
---@param actor Player -- The player who made the other person wanted.
---@param reason string -- The reason for the wanted status.
---@param time number -- The time in seconds for which the player should be wanted.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/wanted)
function Player:wanted(actor,reason,time) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Get a search warrant for this person.
---@param warranter Player -- The player who set the warrant.
---@param reason string -- The reason for the warrant.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/Player/Server/warrant)
function Player:warrant(warranter,reason) end

