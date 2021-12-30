local states = {}

function GetPlayer(String)
	if not String then return end
	local Yes = {}
	for _,Player in ipairs(game.Players:GetPlayers()) do
		if string.lower(Player.Name):match(string.lower(String)) or string.lower(Player.DisplayName):match(string.lower(String)) then
			table.insert(Yes, Player)
		end
	end
	if #Yes > 0 then
		return Yes[1]
	elseif #Yes < 1 then
		return nil
	end
end

function attach(target)
	local target = GetPlayer(target)
	if target then
		states.attach = true
		repeat wait(.3)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
			game.Players.LocalPlayer.Character.Humanoid.Name = 1
			local l = game.Players.LocalPlayer.Character["1"]:Clone()
			l.Parent = game.Players.LocalPlayer.Character
			l.Name = "Humanoid"
			game.Players.LocalPlayer.Character.Animate.Disabled = true
			wait()
			game.Players.LocalPlayer.Character.Animate.Disabled = false
			game.Players.LocalPlayer.Character["1"]:Destroy()
			game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
			game.Players.LocalPlayer.Backpack:FindFirstChild("M9").Parent = game.Players.LocalPlayer.Character
			repeat wait()
				target.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -0.75)
			until not game.Players.LocalPlayer.Character:FindFirstChild("M9")
			game.Players.LocalPlayer.CharacterRemoving:Wait()
			local savedcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			workspace.Remote.loadchar:InvokeServer()
			local savedcamcf = workspace.CurrentCamera.CFrame
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
			workspace.CurrentCamera.CFrame = savedcamcf
		until not states.attach
	end
end

attach(_G.Target)
