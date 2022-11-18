shell.run('clear')
print("Please enter the dimensions of the area:")

print("Width:")
W = read()
W = tonumber(W)

print("Height:")
H = read()
H = tonumber(H)

print("Depth:")

D = read()
D = tonumber(D)

nFuel = ((W*H*D) + (H*W) + (W))

if turtle.getFuelLevel() < nFuel then
	print("Please insert"..nFuel - turtle.getFuelLevel().."to slot #16 and press enter")
	read()
	turtle.select(16)
	turtle.refuel()
end


for i = 1, W do

	for i = 1, H do
		for i = 1, D do
			turtle.dig(left)
			turtle.forward()
		end
		for i = 1, D do
			turtle.back()
		end
		--print(i)
		if i < H then
			turtle.up()
		end
	end

	for i = 0, H do
		turtle.down()
	end

	if i < W then
		turtle.turnLeft()
		turtle.forward()
		turtle.turnRight()
		end
end

turtle.turnRight()
for i = 2, W do
	print(i)
	turtle.forward()
end
turtle.turnLeft()

print("finished")