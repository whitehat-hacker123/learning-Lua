local myarray = {20, true, 54, "string", "yippee"} --new table it can be anything

print(myarray[3]) -- will print 54
print(myarray[5]) -- will print yippee
--print(myarray[2]) -- so it will loook for the value at position 2 which is true 


--dictionary

--dictionary is a table with key value pairs / it is kinda like a list but you can call it by name
local fruits = {"value", "value2"}
-- this is just table(above the command),but it is what it looks like when we change it to dictionary👇
local mydictionary = {
	value1 = "value",
	value2 = "90"--value 2
	-- [1] = [1] is the key and "value" is the value
}
--this is what dictionary looks like


--now ill show how to print value with key
--wanna acceces with dots? nice and knit, you can use it like this

print(mydictionary.value2) --will print value2)

--but if you wanna use it with bracket, you gotta do this
print(mydictionary["value2"]) --will print value2


--also you can change the value of the key, like this

mydictionary.value2 = mydictionary.value2 - 50
print(mydictionary.value2) --will print 40)


--how to print all of stuffs inside the table(or dictionary)
--one of them is a for loop with length operator

for index = 1, #myarray do --# is the lenth of the table
	print(myarray[index])  
end
--another one is pairs function
for index, value in myarray do
	print(value)-- what is "in"?
end
--[[but originally, you should use it in this way 
for index, value in pairs(myarray) do
	print(value)-- but we have special function for it in roblox studio, so we dont need to use complicated
	
end]]


-- so lets make function that can make new value on the next key

local function newval (value)
	
end
