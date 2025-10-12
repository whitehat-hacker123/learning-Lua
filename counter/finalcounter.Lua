--variables
local y = script.Parent
local yi = false
local yip = y:WaitForChild("BillboardGui")
--first function
local function e (n)
	local block = Instance.new("Part")
	block.Material = Enum.Material.Neon
	block.Parent = game.Workspace
	block.Name = "idk"
	block.Color = Color3.new(n, 0.4, 1)
	block.Position = y.Position + Vector3.new(math.random(4,8),math.random(7,9),0)
end
--second function
local function ee  (n)--n is the second that it will count down (ms)
	yip.TextLabel.Text = n/100
	yip.Enabled = true

	for i = n, 0, -1 do
		yip.TextLabel.Text = i/100
		wait(0.01)
	end
	yip.Enabled = false
end
	-- main code ? (event)

--main code(event)
y.Touched:Connect(function(player)
	local yipe = player.Parent.Name
	local yipp = game.Players:WaitForChild(yipe):FindFirstChild("leaderstats"):FindFirstChild("money")
	local yippe = game.Players:WaitForChild(yipe):FindFirstChild("leaderstats"):FindFirstChild("blockmade")
	print("touch has happened playername :".. yipe)
	
	if yi == false then
		yi = true
		
		if yipp.Value >=100 then
			yipp.Value = yipp.Value - 100
			
			e(0.2)
			yippe.Value = yippe.Value + 1
			ee(100)
			
		else
			print("ah poor")
			
		end
		
		yi = false
	else
		print("Boolean is true")
	end
end)





