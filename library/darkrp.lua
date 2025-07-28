---@meta

DarkRP = {}

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Add a translation table for chat command descriptions. See darkrpmod/lua/darkrp_language/chatcommands.lua for an example.
---@param languageCode string -- The language code of the language. For English this is "en".
---@param translations table -- Key-value table with chat command strings as keys and their translation as value.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/addChatCommandsLanguage)
function DarkRP.addChatCommandsLanguage(languageCode,translations) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/90/NewerClient.png)
--- Add a chat command with specific receivers
---@param prefix string -- The chat command itself ("/pm", "/ooc", "/me" are some examples)
---@param text string -- The text that shows up when it says "Some people can hear you X"
---@param hearFunc function -- A function(ply, splitText) that decides whether this player can or cannot hear you.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Client/addChatReceiver)
function DarkRP.addChatReceiver(prefix,text,hearFunc) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/90/NewerClient.png)
--- Add a tab to the F4 menu.
---@param name string -- The title of the tab.
---@param panel Panel -- The panel of the tab.
---@return number index The index of the tab in the menu. This is the number you use for the tab in DarkRP.switchTabOrder.
---@return Panel sheet The tab sheet.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Client/addF4MenuTab)
function DarkRP.addF4MenuTab(name,panel) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Make this team a hitman.
---@param team_number number -- The number of the team (e.g. TEAM_MOB)
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/addHitmanTeam)
function DarkRP.addHitmanTeam(team_number) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Add a jail position to the map. This jail position will be saved in the database.
---@param pos Vector -- The position to add as jailpos.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/addJailPos)
function DarkRP.addJailPos(pos) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Create a language/translation.
---@param language_name string -- The short name of the language ("en" is English). Make sure the language name fits a possible value for gmod_language!
---@param language_contents table -- A table that contains the translation sentences. Look at sh_english.lua for an example.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/addLanguage)
function DarkRP.addLanguage(language_name,language_contents) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Add a phrase to the existing translation.
---@param language_name string -- The short name of the language ("en" is English). Make sure the language name fits a possible value for gmod_language!
---@param key string -- The name of the translated phrase.
---@param translation string -- The translation of the phrase.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/addPhrase)
function DarkRP.addPhrase(language_name,key,translation) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Add a player gesture to the DarkRP animations menu (the one that opens with the keys weapon.). Note: This function must be called BOTH serverside AND clientside!
---@param anim number -- The gesture enumeration.
---@param text string -- The textual description of the animation. This is what players see on the button in the menu.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/addPlayerGesture)
function DarkRP.addPlayerGesture(anim,text) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Add a spawn position to the database. The position will not replace other spawn positions.
---@param team number -- The job to store the spawn position of.
---@param pos Vector -- The position to store.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/addTeamSpawnPos)
function DarkRP.addTeamSpawnPos(team,pos) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Create a category for the F4 menu.
---@param item table -- Table of the custom entity/job/etc.
---@param kind string -- The kind of the category (e.g. 'jobs' for job stuff).
---@param cat string -- The name of the category. Note that the category must exist. Defaults to 'Other'.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/addToCategory)
function DarkRP.addToCategory(item,kind,cat) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Create an alias for a chat command
---@param command string -- An already existing chat command.
---@param ... any -- One or more aliases for the chat command.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/chatCommandAlias)
function DarkRP.chatCommandAlias(command,...) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/90/NewerClient.png)
--- Close the F1 help menu.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Client/closeF1Menu)
function DarkRP.closeF1Menu() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/90/NewerClient.png)
--- Close the F4 menu if it's open.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Client/closeF4Menu)
function DarkRP.closeF4Menu() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Create an agenda for groups of jobs to communicate.
---@param title string -- The name of the agenda.
---@param manager number -- The team numer of the manager of the agenda (the one who can set the agenda).
---@param listeners table -- The jobs that can see this agenda.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/createAgenda)
function DarkRP.createAgenda(title,manager,listeners) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Create an ammo type.
---@param name string -- The name of the ammo.
---@param tbl table -- Table containing the information for the ammo.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/createAmmoType)
function DarkRP.createAmmoType(name,tbl) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Create a category for the F4 menu.
---@param tbl table -- Table describing the category.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/createCategory)
function DarkRP.createCategory(tbl) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Create a demote group. When you get banned (demoted) from one of the jobs in this group, you will be banned from every job in this group.
---@param name string -- The name of the demote group.
---@param tbl table -- Table consisting of a list of job.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/createDemoteGroup)
function DarkRP.createDemoteGroup(name,tbl) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Create a entity for DarkRP.
---@param name string -- The name of the entity.
---@param tbl table -- Table containing the information for the entity.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/createEntity)
function DarkRP.createEntity(name,tbl) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Create a entity group for DarkRP.
---@param name string -- The name of the entity group.
---@param teamNrs number -- Vararg team numbers.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/createEntityGroup)
function DarkRP.createEntityGroup(name,teamNrs) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Create food for DarkRP.
---@param name string -- The name of the food.
---@param tbl table -- Table containing the information for the food.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/createFood)
function DarkRP.createFood(name,tbl) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Create a group chat.
---@param functionOrJob any -- A function that returns whether the person can see the group chat, or a team number.
---@param teamNr number -- VarArg team number.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/createGroupChat)
function DarkRP.createGroupChat(functionOrJob,teamNr) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Create a job for DarkRP.
---@param name string -- The name of the job.
---@param tbl table -- Table containing the information for the job.
---@return number team The team number of the job you've created.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/createJob)
function DarkRP.createJob(name,tbl) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Create a money bag.
---@param pos Vector -- The The position where the money bag is to be spawned.
---@param amount number -- The amount of money.
---@return Entity money The money bag entity.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/createMoneyBag)
function DarkRP.createMoneyBag(pos,amount) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Internal function: creates an entry in the database for a player who has joined for the first time.
---@param ply Player -- The player to create the data for.
---@param name string -- The name of the player.
---@param wallet number -- The amount of money the player has.
---@param salary number -- The salary of the player.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/createPlayerData)
function DarkRP.createPlayerData(ply,name,wallet,salary) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Ask someone a question.
---@param question string -- The question to ask.
---@param quesid string -- A unique question id.
---@param target Player -- Who to ask the question.
---@param delay number -- For how long the player will be able to answer.
---@param callback function -- The function that gets called after the question.
---@param fromPly Player -- The player who asked the question.
---@param toPly Player -- A third involved player.
---@param ... any -- Any other information.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/createQuestion)
function DarkRP.createQuestion(question,quesid,target,delay,callback,fromPly,toPly,...) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Create a shipment for DarkRP.
---@param name string -- The name of the shipment.
---@param tbl table -- Table containing the information for the shipment.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/createShipment)
function DarkRP.createShipment(name,tbl) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Create a vehicle for DarkRP.
---@param name string -- The name of the vehicle.
---@param tbl table -- Table containing the information for the vehicle.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/createVehicle)
function DarkRP.createVehicle(name,tbl) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Create a vote.
---@param question string -- The question to ask in the vote.
---@param voteid string -- A unique vote id.
---@param target Player -- Whom the vote is about.
---@param delay number -- For how long the player will be able to answer.
---@param callback function -- The function that gets called after the vote.
---@param excludeVoters table -- The players to exclude from voting.
---@param fail function -- A callback for when the vote fails.
---@param ... any -- Any other information. If the vote involves multiple parties (i.e. the target of the vote and person who started it are different) you should provide a table with the "source" field set to the player who intiated the vote. This ensures the notifications about the vote are sent to the correct player.
---@return table vote All the vote information. Returns nil if the vote did not start because the canStartVote hook blocked it.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/createVote)
function DarkRP.createVote(question,voteid,target,delay,callback,excludeVoters,fail,...) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Declare a chat command (describe it)
---@param table table -- The description of the chat command. Has to contain a string: command, string: description, number: delay, optional function: condition
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/declareChatCommand)
function DarkRP.declareChatCommand(table) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Create a chat command that calls the function
---@param chat_command string -- The registered chat command
---@param callback function -- The function that is called when the chat command is executed
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/defineChatCommand)
function DarkRP.defineChatCommand(chat_command,callback) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Create a chat command that calls the function if the player has the right CAMI privilege. Will automatically notify the user when they don't have access. Note that chat command functions registered with this function can NOT override the chat that will appear after the command has been executed.
---@param chat_command string -- The registered chat command
---@param privilege string -- The name of the CAMI privilege
---@param callback function -- The function that is called when the chat command is executed
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/definePrivilegedChatCommand)
function DarkRP.definePrivilegedChatCommand(chat_command,privilege,callback) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/90/NewerClient.png)
--- Makes sure the string will not be localised when drawn or printed.
---@param text string -- The text to delocalise.
---@return string text The delocalised text.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Client/deLocalise)
function DarkRP.deLocalise(text) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Destroy the last created vote.
---@param destroyed boolean -- Whether there was a last vote to destroy or not.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/destroyLastVote)
function DarkRP.destroyLastVote(destroyed) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Destroy a question by ID.
---@param id string -- The id of the question.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/destroyQuestion)
function DarkRP.destroyQuestion(id) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Destroy all questions that have something to do with this ent.
---@param ent Entity -- The Entity.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/destroyQuestionsWithEnt)
function DarkRP.destroyQuestionsWithEnt(ent) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Destroy all votes that have something to do with this ent.
---@param ent Entity -- The Entity.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/destroyVotesWithEnt)
function DarkRP.destroyVotesWithEnt(ent) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Get the entity of a door index (inverse of ent:doorIndexToEnt()). Note: the door MUST have been created by the map!
---@param index number -- The door index
---@return Entity door The door entity
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/doorIndexToEnt)
function DarkRP.doorIndexToEnt(index) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Get an ENT index from a door index.
---@param index number -- The door index
---@return number index The ENT index
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/doorToEntIndex)
function DarkRP.doorToEntIndex(index) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Throw a simplerr formatted error. Also halts the stack, which means that statements after calling this function will not execute.
---@param message string -- The message of the error.
---@param stack number -- From which point in the function call stack to report the error. 1 to include the function that called DarkRP.error, 2 to exclude it, etc. The default value is 1.
---@param hints table -- Table containing hint strings. Use these hints to explain the error, describe possible causes or provide help to solve the problem.
---@param path string -- Override the path of the error. Will be shown in the error message. By default this is determined by the stack level.
---@param line number -- Override the line number of the error. By default this is determined by the stack level.
---@return boolean succeed Simplerr return value: whether the calculation succeeded. Always false. This return value will never be reached.
---@return string msg Simplerr return value: nicely formatted error message. This return value will never be reached.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/error)
function DarkRP.error(message,stack,hints,path,line) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Throw a simplerr formatted error. Unlike DarkRP.error, this does not halt the stack. This means that statements after calling this function will be executed like normal.
---@param message string -- The message of the error.
---@param stack number -- From which point in the function call stack to report the error. 1 to include the function that called DarkRP.error, 2 to exclude it, etc. The default value is 1.
---@param hints table -- Table containing hint strings. Use these hints to explain the error, describe possible causes or provide help to solve the problem.
---@param path string -- Override the path of the error. Will be shown in the error message. By default this is determined by the stack level.
---@param line number -- Override the line number of the error. By default this is determined by the stack level.
---@return boolean succeed Simplerr return value: whether the calculation succeeded. Always false.
---@return string msg Simplerr return value: nicely formatted error message.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/errorNoHalt)
function DarkRP.errorNoHalt(message,stack,hints,path,line) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- String arguments exploded into a table. It accounts for substrings in quotes, which makes it more intelligent than string.Explode
---@param arg string -- The full string of the argument
---@return table args The table of arguments
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/explodeArg)
function DarkRP.explodeArg(arg) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Find an empty position as close as possible to the given position (Note: this algorithm is slow!).
---@param pos Vector -- The position to check for emptiness.
---@param ignore table -- Table of things the algorithm can ignore.
---@param distance number -- The maximum distance to look for empty positions.
---@param step number -- The size of the steps to check (it places it will look are STEP units removed from one another).
---@param area Vector -- The hull to check, this is Vector(16, 16, 64) for players.
---@return Vector pos A found position. When no position was found, the parameter is returned
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/findEmptyPos)
function DarkRP.findEmptyPos(pos,ignore,distance,step,area) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Find a single player based on vague information.
---@param info string -- The information of the player (UserID, SteamID, name).
---@return Player found The player that matches the description.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/findPlayer)
function DarkRP.findPlayer(info) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Find a list of players based on vague information.
---@param info string -- The information of the player (UserID, SteamID, name).
---@return table found Table of players that match the description.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/findPlayers)
function DarkRP.findPlayers(info) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Format a number as a money value. Includes currency symbol.
---@param amount number -- The money to format, e.g. 100000.
---@return string money The money as a nice string, e.g. "₦100,000".
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/formatMoney)
function DarkRP.formatMoney(amount) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Get all agendas. Note: teams that share an agenda use the exact same agenda table. E.g. when you change the agenda of the CP, the agenda of the Chief will automatically be updated as well. Make sure this property is maintained when modifying the agenda table. Not maintaining that property will lead to players not seeing the right agenda text.
---@param agendas table -- Table in which the keys are team numbers and the values agendas.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/getAgendas)
function DarkRP.getAgendas(agendas) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Get the available vehicles that DarkRP supports.
---@param vehicles table -- Names, models and classnames of all supported vehicles.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/getAvailableVehicles)
function DarkRP.getAvailableVehicles(vehicles) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Get all categories for all F4 menu tabs.
---@param tbl table -- all categories.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/getCategories)
function DarkRP.getCategories(tbl) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Get the information on a chat command.
---@param command string -- The chat command
---@return table chatTable A table containing the information of the chat command.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/getChatCommand)
function DarkRP.getChatCommand(command) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Get the translated description of a chat command.
---@param command string -- The chat command string.
---@return string description The translated chat command description.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/getChatCommandDescription)
function DarkRP.getChatCommandDescription(command) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Get every chat command.
---@param commands table -- A table containing every command. Table indices are the command strings.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/getChatCommands)
function DarkRP.getChatCommands(commands) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Get a chat sound (play a noise when someone says something) associated with the given phrase.
---@param text string -- The text that triggers the chat sound.
---@return table soundPaths A table of string sound paths associated with the given text.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/getChatSound)
function DarkRP.getChatSound(text) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Get the demote group of a team. Every team in the same group will return the same object.
---@param teamNr number -- Table consisting of a list of job.
---@return Disjoint-Set set The demote group identifier.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/getDemoteGroup)
function DarkRP.getDemoteGroup(teamNr) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Get all demote groups Every team in the same group will return the same object.
---@param set table -- Table in which the keys are team numbers and the values Disjoint-Set.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/getDemoteGroups)
function DarkRP.getDemoteGroups(set) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Internal function, retrieves all the registered door variables.
---@param doorvars table -- The door variables, indexed by number
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/getDoorVars)
function DarkRP.getDoorVars(doorvars) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Internal function, retrieves all the registered door variables, indeded by their names.
---@param doorvars table -- The door variables, indexed by name
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/getDoorVarsByName)
function DarkRP.getDoorVarsByName(doorvars) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/90/NewerClient.png)
--- Get the F4 menu panel.
---@param panel Panel -- The F4 menu panel. It will be invalid until the F4 menu has been opened.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Client/getF4MenuPanel)
function DarkRP.getF4MenuPanel(panel) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Get all food items.
---@param set table -- Table with food items.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/getFoodItems)
function DarkRP.getFoodItems(set) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Get all group chats.
---@param set table -- Table with functions that decide who can hear who.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/getGroupChats)
function DarkRP.getGroupChats(set) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Get all the hitman teams.
---@param tbl table -- A table in which the keys are TEAM_ numbers and the values are just true.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/getHitmanTeams)
function DarkRP.getHitmanTeams(tbl) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Get all the active hits
---@param hits table -- A table in which the keys are hitmen and the values are hit information, like the customer.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/getHits)
function DarkRP.getHits(hits) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- chat commands that have been defined, but not declared. Information about these chat commands is missing.
---@param commands table -- A table containing the undeclared chat commands.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/getIncompleteChatCommands)
function DarkRP.getIncompleteChatCommands(commands) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Get the job table and number from the command of the job.
---@param command string -- The command of the job, without preceding slash (e.g. 'medic' for medic)
---@return table tbl A table containing all information about the job.
---@return number jobindex The index of the job (for 'medic' it's the value of TEAM_MEDIC).
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/getJobByCommand)
function DarkRP.getJobByCommand(command) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Get the table of all current laws.
---@param laws table -- A table of all current laws.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/getLaws)
function DarkRP.getLaws(laws) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Get all the phrases a language is missing.
---@param languageCode string -- The language code of the language. For English this is "en".
---@return string missingPhrases All the missing phrases formatted in such way that you can copy and paste it in your language file.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/getMissingPhrases)
function DarkRP.getMissingPhrases(languageCode) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Get a phrase from the selected language.
---@param key string -- The name of the translated phrase.
---@param ... any -- Phrase Parameters. Some phrases need extra information, like in "PLAYERNAME just won the lottery!". Not filling in the phrase parameters will cause errors.
---@return string phrase The formatted phrase.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/getPhrase)
function DarkRP.getPhrase(key,...) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/90/NewerClient.png)
--- Get the model preferred by the player (if the job allows multiple models).
---@param teamNr number -- The team number of the job.
---@return string model The preferred model for the job.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Client/getPreferredJobModel)
function DarkRP.getPreferredJobModel(teamNr) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Get every chat command, sorted by their name.
---@param commands table -- A table containing every command.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/getSortedChatCommands)
function DarkRP.getSortedChatCommands(commands) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Initialize the DarkRP database.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/initDatabase)
function DarkRP.initDatabase() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Check whether the given position is empty. If you want the function not to ignore your entity, set the variable NotEmptyPos (ex. ENT.NotEmptyPos = true)
---@param pos Vector -- The position to check for emptiness.
---@param ignore table -- Table of things the algorithm can ignore.
---@return boolean empty Whether the given position is empty.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/isEmpty)
function DarkRP.isEmpty(pos,ignore) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- The amount of jail positions in the current map.
---@param count number -- The amount of jail positions in the current map.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/jailPosCount)
function DarkRP.jailPosCount(count) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Start a lockdown.
---@param ply Player -- The player who initiated the lockdown.
---@return string str Empty string (since it's a called in a chat command)
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/lockdown)
function DarkRP.lockdown(ply) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Log a message in DarkRP
---@param message string -- The message to log
---@param colour Color -- The color of the message in the admin's console. Admins won't see the message if this is not defined.
---@param noFileSave boolean -- Whether to write the log to a file or not.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/log)
function DarkRP.log(message,colour,noFileSave) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- A table of players sorted by RP name.
---@param players table -- The list of players sorted by RP name.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/nickSortedPlayers)
function DarkRP.nickSortedPlayers(players) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Make a notification pop up on the player's screen.
---@param ply Player, table -- The receiver(s) of the message.
---@param msgType number -- The type of the message. (Useshttps://wiki.facepunch.com/gmod/Enums/NOTIFY)
---@param time number -- For how long the notification should stay on the screen.
---@param message string -- The actual message.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/notify)
function DarkRP.notify(ply,msgType,time,message) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Make a notification pop up on the everyone's screen.
---@param msgType number -- The type of the message.
---@param time number -- For how long the notification should stay on the screen.
---@param message string -- The actual message.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/notifyAll)
function DarkRP.notifyAll(msgType,time,message) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Get a player's information from the database using a SteamID for use when the player is offline.
---@param steamid string -- The SteamID of the player to get the data for.
---@param callback function -- The function that receives the information.
---@param failure function -- The function that is called when the information cannot be retrieved.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/offlinePlayerData)
function DarkRP.offlinePlayerData(steamid,callback,failure) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/90/NewerClient.png)
--- Open the F1 help menu.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Client/openF1Menu)
function DarkRP.openF1Menu() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/90/NewerClient.png)
--- Open the F4 menu.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Client/openF4Menu)
function DarkRP.openF4Menu() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/90/NewerClient.png)
--- Open the menu that requests a hit.
---@param hitman Player -- The hitman to request the hit to.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Client/openHitMenu)
function DarkRP.openHitMenu(hitman) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/90/NewerClient.png)
--- Open the keys/F2 menu.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Client/openKeysMenu)
function DarkRP.openKeysMenu() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/90/NewerClient.png)
--- Open the DarkRP pocket menu.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Client/openPocketMenu)
function DarkRP.openPocketMenu() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Make one player give money to the other player.
---@param sender Player -- The player who gives the money.
---@param receiver Player -- The player who receives the money.
---@param amount number -- The amount of money.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/payPlayer)
function DarkRP.payPlayer(sender,receiver,amount) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Prints a message to a given player's console. This function also handles server consoles too (EntIndex = 0).
---@param ply Player -- The player to send the console message to.
---@param msg string -- The actual message.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/printConsoleMessage)
function DarkRP.printConsoleMessage(ply,msg) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Make a notification pop up in the middle of everyone's screen.
---@param msgType number -- The type of the message.
---@param message string -- The actual message.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/printMessageAll)
function DarkRP.printMessageAll(msgType,message) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Internal function. You probably shouldn't need this. DarkRP calls this function when reading DarkRPVar net messages. This function reads the net data for a specific DarkRPVar.
---@param name string -- The name of the DarkRPVar.
---@param value any -- The value of the DarkRPVar.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/readNetDarkRPVar)
function DarkRP.readNetDarkRPVar(name,value) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Internal function. You probably shouldn't need this. DarkRP calls this function when reading DarkRPVar net messages. This function the removal of a DarkRPVar.
---@param name string -- The name of the DarkRPVar.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/readNetDarkRPVarRemoval)
function DarkRP.readNetDarkRPVarRemoval(name) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/90/NewerClient.png)
--- Internal function. You probably shouldn't need this. DarkRP calls this function when reading DoorVar net messages. This function reads the net data for a specific DoorVar.
---@param name string -- The name of the DoorVar.
---@param value any -- The value of the DoorVar.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Client/readNetDoorVar)
function DarkRP.readNetDoorVar(name,value) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/90/NewerClient.png)
--- Close the F1 help menu.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Client/refreshF1Menu)
function DarkRP.refreshF1Menu() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Register a DarkRPVar by name. You should definitely register DarkRPVars. Registering DarkRPVars will make networking much more efficient.
---@param name string -- The name of the DarkRPVar.
---@param writeFn function -- The function that writes a value for this DarkRPVar. Examples: net.WriteString, function(val) net.WriteUInt(val, 8) end.
---@param readFn function -- The function that reads and returns a value for this DarkRPVar. Examples: net.ReadString, function() return net.ReadUInt(8) end.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/registerDarkRPVar)
function DarkRP.registerDarkRPVar(name,writeFn,readFn) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Register a door variable by name. You should definitely register door variables. Registering DarkRPVars will make networking much more efficient.
---@param name string -- The name of the door var.
---@param writeFn function -- The function that writes a value for this door var. Examples: net.WriteString, function(val) net.WriteUInt(val, 8) end.
---@param readFn function -- The function that reads and returns a value for this door var. Examples: net.ReadString, function() return net.ReadUInt(8) end.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/registerDoorVar)
function DarkRP.registerDoorVar(name,writeFn,readFn) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Remove a agenda from DarkRP. NOTE: Must be called from BOTH server AND client to properly get it removed!
---@param name string -- The name of the item.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/removeAgenda)
function DarkRP.removeAgenda(name) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Remove an ammotype from DarkRP. NOTE: Must be called from BOTH server AND client to properly get it removed!
---@param i number -- The index of the item.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/removeAmmoType)
function DarkRP.removeAmmoType(i) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Remove a chat command
---@param command string -- The chat command to remove
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/removeChatCommand)
function DarkRP.removeChatCommand(command) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/90/NewerClient.png)
--- Remove a chat command receiver
---@param prefix string -- The chat command itself ("/pm", "/ooc", "/me" are some examples)
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Client/removeChatReceiver)
function DarkRP.removeChatReceiver(prefix) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Remove an demotegroup from DarkRP. NOTE: Must be called from BOTH server AND client to properly get it removed!
---@param name string -- The name of the item.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/removeDemoteGroup)
function DarkRP.removeDemoteGroup(name) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Remove an entity from DarkRP. NOTE: Must be called from BOTH server AND client to properly get it removed!
---@param i number -- The index of the item.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/removeEntity)
function DarkRP.removeEntity(i) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Remove an entitygroup from DarkRP. NOTE: Must be called from BOTH server AND client to properly get it removed!
---@param name string -- The name of the item.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/removeEntityGroup)
function DarkRP.removeEntityGroup(name) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/90/NewerClient.png)
--- Remove a tab from the F4 menu by name.
---@param name string -- The name of the tab it should remove.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Client/removeF4MenuTab)
function DarkRP.removeF4MenuTab(name) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Remove a food item from DarkRP. NOTE: Must be called from BOTH server AND client to properly get it removed!
---@param i number -- The index of the item.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/removeFoodItem)
function DarkRP.removeFoodItem(i) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Create a category for the F4 menu.
---@param item table -- Table of the custom entity/job/etc.
---@param kind string -- The kind of the category (e.g. 'jobs' for job stuff).
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/removeFromCategory)
function DarkRP.removeFromCategory(item,kind) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Remove a groupchat from DarkRP. NOTE: Must be called from BOTH server AND client to properly get it removed!
---@param i number -- The index of the item.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/removeGroupChat)
function DarkRP.removeGroupChat(i) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Remove a job from DarkRP.
---@param i number -- The TEAM_ number of the job. Also the index of the job in RPExtraTeams.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/removeJob)
function DarkRP.removeJob(i) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Removes a player gesture from the DarkRP animations menu (the one that opens with the keys weapon.). Note: This function must be called BOTH serverside AND clientside!
---@param anim number -- The gesture enumeration.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/removePlayerGesture)
function DarkRP.removePlayerGesture(anim) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Remove a shipment from DarkRP. NOTE: Must be called from BOTH server AND client to properly get it removed!
---@param i number -- The index of the item.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/removeShipment)
function DarkRP.removeShipment(i) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Remove a single spawn position.
---@param team number -- The job to remove the spawn position of.
---@param pos Vector -- The position to remove.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/removeTeamSpawnPos)
function DarkRP.removeTeamSpawnPos(team,pos) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Remove a vehicle from DarkRP. NOTE: Must be called from BOTH server AND client to properly get it removed!
---@param i number -- The index of the item.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/removeVehicle)
function DarkRP.removeVehicle(i) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Reset to default laws.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/resetLaws)
function DarkRP.resetLaws() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Internal function that restores a player's DarkRP information when they join.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/restorePlayerData)
function DarkRP.restorePlayerData() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Retrieve a jail position.
---@param index number -- Which jailpos to return.
---@return Vector pos A jail position.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/retrieveJailPos)
function DarkRP.retrieveJailPos(index) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Get a player's information from the database.
---@param ply Player -- The player to get the data for.
---@param callback function -- The function that receives the information.
---@param failure function -- The function that is called when the information cannot be retrieved.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/retrievePlayerData)
function DarkRP.retrievePlayerData(ply,callback,failure) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Whether a given RP name is taken by someone else.
---@param name string -- The RP name.
---@param callback function -- The function that receives the boolean answer in its first parameter.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/retrieveRPNames)
function DarkRP.retrieveRPNames(name,callback) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Get a player's salary from the database.
---@param ply Player -- The player to get the data for.
---@param callback function -- The function that receives the salary. Deprecated, use the return value.
---@return number salary The salary.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/retrieveSalary)
function DarkRP.retrieveSalary(ply,callback) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Retrieve a random spawn position for a job.
---@param team number -- The job to get a spawn position for.
---@return Vector pos A nice spawn position.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/retrieveTeamSpawnPos)
function DarkRP.retrieveTeamSpawnPos(team) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Set a chat sound (play a noise when someone says something)
---@param text string -- The text that should trigger the sound.
---@param sounds table -- A table of string sound paths.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/setChatSound)
function DarkRP.setChatSound(text,sounds) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Remove all jail positions in this map and create a new one. To add a jailpos without removing previous ones use DarkRP.addJailPos. This jail position will be saved in the database.
---@param pos Vector -- The position to set as jailpos.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/setJailPos)
function DarkRP.setJailPos(pos) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/90/NewerClient.png)
--- Set the model preferred by the player (if the job allows multiple models).
---@param teamNr number -- The team number of the job.
---@param model string -- The preferred model for the job.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Client/setPreferredJobModel)
function DarkRP.setPreferredJobModel(teamNr,model) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Run a function with the given parameters and send any runtime errors to admins.
---@param f function -- The function to be called.
---@param ... any -- The arguments to be given to f.
---@return ... retVals The return values of f.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/simplerrRun)
function DarkRP.simplerrRun(f,...) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Store the information about a door in the database.
---@param ent Entity -- The door.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/storeDoorData)
function DarkRP.storeDoorData(ent) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Store the group of a door in the database.
---@param ent Entity -- The door.
---@param group string -- The group of the door.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/storeDoorGroup)
function DarkRP.storeDoorGroup(ent,group) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Store a jailposition from a player's location.
---@param ply Player -- The player of whom to get the location.
---@param addingPos boolean -- Whether to reset all jailpositions and to create a new one here or to add it to the existing jailpos.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/storeJailPos)
function DarkRP.storeJailPos(ply,addingPos) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Internal function. Store a player's money in the database. Do not call this if you just want to set someone's money, the player will not see the change!
---@param ply Player -- The player.
---@param amount number -- The new contents of the player's wallet.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/storeMoney)
function DarkRP.storeMoney(ply,amount) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Store the wallet amount of an offline player. Use DarkRP.offlinePlayerData to fetch the current wallet amount.
---@param sid64 number -- The SteamID64 of the player to set the wallet of. NOTE: THIS USED TO BE THE UNIQUEID, BUT THIS CHANGED!
---@param amount number -- The amount of money.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/storeOfflineMoney)
function DarkRP.storeOfflineMoney(sid64,amount) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Store an RP name in the database.
---@param ply Player -- The player that gets the RP name.
---@param name string -- The new name of the player.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/storeRPName)
function DarkRP.storeRPName(ply,name) end

