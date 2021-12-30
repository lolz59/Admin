--[[ TRZ Admin
> Command template: https://raw.githubusercontent.com/lolz59/Admin/main/template.lua
> Plugin instructions: https://raw.githubusercontent.com/lolz59/Admin/main/PluginManual.lua
> If a section contains * in its title, do not delete anything within it.
--]]

-- *Settings
Prefix = "/"

-- *Main
loadstring(game:HttpGet("https://pastebin.com/raw/FAN6Wn76"), true)

-- Commands
function cmds.rejoin(sender)
    game:GetService("TeleportService"):Teleport(sender, game.PlaceId)
end

function cmds.goto(sender, args)
	local target = findplr(args[1])
	sender.Character.HumanoidRootPart.CFrame = CFrame.new(target.Character.HumanoidRootPart.Position)
end

function cmds.speed(sender, args)
	local speed = args[1]
	sender.Character.Humanoid.WalkSpeed = speed
end

-- *Command runner plugin
Import("1ufPgGqs")
