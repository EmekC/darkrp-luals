---@meta

---@class Vector
Vector = {}

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
---  Decides whether the vector could be seen by the player if they were to look at it.
---@param filter table -- Trace filter that decides what the player can see through.
---@param ply Player -- The player for whom the vector may or may not be visible.
---@return boolean answer -- Wether the player can see the position.
---@return Vector HitPos -- The position of the thing that blocks the player's sight.
---[wiki](https://https://darkrp.miraheze.org/wiki/Functions/Vector/Shared/isInSight)
function Vector:isInSight(filter, ply) end