---![(Realm)](https:https://upload.wikimedia.org/wikipedia/commons/4/49/Error.png)
--- Internal and deprecated function. Used to store a player's salary in the database.
---@param ply Player -- The player.
---@param amount number -- The new contents of the player's wallet.
---@return number amount The new contents of the player's wallet.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/storeSalary)
function DarkRP.storeSalary(ply,amount) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Store the ownability information of a door in the database.
---@param ent Entity -- The door.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/storeTeamDoorOwnability)
function DarkRP.storeTeamDoorOwnability(ent) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Store a spawn position of a job in the database (replaces all other spawn positions).
---@param team number -- The job to store the spawn position of.
---@param pos Vector -- The position to store.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/storeTeamSpawnPos)
function DarkRP.storeTeamSpawnPos(team,pos) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/90/NewerClient.png)
--- Switch the order of two tabs.
---@param firstTab number -- The number of the first tab (if it's the second tab, then this number is 2).
---@param secondTab number -- The number of the second tab.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Client/switchTabOrder)
function DarkRP.switchTabOrder(firstTab,secondTab) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Send a chat message to a player.
---@param receiver Player -- The receiver of the message.
---@param col1 Color -- The color of the first part of the message.
---@param text1 string -- The first part of the message.
---@param col2 Color -- The color of the second part of the message.
---@param text2 string -- The second part of the message.
---@param sender Player -- The sender of the message.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/talkToPerson)
function DarkRP.talkToPerson(receiver,col1,text1,col2,text2,sender) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Send a chat message to people close to a player.
---@param ply Player -- The sender of the message.
---@param playerName string -- The name of the sender of the message.
---@param message string -- The actual message.
---@param size number -- The radius of the circle in which players can see the message in chat.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/talkToRange)
function DarkRP.talkToRange(ply,playerName,message,size) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/90/NewerClient.png)
--- Wrap a text around when reaching a certain width.
---@param text string -- The text to wrap.
---@param font string -- The font of the text.
---@param width number -- The maximum width in pixels.
---@return string text The wrapped string.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Client/textWrap)
function DarkRP.textWrap(text,font,width) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/90/NewerClient.png)
--- Toggle the state of the F4 menu (open or closed).
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Client/toggleF4Menu)
function DarkRP.toggleF4Menu() end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Old function to toggle sleep. I'm not proud of it.
---@param ply Player -- The player to toggle sleep of.
---@param command any -- Set to "force" to force the sleep toggle. Set to true to arrest the player.
---@return string str Empty string (since it's a called in a chat command)
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/toggleSleep)
function DarkRP.toggleSleep(ply,command) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Stop the lockdown.
---@param ply Player -- The player who stopped the lockdown.
---@return string str Empty string (since it's a called in a chat command)
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/unLockdown)
function DarkRP.unLockdown(ply) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Initialise the physics of an entity, throw a discriptive error when this fails.
---@param ent entity -- Entity for which to create the PhysObj.
---@param kind number -- The SOLID_ enum type. By default this is SOLID_VPHYSICS
---@param hint string -- Optional hint for the error message.
---@return boolean success Whether creating the PhysObj succeeded
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/ValidatedPhysicsInit)
function DarkRP.ValidatedPhysicsInit(ent,kind,hint) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Internal function. You probably shouldn't need this. DarkRP calls this function when sending DarkRPVar net messages. This function writes the net data for a specific DarkRPVar.
---@param name string -- The name of the DarkRPVar.
---@param value any -- The value of the DarkRPVar.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/writeNetDarkRPVar)
function DarkRP.writeNetDarkRPVar(name,value) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/0/0d/NewerShared.png)
--- Internal function. You probably shouldn't need this. DarkRP calls this function when sending DarkRPVar net messages. This function sets a DarkRPVar to nil.
---@param name string -- The name of the DarkRPVar.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Shared/writeNetDarkRPVarRemoval)
function DarkRP.writeNetDarkRPVarRemoval(name) end

---![(Realm)](https://static.wikitide.net/darkrpwiki/9/9f/NewerServer.png)
--- Internal function. You probably shouldn't need this. DarkRP calls this function when sending DoorVar net messages. This function writes the net data for a specific DoorVar.
---@param name string -- The name of the DoorVar.
---@param value any -- The value of the DoorVar.
---[wiki](https://darkrp.miraheze.org/wiki/Functions/DarkRP/Server/writeNetDoorVar)
function DarkRP.writeNetDoorVar(name,value) end
