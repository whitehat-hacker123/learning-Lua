local botton = script.Parent
local vuli = false

local function ee (n,n2,n3)
	local block = Instance.new("Part")
	block.Parent = game.Workspace
	block.Size = Vector3.new(n,n2,n3)
	block.Position = botton.Position + Vector3.new(0, 5, 10)	
	block.Color = Color3.new(0.04, 0.4, 1)
	block.Material = Enum.Material.Neon -- 기억 ㄱ 
	
	
end

botton.Touched:Connect(function(hit)
	local player = game.Players:GetPlayerFromCharacter(hit.Parent)
	
	if player and vuli == false then
		vuli = true
		
		local leader = player:FindFirstChild("leaderstats")
		if leader then
			print("yes daddy")
			
			local mon = leader:FindFirstChild("money")
			local block = leader:FindFirstChild("blockmade")
			if mon.Value >= 100 then
				ee(1,2,3)
				mon.Value = mon.Value -10
				block.Value = block.Value +1
			else
				print("야 마지막")
			end
			
		else
			print("no daddy")
		end
		task.wait(0.0001)
		vuli = false
	end
	
		

end)

