-- Commands

--[[ How to use
1.) Make a local command by using the template below:

function cmds.rejoin(sender)
	game:GetService("TeleportService"):Teleport(game.PlaceId, sender)
end

> When the player chats "/rejoin", it will make them rejoin.
> (sender) is returned as the player who called the command

2.) Make a single player command by using the template below:

function cmds.kick(sender, args)
	local target = findplr(args[1])
	local reason = args[2]
	game.Players[target]:Kick(reason)
end

> When the player chats "/kick (target) (reason)", it will kick the target from the game with the reason provided.
> (args) is returned as a table with the target and the reason.

3.) Make a command that runs on everyone, someone, or yourself by using the template below:

function cmds.btools(sender, args)
	local target = args[1]
	local tool = game.ServerStorage.F3X
	if target == "all" then
		for i,v in pairs(game.Players:GetPlayers()) do
			tool:Clone.Parent = v.Backpack
		end
	elseif target == "me" then
		tool:Clone.Parent = v.Backpack
	elseif findplr(target)
		tool:Clone.Parent = findplr(target).Backpack
	end
end

--]]
