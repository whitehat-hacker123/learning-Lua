-- variables
local yip = script.parent:WaitForChild("BillboardGui"):WaitForChild("TextLabel")
-- function
script.Parent:WaitForChild("BillboardGui").Enabled = false
local function ee  (n)--n is the second that it will count down (ms)
	yip.Text = n/100
	script.Parent:WaitForChild("BillboardGui").Enabled = true
	for i = n, 0, -1 do
		yip.Text = i
		wait(0.01)
		print("-0.01 added")
	end
	script.Parent:WaitForChild("BillboardGui").Enabled = false
end
-- main code ? (event)
ee(1000)
